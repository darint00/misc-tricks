#!/bin/bash

DAYS=200
dataset_date=`date`
TODAY=`date -d "$dataset_date - $DAYS days" +%d-%b-%G
echo $TODAY
