#!/usr/bin/env bash

cd ..

# Cloning
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test
git checkout -b probability-10
git pull origin probability-10

# JAR
cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

# Running
mvn clean install -DskipTests
mvn -Dtest=ProbabilityTest test

# Saving
cat test-data/output.txt
touch ../evals/tb-10-bayes.txt
cat test-data/output.txt > ../evals/tb-10-bayes.txt

# Deleting
cd ..
rm -rf Test-Bayes-Test