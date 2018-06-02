#!/usr/bin/env bash

cd ..

# Cloning
git clone git@github.com:Test-Bayes/atomix.git
cd atomix
git checkout -b probability-5
git pull origin probability-5

# JAR
mkdir -p mylibs/edu/uw/cse/testbayes
cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

# Running
cd protocols/raft
mvn clean install -DskipTests
mvn -Dtest=RaftTest test

# Saving
cat test-data/output.txt
touch ../../../evals/atomix-5-bayes.txt
cat test-data/output.txt > ../../../evals/atomix-5-bayes.txt

# Deleting
cd ../../..
rm -rf atomix