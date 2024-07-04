# #!/bin/bash

# # Fetch tags from the remote
# git fetch --tags

# # Get the latest tag; if no tags are found, default to v0.0.0
# latest_tag=$(git describe --tags `git rev-list --tags --max-count=1` 2>/dev/null || echo "v0.0.0")

# # Remove 'v' prefix if it exists
# latest_version=${latest_tag#v}

# # Extract the version components
# IFS='.' read -r -a version_parts <<< "$latest_version"

# # Increment the patch version
# version_parts[2]=$((version_parts[2] + 1))

# # Create the new version
# new_version="${version_parts[0]}.${version_parts[1]}.${version_parts[2]}"

# # Tag the new version
# git tag "v$new_version"

# # Push the tags to the remote
# git push origin --tags

# # Output the new version
# echo "NEW_VERSION=v$new_version" >> $GITHUB_ENV

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
