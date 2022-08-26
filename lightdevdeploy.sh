#!/usr/bin/env bash

# Run compile code and delete generated code to light refresh

BASEDIR=$(dirname $0)

# Delete generated code first (path to script folder)
sh ${BASEDIR}/deletegenerated.sh

echo "------------ Maintenance enable ------------"
php bin/magento maintenance:enable
echo "-------------- Code Compile ----------------"
php bin/magento setup:di:compile
echo "-------------- Cache Flush -----------------"
php bin/magento cache:flush
echo "------------ Maintenance Disable -----------"
php bin/magento maintenance:disable
