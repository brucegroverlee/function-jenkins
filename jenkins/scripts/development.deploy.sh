#!/usr/bin/env sh

gcloud auth activate-service-account --key-file $GCLOUD_SERVICE_ACCOUNT
gcloud functions deploy functionJenkins \
  --runtime nodejs8 \
  --trigger-http \
  --quiet --project $SHERPON_DEVELOPMENT_PROJECT_ID