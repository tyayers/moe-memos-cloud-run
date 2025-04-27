PROJECT_ID=bruno-1407a
REGION=europe-west3
BUCKET_NAME=memos-543kj4
gcloud storage buckets create gs://$BUCKET_NAME --location=$REGION --project $PROJECT_ID

# deploy to cloud run
gcloud run services replace cloud-run-service.yaml --project $PROJECT_ID --region $REGION
# set public access policy
gcloud run services set-iam-policy memos cloud-run-policy.yaml --project $PROJECT_ID --region $REGION