#!/bin/bash

for payload in $(jq '.[]' -c test.scenarios.json); do
  curl -X 'POST' -H 'accept: application/json' -H 'Content-Type: application/json' -d $payload 'http://customer-simulation-external-retail-infra.apps.rojo.igk.internal/scenario?recalculate_time=true'
  sleep $(( RANDOM % 5 ))
done
