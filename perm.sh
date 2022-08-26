#!/usr/bin/env bash

# Give all generated code files 777 permissions

echo "---------------- Permisos -----------------"
sudo chmod -R a+rwx $PWD/generated/* $PWD/var/* $PWD/pub/*

