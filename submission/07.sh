# What is the receiver's address in this partially signed transaction?
RAW_PSBT=cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA

DECODE_PSBT=$(bitcoin-cli -regtest decodepsbt $RAW_PSBT| jq -r '.tx.vout[0].scriptPubkey.address')

echo $DECODE_PSBT