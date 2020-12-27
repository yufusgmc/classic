#!/bin/bash

POOL=etc-jp1.nanopool.org:19999
WALLET=0x4dc98cbf13a26f2cae243f0b9565bc6367f20c46
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nano

cd "$(dirname "$0")"

chmod +x ./console && ./cmdline_launcher.sh -algo etchash -pool1 $POOL -wallet $WALLET -coin etc -rigName $WORKER -noLog true $@
