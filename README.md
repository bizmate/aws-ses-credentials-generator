# Aws SES Credentials Generator
Small script to convert AWS Secret Access into SES Credential

## Dependencies/requirements
- docker
- bash

## How to run

Pass your AWS Secret Access Key

```
./SesSmtpCredentialGenerator.sh AxWd......................
```

The first time the script will run the java docker image will be downloaded and the java class compiled.
Your output will look like

```
Pulling from library/java
....
Status: Downloaded newer image for java:7
Compiling SesSmtpCredentialGenerator class
Your SES Credential is
XXXXXXXXXXXXXXXXXXXXXXXXX
```