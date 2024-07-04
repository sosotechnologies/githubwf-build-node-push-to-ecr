#!/bin/bash

# Read the current version from the VERSION file
current_version=$(cat VERSION)

# Extract the version components
IFS='.' read -r -a version_parts <<< "$current_version"

# Increment the patch version
version_parts[2]=$((version_parts[2] + 1))

# Create the new version
new_version="${version_parts[0]}.${version_parts[1]}.${version_parts[2]}"

# Update the VERSION file with the new version
echo "$new_version" > VERSION

# Tag the new version without 'v' prefix
git tag "$new_version"

# Push the tags to the remote
git push origin --tags

# Output the new version
echo "NEW_VERSION=$new_version" >> $GITHUB_ENV
