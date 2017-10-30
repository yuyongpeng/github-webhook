#!/bin/bash
PROGRAM_PATH=/root/nowness-frontend_yyp
ONLINE_PROGRAM_PATH=/root/nowness-frontend

cd ${PROGRAM_PATH}
git branch -a
git checkout airnuts_production
git pull airnuts production
git checkout production
git merge airnuts_production
git commit -a -m "$1"
git push origin production

cd ${ONLINE_PROGRAM_PATH}
git checkout production
git pull origin production
./gen_code_and_restart.sh 



