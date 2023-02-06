#!/bin/bash

function get_status_record() {
  mysql --defaults-file=.my.cnf -e "SHOW GLOBAL STATUS LIKE 'Handler_update'" | grep Handler_update | awk '{print $2}'
}

function usage() {
  echo "Usage: ./show-progress.sh [TOTAL_NUMBER_OF_RECORDS]"
}

function format_es() {
  ES=$1
  if [ $ES -lt 60 ]; then
    echo "$ES s"
  elif [ $ES -lt 360 ];then
    M=$(($ES/60))
    S=$(($ES%60))
    echo "$M min $S s"
  else
    H=$(($ES/3600))
    M=$(($ES%3600/60))
    S=$(($ES%60))
    echo "$H h $M min $S s"
  fi
}

if [ $# != 1 ]; then
    echo "Missing required argument"
    usage
    exit 1
fi

TOTAL=$1
INITIAL=`get_status_record`
START_TIME=`date +"%s"`

# Dummy For carriage return
echo ""
echo ""

while true
do
  CURRENT=`get_status_record`
  CURRENT_TIME=`date +"%s"`
  DIFF_FROM_INIT=$((CURRENT - INITIAL))
  DIFF_FROM_BEFORE=$((CURRENT - BEFORE))
  ELAPSED_TIME=$((CURRENT_TIME - START_TIME))
  PROGRESS_PERCENTAGE=$(($DIFF_FROM_INIT * 100 / $TOTAL))

  FORMARTED_ES=`format_es $ELAPSED_TIME`

  UPLINE=$(tput cuu1)
  ERASELINE=$(tput el)

  echo -e "$UPLINE$ERASELINE$UPLINE$ERASELINE\c"

  echo "INITIAL: $INITIAL / CURRENT: $CURRENT/ DIFF_FROM_INIT: $DIFF_FROM_INIT"
  echo "[ $DIFF_FROM_INIT records / $TOTAL records ($PROGRESS_PERCENTAGE %)] [$FORMARTED_ES] [$DIFF_FROM_BEFORE rec/s]"

  BEFORE=$CURRENT
  sleep 1
done
