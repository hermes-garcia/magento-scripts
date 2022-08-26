#!/usr/bin/env bash

# Run cache flush & clean

echo "-------------- Cache Flush -----------------"
php bin/magento cache:flush
php bin/magento cache:clean
