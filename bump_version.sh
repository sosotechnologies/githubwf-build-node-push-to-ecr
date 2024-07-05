#!/bin/bash

# Check if VERSION file exists
if [ ! -f VERSION ]; then
  echo "1.0" > VERSION
fi

# Read the current version
current_version=$(cat VERSION)

# Increment the version number
IFS='.' read -r -a version_parts <<< "$current_version"
version_parts[1]=$((version_parts[1] + 1))
new_version="${version_parts[0]}.${version_parts[1]}"

# Write the new version back to the VERSION file
echo $new_version > VERSION
echo $new_version
