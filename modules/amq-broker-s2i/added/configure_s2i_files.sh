#!/bin/sh
set -e

INSTANCE_DIR=$1
echo "Copying Config files from S2I build"
if ls $AMQ_HOME/conf/* 1> /dev/null 2>&1; then
    cp -v $AMQ_HOME/conf/* ${INSTANCE_DIR}/etc/
fi
echo "Copying Plugin files from S2I build"
if ls $AMQ_HOME/plugin/* 1> /dev/null 2>&1; then
    cp -v $AMQ_HOME/plugin/* $AMQ_HOME/lib/
fi
