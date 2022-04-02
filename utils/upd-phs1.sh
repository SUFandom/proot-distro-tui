#!/bin/env bash
#Phase 1 Update
cd utils
cp upd-true.sh $HOME
if ( find $HOME/upd-true.sh )
then 
cd $HOME
./upd-true.sh
else
echo "$(tput setaf 1)Couldn't Execute Updates Properly, Please Contact Developer..and say the 'if' variable at upd-phs1.sh is at it again..$(tput sgr0)"
exit 1
fi
