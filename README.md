# Poliwallet - NFT wallet on Fluence P2P network
In recent months NFTs have exploded like a gigantic bomb and the numbers skyrocketed insanely. Whatever the concept and the medium used, NFT is growing like a craze and rising.

With the rise in the NFT market, there’s also a demand for NFT wallets too. With all of these nft marketplaces around, Would it be nice to have a wallet that allows you to manage your crypto assets under one roof? Today, I present the Poliwallet - Easy to use All-in-one NFT wallet.

How is the wallet special? We believe the utility aspect of NFTs is the next best thing. We think that **trading** Apes is cool, but **using** your NFTs is even cooler.  So we make your POAPs or NFT Smart Keys a first class citizen in your wallet, creating a new experience to actually use your NFTs.

## Next steps

This is only the beginning for Poliwallet. We want to build more P2P features enabling direct trade without any intermediaries. Pokemon cards, anyone? Another feature set will be focused on using the NFTs. For example, checking-in with your NFT ticket, unlocking a door or cashing out that reward with your POAP.  All directly from your wallet, in elegant and straight forward user experience.

This is the Polliwallet, your easy-to-use and secured all-in-one NFT wallet.

## Mobile App
We chose to implement the wallet as mobile-first solution, implementing application for iOS and Android in Flutter, Fluthereum and  WalletConnect.

## Fluence P2P setup

[Fluence P2P Network](fluence.network) is used to access popular NFT MarketPlaces. This provides a level of abstraction and disentermediation from centralized market place providers. In the future, we plan to add more features and user experiences benefiting from P2P.

APIs exposed via the P2P network

OpenSea [https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=3](https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=3)

Rarible [https://ethereum-api.rarible.org/v0.1/nft/items/all?size=5](https://ethereum-api.rarible.org/v0.1/nft/items/all?size=5)

## P2P node details


```NFT_MARKETPLACE_NODE_PEER_ID ?= "12D3KooWFEwNWcHqi9rtsmDhsYcDbRUCDXH84RC4FW6UfsFWaoHi"```


```NFT_MARKETPLACE_SERVICE_ID ?= "7f792f0b-8e9b-4b6d-90f7-bd6461e84d1d"```




## Functions available on the P2P node
```
data NFTEcho:
  msg: string
  reply: string

service MarketplaceService:
  opensea_fetch(page: i32, page_size: i32) -> NFTEcho
  rarible_fetch(continuation: string, size: i32) -> NFTEcho
  ```
