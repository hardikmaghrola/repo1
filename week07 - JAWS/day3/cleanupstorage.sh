#!/bin/bash

echo -n "Bucket name: "
read bucket
#bucket=$1

aws s3 rm s3://$bucket --recursive  #deletes the contents of the bucket (empty)

aws s3 rb s3://$bucket #deletes the bucket itself

#use also: aws s3 rb s3://bucket --force 

aws s3 ls
