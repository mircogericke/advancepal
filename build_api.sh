#!/bin/bash

MSYS_NO_PATHCONV=1 docker run --rm \
  -v ${PWD}:/local openapitools/openapi-generator-cli generate \
  -i /local/swagger.json \
	--additional-properties=pubAuthor="Mirco Gericke" \
	--additional-properties=pubAuthorEmail="foss@mircogericke.com" \
	--additional-properties=pubDescription="API of AdvancePal" \
	--additional-properties=pubLibrary="advancepal_api" \
	--additional-properties=pubName="advancepal_api" \
  -g dart \
  -o /local/deps/advancepal_api

