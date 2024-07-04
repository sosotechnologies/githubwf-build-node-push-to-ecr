# #!/bin/bash

# # Read the version from the VERSION file
# version=$(cat VERSION)

# # Generate the pipeline query (update this according to your actual deployment process)
# pipeline_name="world-pipeline-$version"
# entry_point="world-create"
# argo_project="argo-infra"
# parameters=""

# # Update query params (adjust this to match your actual deployment requirements)
# queryParams=$(GeneratePipelineQuery "$pipeline_name" "$entry_point" "$argo_project" "$parameters")
# queryParams.Add("version", "latest")

# # Execute the deployment (assuming Argo CD CLI is used)
# argocd app set my-app --revision $version
# argocd app sync my-app

# echo "Deployment triggered for version $version"

#!/bin/bash

# Read the version from the VERSION file
version=$(cat VERSION)

# Define the pipeline name based on the version
pipeline_name="world-pipeline-$version"
entry_point="world-create"
argo_project="argo-infra"

# Execute the deployment (assuming Argo CD CLI is used)
argocd app set my-app --revision $version
argocd app sync my-app

echo "Deployment triggered for version $version"
