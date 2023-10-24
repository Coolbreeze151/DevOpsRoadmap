#!/usr/bin/env python

import requests
from urllib.parse import urlparse

def scan_https(url):
  """Scans a website for vulnerabilities related to HTTPS."""

  parsed_url = urlparse(url)
  hostname = parsed_url.hostname

  try:
    response = requests.get(url)
  except requests.exceptions.SSLError as e:
    print('SSL error: {}'.format(e))
    return

  if response.status_code != 200:
    print('Website returned a non-200 status code: {}'.format(response.status_code))
    return

  if response.headers['Server'].startswith('nginx'):
    print('Website is using Nginx web server.')

  if 'TLSv1.3' not in response.headers['Server']:
    print('Website is not using TLSv1.3.')

  if 'Perfect-Forward-Secrecy' not in response.headers['Server']:
    print('Website is not using Perfect Forward Secrecy.')

if __name__ == '__main__':
  scan_https('https://example.com')
