# pagila-hw
[![](https://github.com/mikeizbicki/pagila-hw/actions/workflows/tests.yml/badge.svg)](https://github.com/mikeizbicki/pagila-hw/actions?query=workflow%3Atests)

## Background

[Pagila](https://github.com/devrimgunduz/pagila) is a standard example database for postgresql.
The database implements a simple movie rental system like the company Blockbuster might have maintained (before Netflix killed them).
The following picture illustrates the database's structure:

<img src=dvd-rental-sample-database-diagram.png width=80% />

## Tasks

1. Fork this repo and clone it on the lambda server.

    Notice that this repo uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules).
    These are a tool that allow us to work with very complicated projects by including git repos within other git repos,
    and here we use submodules to include the original [pagila database](https://github.com/devrimgunduz/pagila/tree/master).
    Pagila is under active development,
    and their data changes regularly.
    The use of submodules allows us to easily update our version of the database to match whichever version of theirs we want.

    By default, cloning a repo does not also give you the files in the submodules.
    To get these files, you must run the following full sequence of commands:
    ```
    $ git clone https://github.com/mikeizbicki/pagila-hw
    $ cd pagila-hw
    $ git submodule init
    $ git submodule update
    ```
    You know that you got the data correctly if:
    1. There are files in the `pagila` subfolder when you run the command
        ```
        $ ls pagila
        ```
    2. You can bring up the docker container and connect with psql and you have a non-empty schema:
        ```
        $ docker-compose up -d --build
        $ docker-compose exec pg psql
        postgres=# \d
        Schema |            Name            |       Type        |  Owner
        --------+----------------------------+-------------------+----------
        public | actor                      | table             | postgres
        public | actor_actor_id_seq         | sequence          | postgres
        public | actor_info                 | view              | postgres
        public | address                    | table             | postgres
        public | address_address_id_seq     | sequence          | postgres

        ...
        ```

1. Modify the `README.md` file so that the test case image points to your forked repo.

1. Solve the each of the problems in the `sql` folder.
    1. The folder contains one file for each problem.
       At the top of each file is a description of what the file is supposed to compute.
       For each file, write a single `SELECT` statement that computes the correct answer.
    1. The folder `expected` contains the expected outputs for each problem.
       You can verify your answer by checking that the output of your `SELECT` statement matches the output in the `answers` folder.
    1. The script `run_tests.sh` will perform these checks for you automatically using the `diff` command.
       It must be run from within the database container with the following command
       ```
       $ docker-compose exec pg ./run_tests.sh
       ```
1. Upload a link to your forked github repo on sakai.

   > **Note:**
   > The github actions for this project are currently broken because they are not running the correct scripts.
   > You will have to modify the file `.github/workflows/tests.yml` to run the correct script.
   > Once you've done that, you are likely to find that some test cases will pass on the lambda server but fail on github actions.
   > You will then have to figure out why they are failing on github actions and fix them for full credit.

1. **Grading:**
    If all test cases pass, you will receive full credit.
    For the first failing test case, you will receive -8 points.
    For each additional failing test case, you will receive -1 point.
    If the github actions do not run correctly, you will receive a 0.
