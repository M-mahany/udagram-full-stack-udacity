# Hosting a Full-Stack Application Udagram provided by Udacity

This project will show how i have connected the frontend Angular web app with an api express.js app and with a PostgreSQL on AWS server. The screenshots of the circleci and the database are provided 

Please click the link to access the deployed Udagram:
[http://elasticbeanstalk-us-east-1-502317859992.s3-website-us-east-1.amazonaws.com/]

You can test the database by using the following account to login:
Email: `test@testcom`
password: `123456`

## Installation

this folder is the main folder for the project contains 
1. Front-end which can be accesed path (.udagram/udagram-frontend)
2. backend API which can be accesed path (.udagram/udagram-api)
3. Pipline Circle Ci (circlci/config.yml) for configuration
and the package.json for editing the whole project script includes the frontend and api

#### steps to make it run 

first you need to create a new Circleci account from here [https://circleci.com/]
in order to start your pipline process

then you need to connect it with you github repository to be able to automate your deployment pipline every time you push from you vs code

Then you need to edit package.json to be able to edit scripts inside your front end and backend api for your pipeline process in ordered sequence as i did in the Yml.config file to prevent any error.

make surev also to add enviromental variables to your project setting to be able to assign it later in the front-end deploy.sh

in the YML.config it runs the scripts inside the package.json which opens the path folder for front-end and api and runs the scripts inside the package.json of each file.

please REview the project Diagram Folder to understand better

install packages for both frontend and backend
`npm run frontend:install`
`npm run api:install`

build packages for both frontend and backend
`npm run frontend:build`
`npm run api:build`

deploy both frontend and backend
`npm run deploy`

#### after setting circleci account and connect it to your github repository

commit changes and push to your github repo and cirleci will automate all the scripts for you as following it will be dwployed automatically to your AWS elasticbeastalk and S3 bucket.

`git add -A`
`git commit "your text desc"`
`git push origin main`
