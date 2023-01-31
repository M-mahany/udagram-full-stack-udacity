# Hosting a Full-Stack Application Udagram provided by Udacity

---

This project will show how i have connected the frontend Angular web app with an api express.js app and with a PostgreSQL on AWS server. The screenshots of the circleci and the database are provided 

Please click the link to access the deployed Udagram:
[http://elasticbeanstalk-us-east-1-502317859992.s3-website-us-east-1.amazonaws.com/]

You can test the database by using the following account to login:
Email: `test@testcom`
password: `123456`


```

## Installation

### Udagaram-api

1. install:
`npm install .`

2. build:
`npm run build`

3. Deploy:
`npm run deploy`

After deployment make sure to set Enviroment variable inside your ElasticBeanstalk
with the config.js based on your secret keys

Also You have to create an aws RDS first to be able to configure ENV


### udagram-frontend 
1. install:
`npm install -f`
2. build:
`npm run build`

before deploying make sure to update ./bin/deploy.sh with your AWS bucket name
Also update the ElasticBeanstalk url inside src/enviroments/enviroments.ts

3 .deploy:
`npm run deploy`



