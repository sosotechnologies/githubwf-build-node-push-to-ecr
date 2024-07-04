# deploy-to-eks-using-github-actions
## Save the following Variables

AWS_ACCESS_KEY_ID
AWS_ECR_REPO
AWS_SECRET_ACCESS_KEY
AWS_REGION 
AWS_ACCOUNT_NUMBER

## login, Pull and run container
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <your-account-number>.dkr.ecr.us-east-1.amazonaws.com
docker run -itdp 8088:8088 <your-account-number>.dkr.ecr.us-east-1.amazonaws.com/xcite:latest