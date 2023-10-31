#!/usr/bin/env python

import socket
import ssl
import datetime

def check_ssl_certificate(hostname):
  """Checks the validity of an SSL certificate."""

  context = ssl.create_default_context()
  with socket.create_connection((hostname, 443)) as sock:
    with context.wrap_socket(sock) as ssock:
      certificate = ssock.getpeercert()

  now = datetime.datetime.utcnow()
  not_before = datetime.datetime.strptime(certificate['notBefore'], '%b %d %H:%M:%S %Y GMT')
  not_after = datetime.datetime.strptime(certificate['notAfter'], '%b %d %H:%M:%S %Y GMT')

  if now < not_before or now > not_after:
    print('Certificate is not valid.')
  else:
    print('Certificate is valid.')

if __name__ == '__main__':
  check_ssl_certificate('example.com')