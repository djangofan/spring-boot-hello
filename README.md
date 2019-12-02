# spring-boot-hello example

A Spring-Boot hello world example, with integration tests partially wired up.

## PROBLEMS

1. The integration test phase will not run here since the compile IT classes do not get copied into the target/test-classes folder.    This occurs even though I marked the directories as test-source and test-resources.

2. This was a demo project meant to help me solve my question:  https://stackoverflow.com/questions/59082487/is-there-a-way-to-run-karate-tests-as-an-integration-test-suite-against-a-pre-bo

## NOTES

1. This might be the clue that helps me get this to work:  https://github.com/intuit/karate/tree/master/karate-mock-servlet

## How to execute

To run only integration tests:

    mvn clean test-compile failsafe:integration-test

To run all the tests:

    mvn verfiy 


