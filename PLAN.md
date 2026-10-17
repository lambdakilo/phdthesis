# Thesis plan

Planning stage, before a study right. This file records the research plan.
The thesis itself is `thesis.tex` and its chapters.

## Working title

Dual-Use by Design: Benefits, Harms, and Governance in Decentralized Freedom
Technologies

An alternative title under consideration: After Exit: Private Ordering and
Regulatory Reach in Provider-less Digital Infrastructure.

## Problem

Decentralized protocols such as Bitcoin, Nostr and MLS-based encrypted
messengers are built to resist central control. The mechanisms that give them
their benefits, censorship resistance, financial inclusion and privacy, also
produce their harms: scams, spam, illegal content and gaps in enforcement.
States respond by reaching for the people who build and run these systems, as
in the prosecution of the Samourai Wallet developers. This dual-use dynamic is
asserted often and measured rarely.

## Research questions

### RQ1

How are benefits and harms distributed across users and third parties in
decentralized freedom technologies, and by what proxies can they be measured?

### RQ2

How is content and conduct governed in practice in systems designed to resist
governance? What do Nostr relay operators do when harmful content arrives?

### RQ3

How do states reach provider-less infrastructure through its developers, and
how do developers of non-custodial privacy software interpret and respond to
prosecutions such as those of Samourai Wallet and Tornado Cash?

### RQ4

How does generative AI change who can build decentralized and
privacy-preserving software, and what does that cost maintainers?

## Methods: work that needs a person

The thesis leans on methods that depend on people talking to people:
semi-structured interviews, fieldwork in developer and operator communities and
at their events, and member checks in which participants review how they are
represented. Literature scouting, repository mining and network measurement
can be partly automated. Gaining access, building trust, following up in a
conversation and weighing what a participant may safely say cannot.

The same holds for the theses Vili Lehdonvirta has supervised: both doctorates
completed under him at Oxford rest on interviews, ethnography, document
analysis and surveys (Albert 2023; Ramizo 2021).

## Articles

Article-based thesis. The application of September 2026 planned four articles
and an optional fifth:

### Article I: Systematization of dual-use mechanisms

A systematization of how design choices such as open relays, permissionless
payment and metadata-hiding encryption produce paired benefits and harms,
including third-party externalities. Extends the dual-use framing of Tor
research to current systems. RQ1.

### Article II: Relay operators as reluctant moderators

Semi-structured interviews with 15 to 25 Nostr relay operators, and a corpus
of published relay policies and NIP-56 reporting practice, analysed
thematically. The first empirical account of governance in the relay layer.
RQ2.

### Article III: Measuring governance on Nostr

Longitudinal measurement of governance artefacts: report events, relay policy
changes, spam and scam indicators, moderation actions. The unit of analysis is
governance metadata, never the content governed. The collectors are released
as free software and run as a public governance observatory. RQ1 and RQ2.

### Article IV: Generative AI and the one-person freedom-tech project

Mining of Bitcoin and Nostr free software repositories (share of solo
maintainers, contributor survival, before and after 2022, AI-assisted
contributions) combined with developer interviews. RQ4.

### Optional Article V: Provider-less architectures and EU child-protection law

What the proposed CSA Regulation can and cannot reach, and which
prevention-oriented alternatives the evidence supports, with a legal scholar
as co-author.

## Proposed changes, October 2026

### A study of developer prosecutions

The founders of Samourai Wallet, a non-custodial Bitcoin wallet with the
Whirlpool coinjoin and Ricochet services, were charged in April 2024 with
conspiracy to commit money laundering and conspiracy to operate an unlicensed
money transmitting business. In July 2025 both pleaded guilty to the second
count, under the prong for funds known to be criminal proceeds (18 U.S.C.
1960(b)(1)(C)), and the laundering count was dismissed. In November 2025
Keonne Rodriguez was sentenced to five years in prison and William Lonergan
Hill to four.

#### The record as it stands

- The government's figure for criminal proceeds grew from over $100 million
  (April 2024) to over $200 million (August 2025) and over $237 million
  (November 2025), against more than $2 billion in total volume. The
  defendants paid $6.37 million, the fees Samourai earned, in satisfaction of
  an order to forfeit $237.8 million. No government document found gives
  $300 million, the figure some LLM answers state.
- The case rests on the founders' own statements as well as on volume:
  promoting Whirlpool on a darknet forum as a way to "clean dirty BTC",
  inviting the 2020 Twitter hackers to send their proceeds into it, and
  calling mixing "money laundering for bitcoin". By pleading guilty, both
  admitted the conspiracy to transmit funds known to be criminal proceeds.

#### What makes the case contested

- FinCEN's 2019 guidance says an anonymizing software provider is not a money
  transmitter, while an anonymizing services provider is. The test is total
  independent control over the value.
- In August 2023 two FinCEN employees told prosecutors that a mixer that does
  not take custody "would strongly suggest" Samourai was not acting as a money
  services business. The defence learned of the call in April 2025.
- In April 2025 the Deputy Attorney General directed that the Department of
  Justice will no longer target mixing services and offline wallets "for the
  acts of their end users", but placed the (b)(1)(C) prong outside that
  policy. In August 2025 the Criminal Division said new (b)(1)(C) charges
  against truly decentralized, non-custodial software would not be approved.
  The Samourai case went ahead.
- The government's sentencing memorandum called general deterrence
  "paramount", and the judge said at Hill's sentencing that "people should be
  deterred". Coin Center and the Bitcoin Policy Institute have argued that the
  prosecution misapplied the law.

#### Research question

Was the Samourai prosecution consistent with FinCEN's guidance, the
Department of Justice's own 2025 policy and comparable cases, such as those
of Roman Storm and Alexey Pertsev of Tornado Cash? How do developers of
non-custodial privacy software read and respond to these prosecutions?

#### Design

- A case study of the public record: indictments, letters, the sentencing
  memorandum, hearing transcripts, agency guidance and policy.
- Semi-structured interviews with developers of wallets, coinjoin
  coordinators and other Bitcoin and Nostr privacy tools, and with lawyers and
  policy advocates who followed the cases: what they changed, stopped, moved
  or kept building afterwards. Interviewing Rodriguez and Hill would need
  prison access and separate ethical review; the study does not depend on it.
- A short audit of how LLMs describe the case: repeated prompts to several
  models, each claim compared with the court record. Here AI is the object of
  study, not a tool for it.

The study leaves the answer open. If the record shows the case was pursued
to set an example, a peer-reviewed account of that record is what later LLM
answers can draw on. If it does not, that is a finding too.

It connects to Lehdonvirta's Cloud Empires (2022), whose chapter 8,
"Cryptocracy", examines the attempt to replace politics with technology. In
interviews he has argued that Bitcoin relocated trusted authority to
developers, miners and exchanges and did not remove it. The prosecutions show
state authority reaching back into these systems through their developers.

### More weight on interviews

Fold Article III's measurement into Article II as its quantitative half, and
take the freed article slot for the prosecution study. Three of the four
articles would then rest on interviews (II, the prosecution study and IV),
with Article I as the conceptual frame. The governance observatory stays as
infrastructure that supports Article II and outlives the thesis.

## Ethics and data

- Every interview study goes through the university's ethical review:
  informed consent, the right to withdraw, pseudonymity by default.
- Developers of privacy software may carry legal risk. Interviews ask about
  their views, practice and decisions, never about unlawful acts of their own,
  and identifying keys are stored apart from transcripts.
- No collection, storage or automated detection of potentially illegal
  content in any study. Prevalence questions are answered only through
  operator interviews and published third-party findings.
- Aggregated, de-identified data from the measurement and repository work is
  published for reuse; transcripts are not shared beyond consented quotations.

## Timetable

Part-time, six years, interviews front-loaded:

- 2027: ethics review; relay-operator interviews and policy corpus; Article I
  draft.
- 2028: Article II and Article I submitted; prosecution study interviews.
- 2029: prosecution study submitted; optional legal article.
- 2030: Article IV repository mining and developer interviews.
- 2031: Article IV submitted; overview written.
- 2032: pre-examination and public defence.

## Sources

### Supervision and fit

- Albert, J. (2023). Categorizing labour: how platforms and workers
  co-construct digital markets. DPhil thesis, University of Oxford:
  https://ora.ox.ac.uk/objects/uuid:09c05a29-30c4-4158-90b2-10a13ec6c144
- Ramizo, G. (2021). Ubering while poor: the socio-political implications of
  digital platforms in underdeveloped contexts. DPhil thesis, University of
  Oxford: https://ora.ox.ac.uk/objects/uuid:22af3f3d-6c4e-4297-968d-10f0ccbc4247
- Lehdonvirta, V. (2022). Cloud Empires. MIT Press:
  https://mitpress.mit.edu/9780262047227/cloud-empires/
- Lehdonvirta, V. (2022). Interview on Bitcoin and governance, Rational
  Reminder podcast: https://rationalreminder.ca/podcast/crypto15

### Samourai Wallet case

- Department of Justice, SDNY, charges, 24 April 2024:
  https://www.justice.gov/usao-sdny/pr/founders-and-ceo-cryptocurrency-mixing-service-arrested-and-charged-money-laundering
- Department of Justice, SDNY, guilty pleas, 6 August 2025:
  https://www.justice.gov/usao-sdny/pr/founders-samourai-wallet-cryptocurrency-mixing-service-plead-guilty
- Department of Justice, SDNY, sentences, 19 November 2025:
  https://www.justice.gov/usao-sdny/pr/founders-samourai-wallet-cryptocurrency-mixing-service-sentenced-five-and-four-years
- Docket, United States v. Rodriguez, 1:24-cr-82 (SDNY):
  https://www.courtlistener.com/docket/68467223/united-states-v-rodriguez/
- Government letter on the FinCEN call, 9 May 2025:
  https://storage.courtlistener.com/recap/gov.uscourts.nysd.615996/gov.uscourts.nysd.615996.88.0.pdf
- Government sentencing memorandum, 31 October 2025:
  https://storage.courtlistener.com/recap/gov.uscourts.nysd.615996/gov.uscourts.nysd.615996.157.0.pdf
- FinCEN, FIN-2019-G001, 9 May 2019:
  https://www.fincen.gov/sites/default/files/2019-05/FinCEN%20Guidance%20CVC%20FINAL%20508.pdf
- Deputy Attorney General, Ending Regulation By Prosecution, 7 April 2025:
  https://www.justice.gov/dag/media/1395781/dl?inline
- Acting Assistant Attorney General Galeotti, remarks, 21 August 2025:
  https://www.justice.gov/opa/speech/acting-assistant-attorney-general-matthew-r-galeotti-delivers-remarks-american
- Decrypt, Hill's sentencing, 20 November 2025:
  https://decrypt.co/349305/samourai-wallet-cto-william-hill-sentenced-four-years-prison
- Coin Center, To end regulation by prosecution, drop these three cases,
  15 April 2025:
  https://www.coincenter.org/to-end-regulation-by-prosecution-drop-these-three-cases/
- Cointelegraph, Bitcoin Policy Institute on a pardon, 4 December 2025:
  https://cointelegraph.com/news/bitcoin-policy-institute-samourai-pardon

### Comparable cases

- Department of Justice, SDNY, Roman Storm verdict, August 2025:
  https://www.justice.gov/usao-sdny/pr/founder-tornado-cash-crypto-mixing-service-convicted-knowingly-transmitting-criminal
- Rechtbank Oost-Brabant, Alexey Pertsev, 14 May 2024,
  ECLI:NL:RBOBR:2024:2069:
  https://uitspraken.rechtspraak.nl/details?id=ECLI:NL:RBOBR:2024:2069

### Literature from the application

- Jardine, Lindner & Owenson (2020). The potential harms of the Tor anonymity
  network cluster disproportionately in free countries. PNAS 117(50):
  https://doi.org/10.1073/pnas.2011893117
- Soska & Christin (2015). Measuring the longitudinal evolution of the online
  anonymous marketplace ecosystem. USENIX Security:
  https://www.usenix.org/conference/usenixsecurity15/technical-sessions/presentation/soska
- Wei & Tyson (2025). An Empirical Analysis of the Nostr Social Network.
  Proc. ACM on Networking: https://doi.org/10.1145/3768994
- Song, Agarwal & Wen (2026). The Impact of Generative AI on Collaborative
  Open-Source Software Development: https://arxiv.org/abs/2410.02091
- Afroz et al. (2026). "AI Slop is DDoSing Open Source":
  https://arxiv.org/abs/2607.04003
- Thiel & DiResta (2023). Child Safety on Federated Social Media:
  https://doi.org/10.25740/vb515nd6874
- Nurmi et al. (2024). Investigating child sexual abuse material
  availability, searches, and users on the anonymous Tor network. Scientific
  Reports 14: https://doi.org/10.1038/s41598-024-58346-7
- Zhang et al. (2024). Trouble in Paradise? Understanding Mastodon Admin's
  Motivations, Experiences, and Challenges. PACM HCI 8, CSCW2:
  https://doi.org/10.1145/3687059
- Anaobi et al. (2023). Will Admins Cope? Decentralized Moderation in the
  Fediverse. WWW '23: https://doi.org/10.1145/3543507.3583487
- NIP-56, reporting: https://github.com/nostr-protocol/nips/blob/master/56.md
