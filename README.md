# sparta-mobile-testing

## How to run the tests

After cloning the repository, run the following commands in your terminal:

    gem install appium_lib
    gem install pry

In order to run the tests in the spec folder, run the following command in the terminal:

    rspec

In order to run the cucumber tests, from the main directory, type the following command:

    cd native1/cucumber-appium/

And then run:

    cucumber

In the terminal, the results of the tests shall be displayed. Green text means the program has passed the tests, whilst red means they have failed.
