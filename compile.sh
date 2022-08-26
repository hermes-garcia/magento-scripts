#!/usr/bin/env bash

# Run compile & flush cache

echo "----------- Maintenance enable -------------"
php bin/magento maintenance:enable

echo "-------------- Code Compile ----------------"
php bin/magento setup:di:compile

echo "-------------- Cache Flush -----------------"
php bin/magento cache:flush

echo "----------- Maintenance Disable -----------."
php bin/magento maintenance:disable
