/*
 * License: MIT
 */
 use marine_rs_sdk::marine;

 use marine_rs_sdk::MountedBinaryResult;


pub fn main() {}

#[marine]
pub struct NFTEcho {
    pub msg:String,
    pub reply: String,
}


/**
* Fetch all NFTs from OpenSea
* @ToDo: String literal abstaction into constants for url
*/
#[marine]
pub fn opensea_fetch(_page: i32, _page_size: i32) -> NFTEcho {

    log::info!("fetching from OpenSea");
    let fetch_url = format!("https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset={0}&limit={1}", _page, _page_size * _page);
    
    let curl_says = curl(vec![fetch_url]) ;
    let result = String::from_utf8(curl_says.stdout).unwrap();

    NFTEcho{
        msg: "NFTs from OpenSea".to_string(),
        reply: result.to_string()

    }
}

/**
* Fetch all NFTs from Rarible
* @ToDo: String literal abstaction into constants for url
*/
#[marine]
pub fn rarible_fetch(_continuation: String, _size:i32) -> NFTEcho {

    let fetch_url = format!("https://ethereum-api.rarible.org/v0.1/nft/items/all?size={0}&continuation={1}", _size, _continuation);

    let curl_says = curl(vec![fetch_url]) ;
    let result = String::from_utf8(curl_says.stdout).unwrap();

    NFTEcho{
        msg: "NFTs from Rarible".to_string(),
        reply: result.to_string()

    }
    
}

/**
* Link and mount local node library - curl
*/
#[marine]
#[link(wasm_import_module = "host")]
extern "C" {
    fn curl(cmd: Vec<String>) -> MountedBinaryResult;
}
