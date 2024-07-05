#!/bin/bash

# Read the new version
new_version=$(cat VERSION)

# Update the argowf.yaml file
sed -i "s/version: \"[0-9.]*\"/version: \"$new_version\"/" argowf.yaml
