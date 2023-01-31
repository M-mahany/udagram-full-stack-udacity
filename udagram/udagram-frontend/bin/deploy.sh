aws s3 cp --recursive --acl public-read ./www s3://elasticbeanstalk-us-east-1-502317859992/
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://elasticbeanstalk-us-east-1-502317859992/

eb init udagram-api --platform node.js --region us-east-1
eb list
eb use udagram-api-dev
eb setenv AWS_BUCKET=$AWS_BUCKET AWS_PROFILE=$AWS_PROFILE AWS_REGION=$AWS_DEFAULT_REGION JWT_SECRET=mysecretstring POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_PORT=5432 POSTGRES_USERNAME=$POSTGRES_USERNAME