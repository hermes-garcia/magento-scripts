#!/usr/bin/env bash

# Clean static generated code to re-generate

echo "------------- Clean generated --------------"
sudo rm -rf $PWD/var/view_preprocessed/* $PWD/pub/static/*

echo "END"
