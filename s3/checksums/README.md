### Create a new S3 bucket

```md
aws s3 mb s3://checksums-example-tc1
```
### Create a file we will do a checksum on

```
echo "Hello Tym" > myfile.txt
```
### Get a checksum of a file for md5
```md
md5sum myfile.txt
#e8d1fc7db468c5ad238652ce1e5803ef  myfile.txt
```

### Upload our file to S3
```
aws s3 cp myfile.txt s3://checksums-example-tc1
aws s3api head-object --bucket checksums-example-tc1 --key myfile.txt
```

### Lets upload a file with a different kind of checksum

```sh
bundle exec ruby crc.rb
```

```sh
aws s3api put-object \
--bucket="checksums-example-tc1" \
--key="myfilesha1.txt" \
--body="myfile.txt" \
--checksum-algorithm="SHA1" \
--checksum-sha1="36314ceafb9e8332cacc1e80704e17397bcb3063"
```
