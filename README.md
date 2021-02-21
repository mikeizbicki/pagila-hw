# pagila-hw
[![](https://github.com/curtissalinger/pagila-hw/workflows/tests/badge.svg)](https://github.com/curtissalinger/pagila-hw/actions?query=workflow%3Atests)

## Background

[Pagila](https://github.com/devrimgunduz/pagila) is a standard example database for postgresql.
The database implements a simple movie rental system like the company Blockbuster might have maintained (before Netflix killed them).
The following picture illustrates the database's structure:

<img src=dvd-rental-sample-database-diagram.png width=80% />


## Tasks

1. Fork this repo and clone it on the lambda server.

   Notice that this repo uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules).
   These are a tool that allow us to work with very complicated projects by including git repos within other git repos,
   and here we use submodules to include the original pagila repo.
   In order to clone the repo with the submodules, you need to run the commands
   ```
   $ git clone https://github.com/mikeizbicki/pagila-hw
   $ cd pagila-hw
   $ git submodule init
   $ git submodule update
   ```

1. Modify the `README.md` file so that the test case image points to your forked repo.
1. Solve the each of the problems in the `sql` folder.
    1. The folder contains one file for each problem.
       At the top of each file is a description of what the file is supposed to compute.
       For each file, write a single `SELECT` statement that computes the correct answer.
    1. The folder `expected` contains the expected outputs for each problem.
       You can verify your answer by checking that the output of your `SELECT` statement matches the output in the `answers` folder.
    1. The script `check_answers.sh` will perform these checks for you automatically using the `diff` command.
       It must be run from within a postgres docker container.

       Bring up the docker container with the command
       ```
       $ docker-compose up -d --build
       ```
       Then run the the test case script with
       ```
       $ docker-compose exec pg ./check_answers.sh
       ```
1. Upload a link to your forked github repo on sakai.
