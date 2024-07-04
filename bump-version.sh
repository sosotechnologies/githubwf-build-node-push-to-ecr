#!/bin/bash

# Read the current version
version=$(cat VERSION)

# Split the version into its components
major=$(echo $version | cut -d. -f1)
minor=$(echo $version | cut -d. -f2)
patch=$(echo $version | cut -d. -f3)

# Increment the patch version
new_patch=$((patch + 1))
new_version="$major.$minor.$new_patch"

# Write the new version back to the VERSION file
echo $new_version > VERSION

# Output the new version
echo "New version: $new_version"
