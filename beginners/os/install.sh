#!/bin/sh
HOST_OS=$(uname -s | tr '[A-Z]' '[a-z]')

VER=0.12.26
BIN_PATH=/usr/local/bin/terraform
[ -f $BIN_PATH ] || curl -L https://releases.hashicorp.com/terraform/${VER}/terraform_${VER}_${HOST_OS}_amd64.zip | funzip >  $BIN_PATH && chmod +x $BIN_PATH  && terraform version


