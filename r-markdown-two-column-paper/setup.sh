#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit -1
fi

rm -rf .git
rm images/*
rm template.tex
mv template.rmd $1.rmd
mv ../r-markdown-two-column-paper ../$1
rm -- "$0"
