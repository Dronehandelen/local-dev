#!/bin/bash

FILE=cloud_sql_proxy

if [[ ! -f $FILE ]]; then
    echo "Cloud proxy script not found. Installing!"
    URL=https://dl.google.com/cloudsql/cloud_sql_proxy.darwin.amd64

    if [ "$(uname -s)" == "Linux" ]
    then
      URL=https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64
    fi

    curl -o cloud_sql_proxy $URL
    chmod +x $FILE
fi

./$FILE -instances=norfpv:europe-north1:norfpv-postgres=tcp:5434