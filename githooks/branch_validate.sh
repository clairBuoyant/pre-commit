#!/bin/sh -e
LC_ALL=C

NOCOLOR="\033[0m"
RED="\033[0;31m"

local_branch="$(git rev-parse --abbrev-ref HEAD)"

valid_branch_regex="^(bug|chore|devops|feat|fix|hotfix|release)\/[a-zA-Z0-9._-]+$"

message="Commit failed. Branch names in this project must follow this pattern: $valid_branch_regex. Please rename your branch and try again."

if [[ ! $local_branch =~ $valid_branch_regex ]]
then
    echo ${RED}$message${NOCOLOR}
    exit 1
fi

exit 0