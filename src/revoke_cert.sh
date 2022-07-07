#!/bin/sh

openssl ca -config /root/tls/intermediate/openssl.cnf -revoke /root/tls/intermediate/certs/$1.cert.pem

pkill openssl