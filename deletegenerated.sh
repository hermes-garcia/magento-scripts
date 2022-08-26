#!/usr/bin/env bash

# Delete Mage generated code

echo "------------- Clean generated --------------"
sudo rm -rf $PWD/generated/* $PWD/var/view_preprocessed/* $PWD/var/cache/* $PWD/var/page_cache/* $PWD/var/session/* $PWD/pub/static/*
