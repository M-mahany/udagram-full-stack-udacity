# PIPLINE PROCESS

#### look below at the Image provided will give you good understanding how pipline works

![Circleci Pipeline](https://enrq.me/assets/img/circleci-lifecycle.png)

## installation of pipline and GitHub:
- you need tp create a new account at Circleci pipline and connect it to your GitHub account and chose the Repository you wich to deploy.
- once the GitHub and the Circleci is connected toghether you will automate the deployment process because `Github` triggers `Circleci` everytime you `git add -A` `git commit "deploy"` `git push  https://[github repository]` from your local computer. Circleci pipline will do the rest for you. it will install dependencies, run build script and deploy script only by pushing your repo. you will need to write the script manually just once and every time afterward will be automated.

## CircleCi
serup needs `config.yml` to run. config.yml file contains the dependecies and dependencies version to run. steps and orders of scripts to run. CircleCi allows us also to hold the `deploy` step to hold and await for approval as follwing 

```
workflows:
  udagram:
    jobs:
      - build
      - hold:
          filters:
            branches:
              only:
                - main
          type: approval
          requires:
            - build
      - deploy:
          requires:
            - hold
```
`config.yml` file runs script from the main `package.json` as shown below which digs and opens fronend and backend API folder and runs `package.json` inside each folder.
```
"scripts": {
        "frontend:install": "cd udagram/udagram-frontend && npm install -f",
        "frontend:start": "cd udagram/udagram-frontend && npm run start",
        "frontend:build": "cd udagram/udagram-frontend && npm run build",
        "frontend:test": "cd udagram/udagram-frontend && npm run test",
        "frontend:e2e": "cd udagram/udagram-frontend && npm run e2e",
        "frontend:lint": "cd udagram/udagram-frontend && npm run lint",
        "frontend:deploy": "cd udagram/udagram-frontend && npm run deploy",
        "api:install": "cd udagram/udagram-api && npm install .",
        "api:build": "cd udagram/udagram-api && npm run build",
        "api:start": "cd udagram/udagram-api && npm run dev",
        "api:deploy": "cd udagram/udagram-api && npm run deploy",
        "deploy": "npm run api:deploy && npm run frontend:deploy"
    }
```
then `CircleCi` runs the scripts in order sequence as follow 
1. Install Dependencied for `udagram-frontend` and  `udagram-api` by runing `npm install` then...
2. runs `build` script inside `udagram-api` and archive the build folder then runs the `eb cli` to deploy to ELASTIC BEANSTALK and runs `build` script as well for `udagram-frontend` and uses `AWS CLI` to deploy frontend to S3 bucket.

I have attched a copy below from the `config.yml` file descripes runing scripts in ordered sequence

```
 steps:
      # install node and checkout code
      - node/install:
          node-version: '14.15'
      - checkout
      - aws-cli/setup
      - eb/setup 
      # Use root level package.json to install dependencies in the frontend app
      - run:
          name: Install Front-End Dependencies
          command: |
            echo "NODE --version" 
            echo $(node --version)
            echo "NPM --version" 
            echo $(npm --version)
            npm run frontend:install
      # TODO: Install dependencies in the the backend API          
      - run:
          name: Install API Dependencies
          command: |
            npm run api:install
            cd udagram/udagram-api && eb init udagram-api --platform node.js --region us-east-1
      # TODO: Lint the frontend
      - run:
          name: Front-End Lint
          command: |
            npm run frontend:lint
      # TODO: Build the frontend app
      - run:
          name: Front-End Build
          command: |
            npm run frontend:build
      # TODO: Build the backend API      
      - run:
          name: API Build
          command: |
            npm run api:build
            
```


