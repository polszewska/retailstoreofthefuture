#!/bin/bash

for payload in $(jq '.[]' -c test_drafts.json); do
  curl -X 'POST' -H 'accept: application/json' -H 'Content-Type: application/json' -d $payload 'http://customer-simulation-external-retail-infra.apps.rojo.igk.internal/scenario_draft'
  sleep $(( RANDOM % 5 ))
done
