#!/usr/bin/env bash

# Remove static generated code to refresh

echo "------------- Clean generated --------------"
sudo rm -rf $PWD/pub/static/frontend $PWD/pub/static/adminhtml $PWD/var/di/* $PWD/var/generation/*
