# Requirements Traceability Matrix – Lab 2

| Req | Design decision in dc-fabric.yml | Evidence | Baseline | Faulty snapshot | Method |
|---|---|---|---|---|---|
| R1 | fabric.spines and fabric.leafs, which link every leaf to every spine. | Layer 3 Topology (check.md – R1) | Pass | Fail | Analysis |
| R2 | fabric.spines and fabric.leafs, which create a two-tier spine-leaf topology without spine-to-spine or leaf-to-leaf links. | Layer 3 Topology (check.md – R2) | Pass | Pass | Analysis |
| R3 | nodes section, which assigns ASNs to each router. | BGP Session Status (check.md – R3) | Pass | Pass | Inspection and Analysis |
| R4 | module: [bgp], bgp.sessions and bgp.as, which configure BGP sessions between leaf and spine routers. | BGP Session Status (check.md – R4) | Pass | Fail | Analysis |
| R5 | module: [bgp] and BGP configuration, which provide routing between leaf loopbacks through the spines. | Routes (check.md – R5) | Fail | Fail | Analysis |
| R6 | fabric.spines and fabric.leafs, which provide redundant paths through two spine routers. | Live recovery test (check.md – R6) | Not verified | Not verified | Test – perform a live link or device failure test, monitor traffic and record timestamps to verify recovery within three seconds. |
