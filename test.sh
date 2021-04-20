#!/usr/bin/env bash

set -euxo pipefail

which httplz || (echo 'Missing httplz' && exit 1)

httplz build/
