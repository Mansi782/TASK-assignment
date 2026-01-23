#!/bin/bash

echo "grep to find errorlines:"
grep "ERROR" sample.log


echo "sed to replace error with issue:"
sed 's/ERROR/ISSUE/' sample.log


echo "awk to print first word of each line:"
awk '{print $1}' sample.log

echo "pipe to count error lines:"
grep "ERROR" sample.log | wc -l

echo "Redirecting error lines to file:"
grep "ERROR" sample.log > error.log
