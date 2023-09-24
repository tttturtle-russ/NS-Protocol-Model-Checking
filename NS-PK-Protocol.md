```mermaids
sequenceDiagram
participant Alice
participant Server
participant Bob
Alice ->> Server : request {B's info,B's PK} with A's info
Server ->> Alice : send encrypted B's info and B's PK
```
