# Create a native segwit address and get the public key from the address.
SEGWIT=$(bitcoin-cli -regtest getnewaddress "" "bech32")
PUBKEY=$(bitcoin-cli -regtest getaddressinfo $SEGWIT |jq -r '.pubkey')
echo $PUBKEY
