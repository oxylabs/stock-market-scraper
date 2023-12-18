# Stock-Market Scraper API

[![Oxylabs promo code](https://user-images.githubusercontent.com/129506779/250792357-8289e25e-9c36-4dc0-a5e2-2706db797bb5.png)](https://oxylabs.go2cloud.org/aff_c?offer_id=7&aff_id=877&url_id=112)

Oxylabs’ [Stock-Market Scraper](https://oxylabs.io/products/scraper-api/web/stock-market-scraper?utm_source=github&utm_medium=repositories&utm_campaign=product) is a data gathering solution allowing you to extract real-time information from an Stock-Market website effortlessly. This brief guide explains how an Stock-Market Scraper works and provides code examples to understand better how you can use it hassle-free.

### How it works

You can get Stock-Market results by providing your own URLs to our service. We can return the HTML for any Stock-Market page you like.

#### Python code example

The example below illustrates how you can get HTML of Stock-Market page.

```python
import requests
from pprint import pprint

# Structure payload.
payload = {
    'source': 'universal',
    'url': 'https://finance.yahoo.com/quote/ym%3df?p=ym%3df'
}

# Get response.
response = requests.request(
    'POST',
    'https://realtime.oxylabs.io/v1/queries',
    auth=('user', 'pass1'),
    json=payload,
)

# Instead of response with job status and results url, this will return the
# JSON response with the result.
pprint(response.json())
```
Find code examples for other programming languages [**here**](https://github.com/oxylabs/stock-market-scraper/tree/main/code%20examples)

#### Output Example
```json
{
  "results": [
    {
      "content": "<!doctype html>\n<html lang=\"en-US\" theme=\"light\"  data-color-scheme=\"light\" class=\"desktop neo-green ... </html>",
      "created_at": "2023-12-18 11:35:05",
      "updated_at": "2023-12-18 11:35:10",
      "page": 1,
      "url": "https://finance.yahoo.com/quote/ym%3df?p=ym%3df",
      "job_id": "7142477369335426049",
      "status_code": 200
    }
  ]
}
```
With our Stock-Market Scraper, you can seamlessly harvest public data from any Stock-Market web page. Gather the necessary stock information, such as stock prices, trading volumes, or company financial reports, to understand the market trends and get an edge over your competitors. If you need any further assistance, feel free to reach out to our support team through live chat or email us at hello@oxylabs.io.