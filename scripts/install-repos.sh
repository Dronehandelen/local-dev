#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $DIR
cd ../
mkdir -p sourcecode
cd sourcecode

if [ ! -d "admin-frontend" ];then
  git clone git@bitbucket.org:norfpv/admin-frontend.git
fi

if [ ! -d "frontend" ];then
  git clone git@github.com:Dronehandelen/frontend.git
fi

if [ ! -d "api" ];then
  git clone git@github.com:Dronehandelen/api.git
fi

if [ ! -d "cdn" ];then
  git clone git@bitbucket.org:norfpv/cdn.git
fi

if [ ! -d "document-printer" ];then
  git clone git@bitbucket.org:norfpv/document-printer.git
fi

if [ ! -d "vipps-settlements" ];then
  git clone git@bitbucket.org:norfpv/vipps-settlements.git
fi

if [ ! -d "fiken" ];then
  git clone git@bitbucket.org:norfpv/fiken.git
fi

if [ ! -d "recommender" ];then
  git clone git@bitbucket.org:norfpv/recommender.git
fi
