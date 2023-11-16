#!/bin/bash

n_commits=$(($RANDOM % 4))
current_date_time=$(date)

for i in {0..n_commits}
do
  git commit --allow-empty -m "Commit $i at: $current_date_time"
done

