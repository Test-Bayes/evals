#!/usr/bin/env bash

cd ..

# Cloning
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test
git checkout -b probability-0-junit
git pull origin probability-0-junit

# JAR
cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

# Running
mvn clean install -DskipTests
mvn -Dtest=ProbabilityTest test

# Saving
cat test-data/output.txt
touch ../evals/tb-0-junit.txt
cat test-data/output.txt > ../evals/tb-0-junit.txt

# Deleting
cd ..
rm -rf Test-Bayes-Test