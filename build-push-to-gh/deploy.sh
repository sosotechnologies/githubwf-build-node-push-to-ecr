# #!/bin/bash

# # Read the version from the VERSION file
# version=$(cat VERSION)

# # Define the pipeline name based on the version
# pipeline_name="world-pipeline-$version"
# entry_point="world-create"
# argo_project="argo-infra"

# # Execute the deployment (assuming Argo CD CLI is used)
# argocd app set go-app --revision $version
# argocd app sync go-app

# echo "Deployment triggered for version $version"
