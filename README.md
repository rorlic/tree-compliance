# TREE Compliance Test Suite
This repository contains an [ITB test suite](https://interoperable-europe.ec.europa.eu/collection/interoperability-test-bed-repository/solution/interoperability-test-bed/documentation) to validate the conformance of a collection of TREE node responses against the [TREE specification](https://treecg.github.io/specification/). You will need a running ITB correctly set up with a domain and a community. The instructions below allow you to retrieve the necessary resources, build the test suite and deploy it to your ITB.

It is related to the [SHACL Validator for LDES & TREE](https://github.com/rorlic/shacl-validator) in that regards that it uses the same [TREE SHACL shapes](https://github.com/rorlic/tree-shacl) as a basis as well.

## Refresh Shapes
The bash shell commands below allow you to retrieve the updated shapes, if needed.
```bash
export TAG=v0.5.4-alpha
export FILE=tree-shapes.zip
export RESOURCES=./src/resources/shapes

mkdir -p $RESOURCES
rm $RESOURCES/*
curl -sL "https://github.com/rorlic/tree-shacl/releases/download/$TAG/$FILE" -o $RESOURCES/$FILE
unzip -q $RESOURCES/$FILE -d $RESOURCES
rm $RESOURCES/$FILE
```

## Build Test Suite
The build script will create a zip archive for deployment onto your running ITB.
```bash
./build.sh
```

## Deploy Test Suite
The bash shell instructions below will deploy the zip archive created above to your ITB.

>[!WARNING]
> change the API keys below to match your own community and specification:

```bash
export COMMUNITY_API_KEY=D333AAB7X4F80X488CXB5CCX13027544CC41
export SPECIFICATION_API_KEY=D1E98854X785AX4F41X912AX57556F81B8CF
clear && ./deploy.sh && echo
```

## Cleanup
To delete the zip archive run:
```bash
rm -rf ./dist
```
