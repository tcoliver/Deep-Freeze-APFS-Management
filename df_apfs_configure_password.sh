#!/bin/bash

export DFXPSWD=""
export DFXNEWPSWD="${5}"


# add new description with password
/usr/local/bin/deepfreeze password add --description "${4}" --env

# edit the password if the decription already exists
if [[ "${?}" = 64 ]]; then
	/usr/local/bin/deepfreeze password edit --description "${4}" --env
fi