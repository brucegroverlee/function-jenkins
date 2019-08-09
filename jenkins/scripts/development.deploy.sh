#!/usr/bin/env sh

gcloud auth activate-service-account --key-file $SHERPON_DEVELOPMENT_SERVICE_ACCOUNT_KEY
gcloud functions deploy functionJenkins \
  --runtime nodejs8 \
  --trigger-http \
  --quiet --project $SHERPON_DEVELOPMENT_PROJECT_ID