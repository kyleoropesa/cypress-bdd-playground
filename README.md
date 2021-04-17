# Overview
Tech stack used is cypress to automate a canvas application. On top of cypress, I used a bdd plugin which is a very reliable add-on to write behaviour driven tests
There are some tests that are meant to fail because the application did not return correct result and is indeed intentional. Take note though that this is a canvas 
application so there's an extra challenge of automating it. 

### Note
**It is only tested on MacOS** but it is expected to run on different linux flavors provided that you installed the required apps correctly

### Prerequisites

#### For MacOS
You need to have the latest version of Node and NPM. If you have [homebrew](https://brew.sh/) installed you can run the following commands 
to both install node and npm.
```
brew install node
```

check that node and npm is installed by running the following commands
```
node -v
npm -v
```

#### For Linux
If you are running on a linux machine. please run below commands to install them

```
sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm
```

There are some packages that needs to be compiled from source when you install them via npm thus you need to have the build-essential packages
installed to make it work. Please run the following command on your linux terminal


```
sudo apt-get install build-essential
```

### Project Setup
When you have node and npm installed all you need to do now is checkout the project and then install the necessary packages.
To checkout the project run the following command

```
git clone git@github.com:kyleoropesa/cypress-bdd-playground.git
```

Navigate inside the project directory and run the following command to install project dependencies
```
npm install
```

### Running the Tests
NOTE: Please run the following commands on the root project not inside one of the subdirectories.

To run the tests in headless mode
```
npx cypress run
```

To run using firefox
```
npx cypress run --browser firefox
```

To run using Chrome
```
npx cypress run --browser chrome
```

### Project Structure
Test scripts can be found inside the `cypress` folder. The code for the application under test can be located inside the `cypress/integration/Calculator` Folder 
```
.
├── fixtures
│   └── example.json
├── integration
│   └── calculator
│       ├── Calculator
│       │   └── stepimplementation.js
│       └── Calculator.feature
├── plugins
│   └── index.js
├── support
│   ├── commands.js
│   └── index.js
└── videos
    └── calculator
        └── Calculator.feature.mp4

```
