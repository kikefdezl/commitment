#!/bin/bash

N_COMMITS=$(($RANDOM % 4))
CURRENT_DATE_TIME=$(date)

for (( i=0; i<=$N_COMMITS; i++ ))
do
  COMMIT_MSG="Commit $i at: $CURRENT_DATE_TIME"
  git commit --allow-empty -m "$COMMIT_MSG"
  echo $COMMIT_MSG
done

git push

