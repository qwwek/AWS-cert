### create a bucket

```sh
aws s3api create-bucket \
  --bucket acl-example-tc11 \
  --region eu-north-1 \
  --create-bucket-configuration LocationConstraint=eu-north-1
```

### Turn off Block Public access for ACLs

```sh
aws s3api put-public-access-block \
--bucket acl-example-tc11 \
--public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```

```sh
aws s3api get-public-access-block --bucket acl-example-tc11
```

### change Bucket ownership

```sh
aws s3api put-bucket-ownership-controls \
    --bucket acl-example-tc11 \
    --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

### Change ACLs to allow for user in another AWS account

```sh
aws s3api put-bucket-acl \
--bucket acl-example-tc11 \
--access-control-policy file://policy.json
```

## Access Bucket from anotehr account
```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://acl-example-tc11 
aws s3 ls s3://acl-example-tc11 
```

### Cleanup

```sh
aws s3 rm s3://acl-example-tc11/bootcamp.txt
aws s3 rb s3://acl-example-tc11 
```
