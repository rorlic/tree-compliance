#!/bin/bash
mkdir -p ./dist
rm -f ./dist/tree-compliance.zip
cd ./src
zip -rq ../dist/tree-compliance.zip ./*
cd ..
