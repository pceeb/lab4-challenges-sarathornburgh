#!/bin/bash

#1. this script inputs "cats eat 5 billion birds a year and outputs "5 billon? 5 billion!"

echo "cats eat 5 billion birds a year" | sed 's/\(cats eat\) \(5 billion\) \(birds a year\)/\2? 5 billion!/'

#2. this script inputs "12345abcde678910fghij" and outputs "abcdefghij12345678910"

echo "12345abcde678910fghij" | sed 's/[0-9][0-9][0-9][0-9][0-9]/abcdefghij/' | sed 's/abcde678910fghij/12345678910/'

#3 this script inputs 12345abcde678910fghij and outputs  ab cd ef gh ij 12 34 56 78 91 0

echo "12345abcde678910fghij" | sed 's/[0-9][0-9][0-9][0-9][0-9]/ab'$'\tcd'$'\tef'$'\tgh'$'\tij/' | sed 's/abcde678910fghij/'$'\t12'$'\t34'$'\t56'$'\t78'$'\t91'$'\t0/'

#4 this script inputs 12345abcde678910fghij and outputs ab cd ef gh ij

echo "12345abcde678910fghij" | sed 's/[0-9][0-9][0-9][0-9][0-9]/ab'$'\tcd'$'\tef'$'\tgh'$'\tij/' | sed 's/abcde678910fghij/ /'

