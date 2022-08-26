#!/usr/bin/env bash

# Run upgrade & compile on dev mode

BASEDIR=$(dirname $0)

# Delete generated code first (path to script folder)
sh ${BASEDIR}/deletegenerated.sh

echo "------------ Maintenance enable ------------"
php bin/magento maintenance:enable

echo "-------------- Deploy mode -----------------"
php bin/magento deploy:mode:set developer

#echo "--------------Disable 2FA------------------"
#php bin/magento module:disable Magento_TwoFactorAuth

echo "------------- Setup Upgrade ----------------"
php bin/magento setup:upgrade

echo "-------------- Code Compile ----------------"
php bin/magento setup:di:compile

echo "-------------- Cache Flush -----------------"
php bin/magento cache:flush

echo "---------------- Reindex -------------------"
php bin/magento indexer:reindex

echo "----------- Maintenance Disable ------------"
php bin/magento maintenance:disable
