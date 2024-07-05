#!/bin/bash

# Read the new version
new_version=$(cat VERSION)

# Update the argowf.yaml file
sed -i "s/version: \"[0-9.]*\"/version: \"$new_version\"/" build-push-to-ECR/argowf.yaml

# Print the updated argowf.yaml for verification
cat build-push-to-ECR/argowf.yaml
