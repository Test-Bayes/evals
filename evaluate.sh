#!/usr/bin/env bash
cd ..
mkdir evaluation-test-results
cd evaluation-test-results
mkdir test-bayes
mkdir atomix
cd ..



# Probability 0

# Test Bayes

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-0 Branch
git checkout -b probability-0
git pull origin probability-0

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-0-test-bayes-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-0-test-bayes-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test

# JUnit

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-0-junit Branch
git checkout -b probability-0-junit
git pull origin probability-0-junit

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-0-junit-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-0-junit-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test

# Random

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-0-random Branch
git checkout -b probability-0-random
git pull origin probability-0-random

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-0-random-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-0-random-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test



# Probability 3

# Test Bayes

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-3 Branch
git checkout -b probability-3
git pull origin probability-3

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-3-test-bayes-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-3-test-bayes-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test

# JUnit

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-3-junit Branch
git checkout -b probability-3-junit
git pull origin probability-3-junit

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-3-junit-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-3-junit-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test

# Random

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-3-random Branch
git checkout -b probability-3-random
git pull origin probability-3-random

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-3-random-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-3-random-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test



# Probability 5

# Test Bayes

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-5 Branch
git checkout -b probability-5
git pull origin probability-5

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-5-test-bayes-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-5-test-bayes-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test

# JUnit

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-5-junit Branch
git checkout -b probability-5-junit
git pull origin probability-5-junit

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-5-junit-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-5-junit-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test

# Random

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-5-random Branch
git checkout -b probability-5-random
git pull origin probability-5-random

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-5-random-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-5-random-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test



# Probability 10

# Test Bayes

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-10 Branch
git checkout -b probability-10
git pull origin probability-10

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-10-test-bayes-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-10-test-bayes-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test

# JUnit

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-10-junit Branch
git checkout -b probability-10-junit
git pull origin probability-10-junit

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-10-junit-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-10-junit-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test

# Random

# Cloning Test-Bayes-Test
git clone git@github.com:Test-Bayes/Test-Bayes-Test.git
cd Test-Bayes-Test/

# Checkout probability-10-random Branch
git checkout -b probability-10-random
git pull origin probability-10-random

# Add jar to repository
rm mylibs/edu/uw/cse/testbayes/testbayes-1.0.jar
cp ../evals/testbayes-1.0.jar mylibs/edu/uw/cse/testbayes/

# Run the tests
mvn clean install > ../evaluation-test-results/test-bayes/probability-10-random-install.txt
mvn -Dtest=ProbabilityTest test > ../evaluation-test-results/test-bayes/probability-10-random-test.txt

# Remove the repository
cd ..
rm -rf Test-Bayes-Test


## git clone git@github.com:Test-Bayes/atomix.git
#


