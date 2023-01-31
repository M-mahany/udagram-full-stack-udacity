# project Infrastrucrure

#### look at the diagram below I have created to have better understading how it works:
![project Diagram](../Project%20Diagram/udagram.drawio.png)

## AMAZON WEB SERVICES "AWS"

### RDS (PostgreSQL):
Creating database was the first part of the project that will connect all the project parts working together. The database type was set in this project is "PostgreSQL". the database was created to send and recieve information through Backend API server to the frontend.

Postgres Endpoint: `database-1.c6r63cnixdvf.us-east-1.rds.amazonaws.com`

### ELASTIC BEANSTALK:
This part of the AWS service is used to deploy the backend API of the Udagram project and listen to the ELASTIC BEANSTALK port instead of local host which will be modified in the front end api url before deployment to S3 Bucket. It also allows us to add Enviromental variables stored inside. The API backend should be build, archive and then be deployed to ELASTIC BEANSTALK. It acts as middle between the RDS database and request made from S3 Bucket by the client. 

ELASTIC BEANSTALK URL: `udagram-api-dev22222222.us-east-1.elasticbeanstalk.com`

### S3 BUCKET:
Here it comes to the client side which stores the front-end part of the website.  S3 buckets are a bucket where the front-end applications is deployed to. The front-end app should be build and then deployed to the S3 bucket connected to the ELASTIC BEANSTALK URL. 

S3 bucket URL(the endpoint of the application where the user can access from)
`http://elasticbeanstalk-us-east-1-502317859992.s3-website-us-east-1.amazonaws.com/home`
