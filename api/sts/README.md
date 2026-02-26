## Create a user with no permissions

We need to create a new user with no permissions and generate out access keys

```sh
aws iam create-user --user-name sts-machine-user
aws iam create-access-key --user-name sts-machine-user --output table
```
Copy the access key and secret here
```sh
aws configure
```

Test who you are
```sh
aws sts get-caller-identity
```

Make sure you dont have access to S3
```sh
aws s3 ls
```


## Create a Role

We need to create a role thta will access a new resource

```sh
chmod u+x bin/deploy
./bin/deploy
```

## Use **new user credentials** and assume role

```sh
aws iam put-user-policy \
--user-name sts-machine-user \
--policy-name StsAssumePolicy \
--policy-document file://policy.json
```


```sh
aws sts assume-role \
--role-arn arn:aws:iam::923117599414:role/my-sts-fun-stack-StsRole-rGm3U4RcR9zJ \
--role-session-name s3-sts-fun
```

Test 
```sh
aws sts get-caller-identity
```

```sh
aws s3 ls
```

## Cleanup
tear down your cloudformation stack via the AWS Managment Console

```sh
aws iam delete-user-policy --user-name sts-machine-user --policy-name StsAssumePolicy
aws iam delete-access-key --access-key-id AKIA5N3QYXK3FWACJ6XB --user-name sts-machine-user
aws iam delete-user --user-name sts-machine-user
aws s3 rb sts-fun-tc11
```

