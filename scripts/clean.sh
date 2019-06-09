#!/bin/bash

set -euo pipefail
set -o xtrace

repoName=`yq r repo.yml name`

rm scripts/docker-run-timestamp.txt || true
docker rm $repoName -f || true