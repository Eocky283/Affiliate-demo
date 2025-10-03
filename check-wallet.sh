#!/data/data/com.termux/files/usr/bin/bash

WALLET="0x84622192f1e0e6e6e6e6e6e6e6e6e6e6e6e6e6"
API="https://api.ethplorer.io/getAddressInfo/$WALLET?apiKey=freekey"

echo "🔍 Checking wallet balance for: $WALLET"
curl -s "$API" | jq '.ETH.balance'
