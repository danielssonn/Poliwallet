#!/usr/bin/env bash -o errexit -o nounset -o pipefail

fldist --node-id 12D3KooWSD5PToNiLQwKDXsu8JSysCwUt8BVUJEqCHcDe7P5h45e \
        new_service \
        --ms artifacts/marketplace-service.wasm:configs/marketplace_service_config.json \
        --name marketplace-service \
        --verbose \
>> \
deployed_marketplace_service.data 