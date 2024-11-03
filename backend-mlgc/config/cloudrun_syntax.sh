gcloud builds submit --tag gcr.io/[PROJECT ID]

gcloud run deploy backend-mlgc \
--image gcr.io/tensile-psyche-440211-b4/backend-mlgc \
--set-env-vars APP_ENV=production,APP_PORT=8080,APP_HOST=0.0.0.0,MODEL_URL=[MODEL URL] \
--platform managed \
--region asia-southeast2 \
--allow-unauthenticated
