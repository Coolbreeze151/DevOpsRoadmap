#!/bin/bash


for URL in $(echo www.example.com); do
  echo Generating key for ${URL}
  cat > csr_details.txt <<-EOF
[req]
default_bits = 2048
prompt = no
default_md = sha256
req_extensions = req_ext
distinguished_name = dn

[ dn ]
C=SG
L=SINGAPORE
ST=SINGAPORE
O=COMPANY AGENCY
OU=ORGANIZATIONAL UNIT
CN=${URL}

[ req_ext ]
subjectAltName = @alt_names

[ alt_names ]
DNS.1 = www.example.com
EOF

  echo ------------------------------------------------------------------------------------------------
  cat csr_details.txt
  echo ------------------------------------------------------------------------------------------------
  openssl req -new -newkey rsa:2048 -nodes -sha256 -keyout ${URL}.key -out ${URL}.csr -config csr_details.txt
done

ls -1 *.csr | while read i; do
  echo ------------------------------------------------------------------------------------------------
  echo Cert Dump for $i
  echo ------------------------------------------------------------------------------------------------
  openssl req -text -noout -in $i
done
