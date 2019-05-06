#!/usr/bin/env bash

if [[ -n $(which apt-get)  ]];
then
  echo "Ubuntu-ish..."
else
  echo "Unknown (unhandled) linux dist"
fi
