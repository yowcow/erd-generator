erd-generator
=============

Simple [erd](https://github.com/BurntSushi/erd) running environment

HOW TO USE
----------

Build docker image

    % make all

Run erd with input `database.er` and output `database.svg`

    % make run

Run erd with input `foo.er` and output `bar.svg`

    % make INPUT=foo.er OUTPUT=bar.svg run

Clean

    % make clean

Real clean

    % make realclean
