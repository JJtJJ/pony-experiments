#!/bin/bash

ponyc='/home/benbrannick/ponyc/build/release/ponyc'
cases='testcases.txt'
test_out='test_out'
logfile='out.log'
fail_msg='BAD!'

while read case; do
  echo $case
  [[ -z $case ]] && continue
  sudo $ponyc $case -o $test_out &> $logfile
  if [ $? != 0 ]; then
    echo $fail_msg; break
  fi
done <$cases

sudo rm -rf $test_out
