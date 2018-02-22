#!/bin/bash

# ====================================================
# 로그 파일 압축 및 삭제
# ----------------------------------------------------
# DELETE 에 지정된 일자가 되면 삭제
# COMPRESS 에 지정된 일자가 되면 압축. 압축은 bzip2 을 이용
# ====================================================

DELETE={{log.delete}}
COMPRESS={{log.compression}}
LOGS=(
"/home/paint/logs/"
)

for logdir in "${LOGS[@]}"; do
  if test -d $logdir
  then
    find $logdir -name "*.bz2" -type f -mtime +${DELETE} | xargs rm -f
    find $logdir \( \( -name "*.log-*" -or -name "*.log.*" \) -and ! -name "*.bz2" \) -type f -mtime +${COMPRESS} | xargs bzip2 -f
  fi
done