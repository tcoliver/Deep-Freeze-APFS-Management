#!/bin/bash

export DFXPSWD="" # in case it's already set
export DFXNEWPSWD="${DFXPSWD}"
DFXPSWD_DESCRIPTION="df_service"
LICENSE_KEY=""

# apply license
/usr/local/bin/deepfreeze license --set "${LICENSE_KEY}"

#set icon states
/usr/local/bin/deepfreeze hideicon frozen --on
/usr/local/bin/deepfreeze hideicon thaw --off

#set password
/usr/local/bin/deepfreeze password enable
/usr/local/bin/deepfreeze password add --description "${DFXPSWD_DESCRIPTION}" --env