#!/bin/env bash
#Phase 1 Update
cd utils
cp upd-true.sh $HOME
if ( -e $HOME/upd-true.sh )
then 
cd $HOME
sh upd-true.sh
else
echo "$(tput setaf 1)Couldn't Execute Updates Properly, Please Contact Developer..$(tput sgr0)"
exit 1
fi
