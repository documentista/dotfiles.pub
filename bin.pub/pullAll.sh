#!/bin/bash

GIT_DIR=~/git

for dir in $GIT_DIR/*/; do
  if [[ -d $dir ]]; then
    echo -------------------------------------------------------------------------------
    echo
    echo Pulling for $(basename $dir)
    echo Branch is $(git -C $dir branch | grep \* | cut -d ' ' -f2)
    (cd "$dir" && git pull);
    echo
  fi
done
