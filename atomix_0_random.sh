#!/usr/bin/env bash

cd ..

# Cloning
git clone git@github.com:Test-Bayes/atomix.git
cd atomix
git checkout -b probability-0-random
git pull origin probability-0-random

# JAR
mkdir -p mylibs/edu/uw/cse/testbayes
cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

# Running
cd protocols/raft
mvn clean install -DskipTests
mvn -Dtest=RaftTest test

# Saving
cat test-data/output.txt
touch ../../../evals/atomix-0-random.txt
cat test-data/output.txt > ../../../evals/atomix-0-random.txt

# Deleting
cd ../../..
rm -rf atomix