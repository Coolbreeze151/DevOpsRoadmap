#!/usr/bin/env python

import requests
from datetime import datetime

def monitor_https(url):
  """Monitors a website's HTTPS configuration."""

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

  certificate = response.headers['Server']

  now = datetime.datetime.utcnow()
  not_before = datetime.datetime.strptime(certificate['notBefore'], '%b %d %H:%M:%S %Y GMT')
  not_after = datetime.datetime.strptime(certificate['notAfter'], '%b %d %H:%M:%S %Y GMT')

  if now < not_before - datetime.timedelta(days=30):
    print('Certificate will expire in less than 30 days.')

  if now > not_after:
    print('Certificate has expired.')

if __name__ == '__main__':
  monitor_https('https://example.com')
