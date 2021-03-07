#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $DIR
cd ../
mkdir -p sourcecode
cd sourcecode

if [ ! -d "frontend-admin" ];then
  git clone git@github.com:Dronehandelen/frontend-admin.git
fi

if [ ! -d "frontend" ];then
  git clone git@github.com:Dronehandelen/frontend.git
fi

if [ ! -d "api" ];then
  git clone git@github.com:Dronehandelen/api.git
fi

if [ ! -d "cdn" ];then
  git clone git@github.com:Dronehandelen/cdn.git
fi

if [ ! -d "document-printer" ];then
  git clone git@bitbucket.org:norfpv/document-printer.git
fi

if [ ! -d "vipps-settlements" ];then
  git clone git@github.com:Dronehandelen/vipps-settlements.git
fi

if [ ! -d "fiken" ];then
  git clone git@github.com:Dronehandelen/fiken.git
fi

if [ ! -d "recommender" ];then
  git clone git@github.com:Dronehandelen/recommender.git
fi
