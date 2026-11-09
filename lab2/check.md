# Design Verification – Baseline and Faulty Snapshot

| Req | Bat-Q question | What would show the requirement is met | Baseline | Fault prediction | Fault result |
|---|---|---|---|---|---|
| R1 | Layer 3 Topology | Each leaf has exactly one edge to r11 and one edge to r12. | Pass | Fail | Fail – r23 lost both spine connections. |
| R2 | Layer 3 Topology | No edge joins r11 and r12, and no edge joins two leaves. | Pass | Pass | Pass – no spine-to-spine or leaf-to-leaf links appeared. |
| R3 | BGP Session Status | Each leaf has a unique ASN, different from the other leaves. | Pass | Pass | Pass – all leaf ASNs remain unique, although r22's ASN changed. |
| R4 | BGP Session Status | Six BGP sessions are established, represented by twelve rows. | Pass | Fail | Fail – only two of six sessions remain established. |
| R5 | Routes | Each remote leaf loopback has two different next hops, one through each spine. | Fail | Fail | Fail – the faulty Routes table contains only four BGP routes; routes to r22 and r23 are missing, and two next hops are not available. |
| R6 | Live recovery test | Network connectivity is restored within three seconds after a failure. | Not verifiable with Batfish | Not verifiable with Batfish | Not verifiable with Batfish – requires a live failover test. |
