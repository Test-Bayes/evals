#!/usr/bin/env bash




function atomix_0_bayes {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-0
    git pull origin probability-0

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    cat test-data/output.txt > ../../../evals/atomix-0-bayes.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_0_junit {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-0-junit
    git pull origin probability-0-junit

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    cat test-data/output.txt > ../../../evals/atomix-0-junit.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_0_random {
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
    cat test-data/output.txt > ../../../evals/atomix-0-random.txt
    
    # Deleting
    cd ../../..
    rm -rf atomix
}

atomix_0_bayes
atomix_0_junit
atomix_0_random