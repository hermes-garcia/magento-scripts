#!/usr/bin/env bash

# Run setup:upgrade and flush cache

echo "------------- Setup Upgrade ----------------"
php bin/magento setup:upgrade

echo "-------------- Cache Flush -----------------"
php bin/magento cache:flush
