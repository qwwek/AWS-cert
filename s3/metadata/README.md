## Create a bucket

```sh
aws s3 mb s3://metadata-example-tc-1111
```

### Create a new file
```
echo "Hello Tym" > hello.txt
```

## Upload file with metadata
```sh
aws s3api put-object --bucket metadata-example-tc-1111 --key hello.txt --body hello.txt --metadata Planet=Mars
```

## get metadata through head-object

```
aws s3api head-object --bucket metadata-example-tc-1111 --key hello.txt
```