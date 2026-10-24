// Renders a PDF for a look at the layout: p001.png onwards, one page each at
// 144 dpi, and sheet1.png onwards, 32 numbered pages to a sheet.
// Usage: swift tools/pages.swift build/thesis.pdf build/pages
import AppKit
import PDFKit

let args = CommandLine.arguments
guard args.count == 3, let doc = PDFDocument(url: URL(fileURLWithPath: args[1])) else {
    FileHandle.standardError.write(Data("usage: swift tools/pages.swift <pdf> <dir>\n".utf8))
    exit(2)
}
let dir = URL(fileURLWithPath: args[2], isDirectory: true)
try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)

func writePNG(_ name: String, width: Int, height: Int, draw: (CGContext) -> Void) throws {
    let ctx = CGContext(data: nil, width: width, height: height, bitsPerComponent: 8,
                        bytesPerRow: 0, space: CGColorSpaceCreateDeviceRGB(),
                        bitmapInfo: CGImageAlphaInfo.noneSkipLast.rawValue)!
    NSGraphicsContext.current = NSGraphicsContext(cgContext: ctx, flipped: false)
    draw(ctx)
    let png = NSBitmapImageRep(cgImage: ctx.makeImage()!).representation(using: .png, properties: [:])!
    try png.write(to: dir.appendingPathComponent(name))
}

func drawPage(_ index: Int, in ctx: CGContext, into slot: CGRect) {
    let page = doc.page(at: index)!
    let box = page.bounds(for: .mediaBox)
    let scale = min(slot.width / box.width, slot.height / box.height)
    ctx.saveGState()
    ctx.setFillColor(CGColor(gray: 1, alpha: 1))
    ctx.fill(CGRect(x: slot.minX, y: slot.minY, width: box.width * scale, height: box.height * scale))
    ctx.translateBy(x: slot.minX, y: slot.minY)
    ctx.scaleBy(x: scale, y: scale)
    page.draw(with: .mediaBox, to: ctx)
    ctx.restoreGState()
}

for i in 0..<doc.pageCount {
    let box = doc.page(at: i)!.bounds(for: .mediaBox)
    let w = Int(box.width * 2), h = Int(box.height * 2)
    try writePNG(String(format: "p%03d.png", i + 1), width: w, height: h) { ctx in
        drawPage(i, in: ctx, into: CGRect(x: 0, y: 0, width: w, height: h))
    }
}

let cols = 8, perSheet = 32, gap = 12, thumbW = 357, thumbH = 505
for first in stride(from: 0, to: doc.pageCount, by: perSheet) {
    let count = min(perSheet, doc.pageCount - first)
    let width = gap + cols * (thumbW + gap)
    let height = gap + (count + cols - 1) / cols * (thumbH + gap)
    try writePNG("sheet\(first / perSheet + 1).png", width: width, height: height) { ctx in
        ctx.setFillColor(CGColor(gray: 0.3, alpha: 1))
        ctx.fill(CGRect(x: 0, y: 0, width: width, height: height))
        for k in 0..<count {
            let x = gap + k % cols * (thumbW + gap)
            let y = height - (k / cols + 1) * (thumbH + gap)
            drawPage(first + k, in: ctx, into: CGRect(x: x, y: y, width: thumbW, height: thumbH))
            NSString(string: "\(first + k + 1)").draw(
                at: NSPoint(x: x + 6, y: y + 6),
                withAttributes: [.foregroundColor: NSColor.red, .font: NSFont.boldSystemFont(ofSize: 28)])
        }
    }
}
print("\(doc.pageCount) pages to \(dir.path)")
