#!/bin/bash

service=$1
attribute=$2

attribute_value=$(curl -s http://172.17.42.1:8500/v1/catalog/service/$service | python -m json.tool | grep \"$attribute\" | cut -f 2 -d ':' | cut -f 1 -d ',' | cut -f 2 -d '"')
echo $attribute_value
