#!/bin/bash
command_exists () {
    type "$1" &> /dev/null ;
}

if command_exists pyflakes; then
    `which pyflakes` "$1"
fi

if command_exists pep8; then
    `which pep8` --repeat "$1"
fi

true
