## Create a bucket
```sh
aws s3 mb s3://encryption-fun-tc11
```

## create a file and put object with encryption SSE-S3
```sh
echo "Hello World!" > hello.txt
aws s3 cp hello.txt s3://encryption-fun-tc11
```

### Put object with encryption KMS

```sh
aws s3api put-object \
--bucket encryption-fun-tc11 \
--key hello.txt \
--body hello.txt \
--server-side-encryption "aws:kms" \
--ssekms-key-id "01ab808e-8218-4387-a65a-9edcf44f9777"
```

## Put object with SSE-C [FAILED ATTEMPT]

```sh
export BASE64_ENCODED_KEY=$(openssl rand -base64 32)

echo $BASE64_ENCODED_KEY

export MD5_VALUE=$(echo $BASE64_ENCODED_KEY | md5sum | awk '{print $1}' | base64 -w0)
echo $MD5_VALUE

aws s3api put-object \
--bucket encryption-fun-tc11 \
--key hello.txt \
--body hello.txt \
--sse-customer-algorithm AES256 \
--sse-customer-key $BASE64_ENCODED_KEY \
#--sse-customer-key- md5 $MD5_VALUE
```


## Put object with SSE-C via aws s3
```sh
openssl rand -out ssec.key 32
```

```sh
aws s3 cp hello.txt s3://encryption-fun-tc11/hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key
```

```sh
aws s3 cp s3://encryption-fun-tc11/hello.txt 
```

```sh
aws s3 cp s3://encryption-fun-tc11/hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key
```

## Cleanup
