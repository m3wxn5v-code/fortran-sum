#!/usr/bin/env bash
# 三次隨機驗證：用隨機 N 執行程式，並與公式 N*(N+1)/2 比對
set -u
pass=0
for t in 1 2 3; do
  n=$(( (RANDOM * 32768 + RANDOM) % 100000 + 1 ))
  out=$(echo "$n" | ./sum)
  got=$(echo "$out" | awk -F'=' '/Sum/ {gsub(/ /,"",$2); print $2}')
  expected=$(( n * (n + 1) / 2 ))
  if [ "$got" = "$expected" ]; then
    result=PASS; pass=$((pass + 1))
  else
    result=FAIL
  fi
  echo "Test $t: N=$n  program=$got  expected=$expected  -> $result"
done
echo "Passed $pass / 3"
[ "$pass" -eq 3 ]
