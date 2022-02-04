- [] Get Docekr
docker run -d --name fluence -e RUST_LOG="info" -p 7777:7777 -p 9999:9999 -p 18080 fluencelabs/fluence
- [] On docker startup, grab the Service ID and save it
![Service ID](https://github.com/danielssonn/SchellingPoint2022/blob/d99b748760f446e558754393b72e7d307456e510/assets/Local%20Fluence%20Peer%20ID.png)

- [] Install fldist: 
  yarn global add @fluencelabs/fldist
- []Run:
  fldist  --node-addr /ip4/127.0.0.1/tcp/9999/ws/p2p/{Your Service ID}  new_service --ms artifacts/marketplace-service.wasm:configs/marketplace_service_config.json -n marketplace-service  --verbose

- []Get your local node config:

  client seed: {your seed}
  client peerId: {your peer id} 
  relay peerId: {your relay peer id} 
  service id: {your service id}
  service created successfully
  
- [] Configure your client   

  


