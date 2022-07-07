#!/bin/sh

mkdir /root/tls
mkdir /root/tls/certs /root/tls/crl /root/tls/newcerts /root/tls/private

chmod 700 private
touch /root/tls/index.txt

echo 1000 > /root/tls/serial

mkdir /root/tls/intermediate
mkdir /root/tls/intermediate/certs /root/tls/intermediate/crl /root/tls/intermediate/csr /root/tls/intermediate/newcerts /root/tls/intermediate/private

chmod 700 /root/tls/intermediate/private
touch /root/tls/intermediate/index.txt

echo 1000 > /root/tls/intermediate/serial
echo 1000 > /root/tls/intermediate/crlnumber

touch /root/tls/intermediate/certs.db