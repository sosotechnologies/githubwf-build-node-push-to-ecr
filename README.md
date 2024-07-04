# deploy-to-eks-using-github-actions
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 368085106192.dkr.ecr.us-east-1.amazonaws.com
docker run -itdp 8088:8088 368085106192.dkr.ecr.us-east-1.amazonaws.com/xcite:latest