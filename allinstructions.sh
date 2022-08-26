#!/usr/bin/env bash

# Run full setup, compile & reindex

echo "------------- Clean generated --------------"
sudo rm -rf ./generated/* ./var/view_preprocessed/* ./var/cache/* ./var/page_cache/* ./var/session/* ./pub/static/*

echo "------------ Maintenance enable ------------"
php bin/magento maintenance:enable

#echo "If we need to enable modules when changing branches."
#php bin/magento module:enable --all

echo "-------------- Deploy mode -----------------"
php bin/magento deploy:mode:set developer
#php bin/magento deploy:mode:set production

echo "-------------- Disable 2FA -----------------"
php bin/magento module:disable Magento_TwoFactorAuth

echo "------------- Setup Upgrade ----------------"
php bin/magento setup:upgrade

echo "-------------- Code Compile ----------------"
php bin/magento setup:di:compile

echo "-------------- Cache Clean -----------------"
php bin/magento cache:clean

echo "-------------- Cache Flush -----------------"
php bin/magento cache:flush

echo "---------------- Reindex -------------------"
php bin/magento indexer:reindex

echo "---------------- URL Set -------------------"
php bin/magento config:set web/unsecure/base_url http://example.test/
php bin/magento config:set web/unsecure/base_link_url http://example.test/
php bin/magento config:set web/secure/base_url https://example.test/

echo "---------------- Deploy -------------------"
php bin/magento setup:static-content:deploy -f es_MX

echo "----------- Maintenance Disable -----------"
php bin/magento maintenance:disable

