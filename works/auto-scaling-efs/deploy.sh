aws cloudformation deploy --stack-name efs-demo --region ap-northeast-1 --template-file .\auto-scaling-efs\network-vpc-subnet.yml --parameter-overrides NetworkStackName=as-efs AvailabilityZones=ap-northeast-1a,ap-northeast-1c

aws cloudformation deploy --stack-name efs-demo-security --region ap-northeast-1 --parameter-overrides NetworkStackName=as-efs --template-file .\auto-scaling-efs\security-efs.yml

aws cloudformation deploy --stack-name efs-demo-efs --region ap-northeast-1 --parameter-overrides NetworkStackName=as-efs --template-file .\auto-scaling-efs\efs.yml