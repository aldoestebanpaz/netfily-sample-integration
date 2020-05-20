#!/bin/bash

# replace_env() {
#   echo "sed -i s/${1}=/${1}=${!1}/g ${2}"
#   sed -i s/${1}=/${1}=${!1}/g ${2}
# }

replace_js() {
  echo "sed -i s/${1}/${!2}/g ${3}"
  sed -i s/${1}/${!2}/g ${3}
}

env

#src_env_file="backend/.env.sample"
#dist_env_file="dist/functions/.env"
#cp ${src_env_file} ${dist_env_file}
# replace_env "MONGO_DB_URL" ${dist_env_file}
# replace_env "MONGO_DB_NAME" ${dist_env_file}
# replace_env "MONGO_USER_NAME" ${dist_env_file}
# replace_env "MONGO_USER_PASS" ${dist_env_file}

dist_env_file="dist/functions/api.js"
replace_js "process.env.MONGO_DB_URL" "MONGO_DB_URL" ${dist_env_file}
replace_js "process.env.MONGO_DB_NAME" "MONGO_DB_NAME" ${dist_env_file}
replace_js "process.env.MONGO_USER_NAME" "MONGO_USER_NAME" ${dist_env_file}
replace_js "process.env.MONGO_CONNECTION_STRING" "MONGO_CONNECTION_STRING" ${dist_env_file}
