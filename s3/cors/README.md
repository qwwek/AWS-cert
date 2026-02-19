## Create Website1

## Create a bucket
```sh
aws s3 mb s3://cors-fun-ty-1111
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun-ty-1111 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy
aws s3api put-bucket-policy --bucket cors-fun-ty-1111 --policy file://bucket-policy.json

## Turn on statis website hosting
```sh
aws s3api put-bucket-website --bucket cors-fun-ty-1111 --website-configuration file://website.json
```

## Upload out index.html file and include resource that would be cross-origin
aws s3 cp index.html s3://cors-fun-ty-1111

## View a website and see if the index.html is there
http://cors-fun-ty-1111.s3-website.eu-north-1.amazonaws.com

## Apply a CORS policy



## Create Website2

## Create a bucket
```sh
aws s3 mb s3://cors-fun2-ty-1111
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun2-ty-1111 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy
```sh
aws s3api put-bucket-policy --bucket cors-fun2-ty-1111 --policy file://bucket-policy2.json
```

## Turn on statis website hosting
```sh
aws s3api put-bucket-website --bucket cors-fun2-ty-1111 --website-configuration file://website.json
```

## Upload out java script file 
```sh
aws s3 cp hello.js s3://cors-fun2-ty-1111
```
## Create API Gateway with mock response and then test it

```sh
curl -X POST -H "Content-Type: application/json" https://sax6m64290.execute-api.eu-north-1.amazonaws.com/prod/hello
```

## Set CORS on our bucket
```sh
aws s3api put-bucket-cors --bucket cors-fun-ty-1111 --cors-configuration file://cors.json
```
