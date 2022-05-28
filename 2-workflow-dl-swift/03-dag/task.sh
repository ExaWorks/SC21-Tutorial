#!/bin/bash

ID=$1 OUTPUT=$2
shift 2
INPUT=( $* )

{
  echo "START: $ID $OUTPUT"
  DELAY=$( expr $ID % 8 )
  sleep $DELAY
  cat ${INPUT[@]}
  echo "STOP:  $ID $DELAY"
} | tee $OUTPUT
