#!/bin/bash
# Authors : Jason Nguyen
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem

echo "Input filename: $0"
echo "Argument: $1"

#problem 1
echo "Number of phone numbers: "
grep ^[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]* $1 | wc -l

#problem 2
echo "Number of emails: "
grep @ $1 | wc -l

#problem 3
grep ^303-\d* $1 > "phone_results.txt"

#problem 4
grep ^geocities.com $1 > "email_results.txt"

#problem 5
echo "Search for expression: "
read check
grep $check $1 > "command_results.txt"

#string=($1)
#echo "$string" | awk -F "303-" '{print NF-1}'
