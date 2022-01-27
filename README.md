# SchellingPoint2022
Schelling Point Hackathon 


## Fluence P2P setup

APIs exposed via the P2P network

OpenSea [https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=20](https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=20)

Rarible [http://api-dev.rarible.org/v0.1/items/all](http://api-dev.rarible.org/v0.1/items/all)

## P2P node details


client seed: BTFQNFpFZmUM7kkpBcX25nMey3j6zinBcdNfjswi9TTx

client peerId: 12D3KooWGxkRC917P9UwszKUDiWpmj7vuoqWJ1yzRAFFfGsofxHL

relay peerId: 12D3KooWSD5PToNiLQwKDXsu8JSysCwUt8BVUJEqCHcDe7P5h45e

service id: 3cee2339-e8b3-4b26-b75c-14ee4d32976f



## Functions available on the P2P node

marketplace-service:

  fn rarible_fetch() -> string
  
  fn opensea_fetch() -> string
