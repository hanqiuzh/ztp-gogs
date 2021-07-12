#!/bin/bash

cur_dir=$(pwd)

GIT_HOSTNAME="gogs-svc-default.router-default.apps.bm.rdu2.scalelab.redhat.com"
REPO_NAME="ztp-ran-manifests"
TARGET_REPO="${cur_dir}/${REPO_NAME}"

cd ${cur_dir}

git clone https://github.com/TheRealHaoLiu/ztp-ran-manifests.git

cd $TARGET_REPO

git remote rm origin-gogs

git remote add origin-gogs https://${GIT_HOSTNAME}/testadmin/${REPO_NAME}.git
git remote -v

git checkout main
git push -u origin-gogs main

exit 0