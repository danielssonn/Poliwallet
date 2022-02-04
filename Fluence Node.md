1. Get Docekr
docker run -d --name fluence -e RUST_LOG="info" -p 7777:7777 -p 9999:9999 -p 18080 fluencelabs/fluence
2. On docker startup, grab the 
