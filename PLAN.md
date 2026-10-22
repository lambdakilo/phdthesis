# Thesis plan

Planning stage, before a study right. The university and the supervisors are
not settled. This file records the research plan and the programmes under
consideration. The thesis itself is `thesis.tex` and its chapters.

## Working title

Dual-Use by Design: Benefits, Harms, and Governance in Decentralized Freedom
Technologies

## Aim

Do freedom technologies such as Bitcoin and Nostr do more good than harm, for
whom, and what happens when states respond? The thesis treats these as open
questions. A finding either way is a result.

## Problem

Decentralized protocols such as Bitcoin, Nostr and MLS-based encrypted
messengers are built to resist central control. The mechanisms that give them
their benefits, censorship resistance, financial inclusion and privacy, also
produce their harms: scams, spam, illegal content and gaps in enforcement.
States respond by reaching for the people who build and run these systems, as
in the prosecution of the Samourai Wallet developers. This dual-use dynamic is
asserted often and measured rarely.

## Doctoral programme and supervision

The thesis is planned as a part-time doctorate alongside work in software
development, funded from salary, with working time reduced once the doctoral
work starts.

### Programmes

Each programme below asks for a supervisor's written commitment before the
application is evaluated, so the choice of programme follows the supervision.

a. Tampere University, Doctoral Programme of Humans and Technologies,
   Information Studies option. Information Studies there already researches
   the dark web, Tor and blockchain-enabled crime. Applications are rolling
   and reviewed four times a year; the next deadlines are 22 January 2027
   (study right from 2 March 2027) and 30 April 2027 (from 2 August 2027). The
   responsible supervisor must agree in writing to the research plan
   submitted. Part-time study is allowed with a reason given. The faculty sets
   the number of articles; a monograph is accepted.

b. University of Helsinki, Doctoral Programme in Science, computer science.
   Rounds 3 to 16 November 2026, 12 to 25 January 2027 and 2 to 15 April
   2027. A signed supervision agreement from the main supervisor and a
   coordinating academic, a professor or docent of the Faculty of Science, is
   required. Self-funded and part-time plans must show a credible timeline.
   About three articles, most of them published or accepted, or a monograph.

c. LUT University, Doctoral Programme in Engineering Science, software
   engineering. Rolling admission, at least two supervisors committed. At
   least three publications, two of them published or accepted; conference
   papers count; monograph accepted.

### What a Tampere application holds

- A research plan of at most 6 pages plus 2 pages of references, 12 pt, 2.5
  cm margins, with the supervisor's name and the research field; an
  over-length plan is rejected.
- A study and supervision plan, a one-page motivation letter that covers the
  career the degree supports, a CV, degree certificates and transcripts, and
  up to two referees.
- A statement of how AI was used in writing the plan, if it was.

### Design

- Three articles and an overview. The systematization of dual-use
  mechanisms is the overview's framework chapter, where it ties the three
  studies together.
- Article I comes first because it works with public material alone, the
  court record, agency guidance and model outputs, so it proceeds while the
  ethical review for the interview studies is under way.
- Articles II and III share one interview campaign under one ethics
  application and one consent process. Relay operators and developers come
  from the same communities, and one design lets the thesis compare how each
  group meets harm and legal risk.
- The interview studies examine information practices: how operators share
  knowledge of harmful content, and how developers seek and weigh legal
  information under prosecution risk.

## Research questions

### RQ1

How do states reach provider-less infrastructure through its developers, and
how accurately do public accounts, LLM answers among them, describe that
reach? Article I.

### RQ2

How do the people who run Nostr relays weigh the benefits and harms that pass
through them, and what do they do when harmful content arrives? Article II.

### RQ3

How do developers of non-custodial privacy software read and respond to
prosecutions such as those of Samourai Wallet and Tornado Cash? Article III.

## Methods: work that needs a person

The thesis leans on methods that depend on people talking to people:
semi-structured interviews, fieldwork in developer and operator communities and
at their events, and member checks in which participants review how they are
represented. Literature scouting, repository mining and network measurement
can be partly automated. Gaining access, building trust, following up in a
conversation and weighing what a participant may safely say cannot.

## Articles

### Article I: The Samourai Wallet prosecution and its public record

A case study of the public record against FinCEN's guidance, the Department
of Justice's 2025 policy and the Tornado Cash cases, with an audit of how
LLMs describe the case. RQ1.

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

#### Design

- The public record: indictments, letters, the sentencing memorandum, hearing
  transcripts, agency guidance and policy, compared with the Storm and
  Pertsev cases.
- The LLM audit: repeated prompts to several models, each claim compared with
  the court record. Here AI is the object of study, not a tool for it.

The study leaves the answer open. If the record shows the case was pursued
to set an example, a peer-reviewed account of that record is what later LLM
answers can draw on. If it does not, that is a finding too.

It connects to Cloud Empires (Lehdonvirta 2022), whose chapter 8,
"Cryptocracy", examines the attempt to replace politics with technology. The
prosecutions show state authority reaching back into these systems through
their developers.

### Article II: Relay operators as reluctant moderators

Semi-structured interviews with 15 to 25 Nostr relay operators and a corpus of
published relay policies and NIP-56 reporting practice, analysed thematically.
Counts of governance artefacts over time, such as report events and policy
changes, give the interviews a quantitative backdrop; the unit is governance
metadata, never the content governed. RQ2.

### Article III: Building under prosecution risk

Semi-structured interviews with developers of wallets, coinjoin coordinators
and other Bitcoin and Nostr privacy tools, and with lawyers and policy
advocates who followed the Samourai and Tornado Cash cases: what developers
changed, stopped, moved or kept building afterwards. Interviewing Rodriguez
and Hill would need prison access and separate ethical review; the study does
not depend on it. RQ3.

### Further studies

Planned beyond the three articles, for a fourth if the programme asks for
one or to replace a study that cannot be completed:

- Generative AI and the one-person freedom-tech project: mining of Bitcoin
  and Nostr repositories for solo maintainers, contributor survival and
  AI-assisted contributions before and after 2022.
- Provider-less architectures and the EU's proposed CSA Regulation, with a
  legal scholar as co-author.

## Venues

Each venue publishes work on the topic or its methods and has a Publication
Forum (JUFO) level of at least 1. Acceptance rates, the venues' own figures,
inform the timetable.

| Article | First choice | Fallback |
|---|---|---|
| I | HICSS cybercrime minitrack, run until at least 2025 with a focus on the dark web and blockchain (JUFO 1; 46.6% overall, year not stated) | Internet Policy Review (JUFO 1), Ledger (JUFO 1) |
| II | Information Research (JUFO 2) | Proceedings of ASIS&T (JUFO 1), CSCW (JUFO 2; 30.5% in 2026) |
| III | CHASE (JUFO 1; 35% in 2025) or ICSE SEIS (34% in 2023) | HICSS (JUFO 1) |
| Further | MSR (JUFO 1; 29% in 2025) | Financial Cryptography workshops (LNCS, JUFO 1) |

IEEE ICBC and Frontiers in Blockchain are left out: both are at JUFO level 0.

## Ethics and data

- The interview studies go through the university's ethical review: informed
  consent, the right to withdraw, pseudonymity by default. Article I has no
  human participants.
- Developers of privacy software may carry legal risk. Interviews ask about
  their views, practice and decisions, never about unlawful acts of their own,
  and identifying keys are stored apart from transcripts.
- No collection, storage or automated detection of potentially illegal
  content in any study. Prevalence questions are answered only through
  operator interviews and published third-party findings.
- Aggregated, de-identified data from the measurement and repository work is
  published for reuse; transcripts are not shared beyond consented quotations.

## Timetable

Part-time, six years:

- November 2026 to January 2027: supervisor agreed; research plan written to
  the programme's format; application by the January deadline.
- 2027: study right; Article I written and submitted; ethics application for
  the interview campaign.
- 2028: interview campaign with relay operators and developers; Article II
  submitted.
- 2029: Article III submitted; coursework completed.
- 2030: overview drafted; a fourth article only if the programme asks for one.
- 2031: overview finished; pre-examination.
- 2032: public defence.

## Sources

### Admission

- Tampere University, Doctoral Programme of Humans and Technologies,
  admission criteria, 26 October 2026 to 22 January 2027:
  https://opintopolku.fi/konfo/en/hakukohde/1.2.246.562.20.00000000000000093850/valintaperuste
- Tampere University, guidelines for the doctoral dissertation:
  https://opiskelijanopas.tuni.fi/en/tampere-university/doctoral-studies/doctoral-dissertation-and-public-defence/guidelines-doctoral-dissertation
- University of Helsinki, Doctoral Programme in Science, admissions:
  https://www.helsinki.fi/en/admissions-and-education/apply-doctoral-programmes/doctoral-programmes/doctoral-programme-science/admissions-doctoral-studies
- University of Helsinki, Faculty of Science, PhD thesis:
  https://www.helsinki.fi/en/faculty-science/faculty/phd-thesis
- LUT University, application processes for doctoral programmes:
  https://elut.lut.fi/en/doctoral-studies/application-processes-doctoral-programmes
- LUT University, dissertation regulations 2024:
  https://elut.lut.fi/sites/default/files/category-page/2024-05/LUT_Dissertation_regulations_2024_0.pdf

### Venues

- Publication Forum levels, from the JUFO API behind
  https://jfp.csc.fi/jufoportaali
- HICSS: https://hicss.hawaii.edu/tracks-and-minitracks/
- HICSS-58 cybercrime minitrack:
  https://aisel.aisnet.org/hicss-58/in/cybercrime
- CSCW 2026 decisions: https://cscw.acm.org/2026/blog/finaldecisions.html
- CHASE 2025: https://ieeexplore.ieee.org/document/11024478
- ICSE SEIS 2023: https://ieeexplore.ieee.org/document/10173875
- MSR 2025: https://ieeexplore.ieee.org/document/11025537
- Ledger: https://ledger.pitt.edu/ojs/ledger/about
- Internet Policy Review: https://policyreview.info/authors

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

### Literature

- Lehdonvirta, V. (2022). Cloud Empires. MIT Press:
  https://mitpress.mit.edu/9780262047227/cloud-empires/
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
