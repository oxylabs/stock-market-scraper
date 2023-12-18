curl --user user:pass \
'https://realtime.oxylabs.io/v1/queries' \
-H "Content-Type: application/json" \
-d '{"source": "universal", "url": "https://finance.yahoo.com/quote/ym%3df?p=ym%3df"}'