#!/bin/bash
#Enter SteamID64 Value to output the friendly 'Name' last registered on SteamID.io
read -p "Enter SteamID64: " SteamID64
echo "You entered $SteamID64"
curl -v silent https://steamid.io/lookup/$SteamID64 2>&1 | grep '"name"'