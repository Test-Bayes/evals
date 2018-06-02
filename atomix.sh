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
    touch ../../../evals/atomix-0-bayes.txt
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
    touch ../../../evals/atomix-0-junit.txt
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
    touch ../../../evals/atomix-0-random.txt
    cat test-data/output.txt > ../../../evals/atomix-0-random.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_10_bayes {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-10
    git pull origin probability-10

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    touch ../../../evals/atomix-10-bayes.txt
    cat test-data/output.txt > ../../../evals/atomix-10-bayes.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_10_junit {
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
}

function atomix_10_random {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-10-random
    git pull origin probability-10-random

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    touch ../../../evals/atomix-10-random.txt
    cat test-data/output.txt > ../../../evals/atomix-10-random.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_3_bayes {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-3
    git pull origin probability-3

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    touch ../../../evals/atomix-3-bayes.txt
    cat test-data/output.txt > ../../../evals/atomix-3-bayes.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_3_junit {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-3-junit
    git pull origin probability-3-junit

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    touch ../../../evals/atomix-3-junit.txt
    cat test-data/output.txt > ../../../evals/atomix-3-junit.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_3_random {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-3-random
    git pull origin probability-3-random

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    touch ../../../evals/atomix-3-random.txt
    cat test-data/output.txt > ../../../evals/atomix-3-random.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_5_bayes {
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
}

function atomix_5_junit {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-5-junit
    git pull origin probability-5-junit

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    touch ../../../evals/atomix-5-junit.txt
    cat test-data/output.txt > ../../../evals/atomix-5-junit.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

function atomix_5_random {
    cd ..

    # Cloning
    git clone git@github.com:Test-Bayes/atomix.git
    cd atomix
    git checkout -b probability-5-random
    git pull origin probability-5-random

    # JAR
    mkdir -p mylibs/edu/uw/cse/testbayes
    cp ../evals/testbayes-1.0.jar ./mylibs/edu/uw/cse/testbayes/

    # Running
    cd protocols/raft
    mvn clean install -DskipTests
    mvn -Dtest=RaftTest test

    # Saving
    cat test-data/output.txt
    touch ../../../evals/atomix-5-random.txt
    cat test-data/output.txt > ../../../evals/atomix-5-random.txt

    # Deleting
    cd ../../..
    rm -rf atomix
}

atomix_0_bayes
atomix_0_junit
atomix_0_random

atomix_3_bayes
atomix_3_junit
atomix_3_random

atomix_5_bayes
atomix_5_junit
atomix_5_random

atomix_10_bayes
atomix_10_junit
atomix_10_random