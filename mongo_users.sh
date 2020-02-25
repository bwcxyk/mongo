#!/usr/bin/env bash
echo "Creating mongo users..."
mongo admin -u ${MONGO_INITDB_ROOT_USERNAME} -p ${MONGO_INITDB_ROOT_PASSWORD} << EOF
use ${MONGODB_APPLICATION_DATABASE}
db.createUser({user: '${MONGODB_APPLICATION_USER}', pwd: '${MONGODB_APPLICATION_PASS}', roles:[{role:'readWrite',db:'${MONGODB_APPLICATION_DATABASE}'}]})
EOF
echo "Mongo users created."
