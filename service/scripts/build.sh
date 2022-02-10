#!/usr/bin/env bash
# set -o errexit -o nounset -o pipefail

# This script builds all subprojects and puts all created Wasm modules in one dir

mkdir -p artifacts
rm -f artifacts/*.wasm

marine build --release

cp target/wasm32-wasi/release/marketplace-service.wasm ./artifacts/


cd ..

