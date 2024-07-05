#!/bin/bash

# Read the new version
new_version=$(cat VERSION)

# Update the argowf.yaml file with the new version
sed -i "s/version: \"[0-9.]*\"/version: \"$new_version\"/" argowf.yaml

# Print the updated argowf.yaml for verification
cat argowf.yaml
