### Create a bucket

```sh
aws s3 mb s3://bucket-policy-example-tc11
```

## Create bucket policy 
```sh
aws s3api put-bucket-policy --bucket bucket-policy-example-tc11 --policy file://policy.json
```

### Access bucket in another acc

```sh
touch text.txt
aws s3 cp text.txt s3://bucket-policy-example-tc11
aws s3 ls s3://bucket-policy-example-tc11
```

## Cleanup

```sh
aws s3 rm s3://bucket-policy-example-tc11/text.txt
aws s3 rb s3://bucket-policy-example-tc11
```
