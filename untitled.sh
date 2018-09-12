#!/usr/bin/env bash


for MODULE in $( ls -R ); do
    if [[ $MODULE == *py ]]
    then
        # get complexity stats
        LOC=$(wc -l < $MODULE)
        TOTAL_TABS=$(grep -o "    " $MODULE | wc -l)

        # get modification stats
        COMMITS=$(git log --oneline $MODULE | wc -l)

        echo $MODULE, $LOC, $TOTAL_TABS, $COMMITS
    fi
done
