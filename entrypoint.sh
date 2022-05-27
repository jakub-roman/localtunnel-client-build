#!/bin/sh

if [ -z "$SUBDOMAIN" ];then
  SUBDOMAIN=
else
  SUBDOMAIN="--subdomain $SUBDOMAIN"
fi

/usr/local/bin/lt $SUBDOMAIN \
  --port ${PORT} \
  --local-host ${HOST} \
  --host ${SERVER} \
  --username ${USER} \
  --password ${PASSWORD}
