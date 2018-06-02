#!/usr/bin/env bash

cd ..

# Cloning
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test
git checkout -b probability-5
git pull origin probability-5

# JAR
cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

# Running
mvn clean install -DskipTests
mvn -Dtest=ProbabilityTest test

# Saving
cat test-data/output.txt
touch ../evals/tb-5-bayes.txt
cat test-data/output.txt > ../evals/tb-5-bayes.txt

# Deleting
cd ..
rm -rf Test-Bayes-Test