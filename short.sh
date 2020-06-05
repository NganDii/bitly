#!/usr/bin/env bash # ----------------------------------------------------------------------------- # Info: # author: Santhosh veer # file: short.sh # created: 29.01.2018 # revision: 16.03.2020 # version: 0.3 # ----------------------------------------------------------------------------- # Requirements: # curl, jq # Description: # Simple Shell script to Shorten your Long URL via Bitly API V4. # ----------------------------------------------------------------------------- # Bitly Generic access token
 
Accesstoken=81afc11defe28d0a84edff9fd10606d3bacfe0e3
api=https://api-ssl.bitly.com/v4/shorten 
echo -n "Enter your Long URL: " 
read -r longurl 
echo "[+] URL Shortening Started..." 
# If no URL you will see this Alert message 
if [[ ! $longurl ]]; 
then echo -e "Error URL Missing" 
exit 1 
fi 
# Curl request 
curl -s -H Authorization:\ $Accesstoken -H Content-Type: -d '{"long_url": "'"$longurl"\"} $api |jq -j .link; 
echo 
