#!/bin/bash
PYFLAKES=`type -P pyflakes &>/dev/null`
PEP8=`type -P pep8 &>/dev/null`

if $PYFLAKES; then
    `which pyflakes` "$1"
fi

if $PEP8; then
    `which pep8` --repeat "$1"
fi

true
