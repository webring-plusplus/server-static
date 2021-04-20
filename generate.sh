#!/usr/bin/env bash

set -euxo pipefail

which jq || (echo 'Missing jq' && exit 1)

mkdir -p build
jq -n --arg v "$(cat links.list)" '{"version": 1, "links": $v | split("\n")}' > build/webring++.json
