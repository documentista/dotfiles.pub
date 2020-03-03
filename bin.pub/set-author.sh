!#/usr/bin/env bash

git filter-branch -f --commit-filter '
        if [ "$GIT_AUTHOR_EMAIL" = "thomas.dolan@libertymutual.com" ];
        then
                GIT_AUTHOR_NAME="Tom Dolan";
                GIT_AUTHOR_EMAIL="tgdolan@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD
