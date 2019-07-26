#!/bin/bash

DAYS=200

for i in `eval echo {$DAYS..1}`
do
dataset_date=`date`
TODAY=`date -d "$dataset_date - $i days" +%Y-%m-%d`
echo "DATE: $TODAY"
done
