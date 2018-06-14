#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "No argument supplied, pass the value of the AWS Secret Key please"
    exit 1
fi

if [ ! -f SesSmtpCredentialGenerator.class ]; then
    echo "Compiling SesSmtpCredentialGenerator class"
    docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp java:7 javac SesSmtpCredentialGenerator.java
fi

echo "Your SES Credentials are"
export AWS_SECRET_ACCESS_KEY="$1" && \
    docker run --rm -e AWS_SECRET_ACCESS_KEY -v "$PWD":/usr/src/myapp -w /usr/src/myapp java:7 java -cp . SesSmtpCredentialGenerator
