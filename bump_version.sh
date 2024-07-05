#!/bin/bash

# Check if VERSION file exists
if [ ! -f VERSION ]; then
  echo "2.2.11" > VERSION
fi

# Read the current version
current_version=$(cat VERSION)

# Increment the patch version number
IFS='.' read -r -a version_parts <<< "$current_version"
version_parts[2]=$((version_parts[2] + 1))
new_version="${version_parts[0]}.${version_parts[1]}.${version_parts[2]}"

# Write the new version back to the VERSION file
echo $new_version > VERSION
echo $new_version
