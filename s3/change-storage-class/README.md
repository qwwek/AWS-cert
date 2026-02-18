## create a torage class

aws s3 mb s3://storage-class-ty-1111

## Create a file

echo "Hello World" >> hello.txt
aws s3 cp hello.txt s3://storage-class-ty-1111 --storage-class STANDARD_IA

## CLeanup

aws s3 rm s3://storage-class-ty-1111/hello.txt
aws s3 rb s3://storage-class-ty-1111