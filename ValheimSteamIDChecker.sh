#!/bin/#!/usr/bin/env bash

PS3='Please choose your option: '
options=("Check for any join attempts from Blacklisted Accounts" "Check for ALL join attempts" "Check for ALL join attempts with timestamp" "Convert SteamID into Username" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Check for any join attempts from Blacklisted Accounts")
          echo "$REPLY. Blacklisted Join attempts listed below"
          grep blacklist vhserver-console.log | cut -f-8 -d' ' | sort -u
        ;;
        "Check for ALL join attempts")
          echo "$REPLY.ALL join attempts listed below"
          grep handshake vhserver-console.log | cut -f 7 -d' ' | sort -u
        ;;
        "Check for ALL join attempts with timestamp")
          echo "$REPLY.ALL join attempts with timestamp listed below"
          grep handshake vhserver-console.log | cut -f-2,7-7 -d' ' | sort -u
        ;;
        "Convert SteamID into Username")
          echo "$REPLY.Enter SteamID to output Username below"
          read -p "Enter SteamID64: " SteamID64
          echo "You entered $SteamID64"
          curl -v silent https://steamid.io/lookup/$SteamID64 2>&1 | grep '"name"'
        ;;
        "Quit")
          echo "Thanks for using ValheimSteamIDChecker!"
          break
        ;;
        *) echo "invalid option $REPLY";;
      esac
    done
