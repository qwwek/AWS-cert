## Create a Bucket

aws s3 mb s3://encrypt-client-fun-tc11

## Create a file

echo "Hello World" > hello.txt


> We dont need to create a file

### Run our sdk ruby script

bundle exec ruby encrypt.rb

## Cleanup

aws s3 rm s3://encrypt-client-fun-tc11/hello.txt
aws s3 rb s3://encrypt-client-fun-tc11
