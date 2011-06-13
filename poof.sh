#!/bin/sh

folderName=${BASH_ARGV[0]}
casting=0

if [[ -n $folderName ]]

  then
    if [ -a testSite ]

      then
        cp -R testSite $folderName
        casting=1
      else
        echo "\nYou are missing your default folder, please see README line 10"
        casting=0
    fi
  else
    echo "\nYou must enter a project name!\n"
fi


if [ $casting == 1 ]
  then
    echo "\npoof!\n"
  else
    echo "\nfizzle!\n"
fi
