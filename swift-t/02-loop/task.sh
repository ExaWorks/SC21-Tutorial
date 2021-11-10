#!/bin/sh

echo COMPUTE $1 $2
sleep $1
echo $1 | tee $2
