#!/usr/bin/env bash

cd ..

# Cloning
git clone git@github.com:Test-Bayes/atomix.git
cd atomix
git checkout -b probability-10-junit
git pull origin probability-10-junit

# JAR
mkdir -p mylibs/edu/uw/cse/testbayes
cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

# Running
cd protocols/raft
mvn clean install -DskipTests
mvn -Dtest=RaftTest test

# Saving
cat test-data/output.txt
touch ../../../evals/atomix-10-junit.txt
cat test-data/output.txt > ../../../evals/atomix-10-junit.txt

# Deleting
cd ../../..
rm -rf atomix