#!/bin/bash
#
# Every 6 hours, there's a 50% chance a commit is done
# In my crontab:
# 0 */6 * * * cd ~/commitment && ./commit.sh


git pull

CURRENT_DATE_TIME=$(date)

if [ $((RANDOM % 10 + 1)) -le 5 ]; then
  COMMIT_MSG="Commit at: $CURRENT_DATE_TIME"
  git commit --allow-empty -m "$COMMIT_MSG"
  echo $COMMIT_MSG
fi

git push

