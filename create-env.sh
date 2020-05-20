#!/bin/bash

replace() {
  echo "sed -i s/${1}=/${1}=${!1}/g ${2}"
  sed -i s/${1}=/${1}=${!1}/g ${2}
}

env
src_env_file="backend/.env.sample"
dist_env_file="dist/functions/.env"
cp ${src_env_file} ${dist_env_file}

replace "MONGO_DB_URL" ${dist_env_file}
replace "MONGO_DB_NAME" ${dist_env_file}
replace "MONGO_USER_NAME" ${dist_env_file}
replace "MONGO_USER_PASS" ${dist_env_file}
