#!/bin/bash

######################################################################
# This install script copies the relevant data to their directories. #
######################################################################

mkdir -p ~/.conky/conky-spotify
cp -r scripts ~/.conky/conky-spotify/

echo "Here is a sample of how to use this conky extension. Just copy it to your configuration file and adapt it for your purpose."
echo ""
cat sample_conky
