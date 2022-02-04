use marine_rs_sdk::marine;

use marine_rs_sdk::WasmLoggerBuilder;
use marine_rs_sdk::MountedBinaryResult;

const OPENSEA_URL: &str = "https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=20";
const RARIBLE_URL: &str = "http://api-dev.rarible.org/v0.1/items/all";

pub fn main() {
    WasmLoggerBuilder::new().build().unwrap();
}

#[marine]
pub fn opensea_fetch() -> String {
    log::info!("fetching from OpenSea");

    let result = unsafe { curl(vec![OPENSEA_URL.to_owned()]) };
    String::from_utf8(result.stdout).unwrap()
}

#[marine]
pub fn rarible_fetch() -> String {
    log::info!("fetching from Rarible");

    let result = unsafe { curl(vec![RARIBLE_URL.to_owned()]) };
    String::from_utf8(result.stdout).unwrap()
}

#[marine]
#[link(wasm_import_module = "host")]
extern "C" {
    fn curl(cmd: Vec<String>) -> MountedBinaryResult;
}