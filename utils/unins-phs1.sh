#!/bin/env bash
cd utils
cp unins-true.sh $HOME
if ( find $HOME/unins-true.sh  )
then 
cd $HOME
./unins-true.sh
else
echo "$(tput setaf 124)$(tput setab 000)Script Initialization Fail, Uninstall Abort$(tput sgr0)"
exit 1
fi
