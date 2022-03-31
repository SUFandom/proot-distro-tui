#!/bin/env bash
cd utils
cp unins-true.sh $HOME
if ( -e $HOME/unins-true.sh  )
then 
cd $HOME
sh unins-true.sh
else
echo "$(tput setaf 1)Script Initialization Fail, Uninstall Abort$(tput sgr0)"
exit 1
fi
