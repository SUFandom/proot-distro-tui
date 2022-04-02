# proot-distro-TUI

![banner](img-src/banner.png)

"A TUI Manager for proot-distro" 

It Runs on Dialog

## A better tool to Start your Distro on Termux!

A Neat TUI Filled with Necessary Options

![main](img-src/sel_src01.jpg)

## The Script can now be updated Easily here

![mainmenu](img-src/main_sel_src02.jpg)

Updating this script has never been easier. Good Job

## Information about your Distro available!

![ubuntu_info](img-src/desc_dis.jpg)

Each Distro is given information about themselves..

## Run this Code!

``` 

chmod +x onetime.sh && ./onetime.sh 

```

if having issues exiting, spam esc a lot..it helps. is that, the 

``` while true ; do ``` looped too hard. ill soon find the way how to fix that one, or use some forked version of this..  (If someone does...)


## License

This Repo is under GPL 3.0. Anyone Can Have a Copy and customize, but Users have to Stick it to GPL 3.0

## Problems

Check Issues Page. Spam there..

## Updates!🔧

1.5:

Extreme Hotfix to the Codes that were giving headaches towards end-users.

Adjusted Gradients for ` tput ` system thanks to this gradient test!

```

#!/bin/bash
color(){
    for c; do
        printf '\e[48;5;%dm%03d' $c $c
    done
    printf '\e[0m \n'
}

IFS=$' \t\n'
color {0..15}
for ((i=0;i<6;i++)); do
    color $(seq $((i*36+16)) $((i*36+51)))
done
color {232..255}

```

thanks stackoverflow lol
