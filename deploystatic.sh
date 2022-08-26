#!/usr/bin/env bash

# Run static deploy forced

echo "------------- Clean generated ---------------"
sudo rm -rf $PWD/var/view_preprocessed/* $PWD/pub/static/* $PWD/var/cache/*

echo "------------ Maintenance enable -------------"
php bin/magento maintenance:enable

echo "----------------Deploy-------------------"
php bin/magento setup:static-content:deploy -f

echo "------------ Maintenance Disable ------------"
php bin/magento maintenance:disable
