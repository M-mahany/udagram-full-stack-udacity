# Hosting a Full-Stack Application Udagram provided by Udacity

before installion make sure you install AWS S3 cli to your local computer to be able to creatre a new bucket using automated scripts. 

after installing S3 cli to your local computer creatre a new S3 bucket by using in your AWS console and copy the bucket name and paste it in the deploy.sh path (bin/depoly.sh)

also make sure to edit the elastic beanstalk Enviromental variables based on the variables you added to your circleci envirmonetal variables.

## Installation

`npm install -f ` to install angualar dependencies
`npm run build`
`npm run start`(run start to make sure the api is runnig on tour local host before deply)
`npm run deploy` (deploy here will run scripts inside the bin/deploy.sh) so make sure to change the bucket name based on your situation

