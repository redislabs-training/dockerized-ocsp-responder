# Create OCSP Certs and OCSP Responder

This is a very simple docker wrapper around openssl to give a basic CA and OCSP responder.

1. CA and intermediate cert will be created
2. Listen on a specific port for OCSP validation
3. Create client certs and server certs (with SAN wildcard)
4. Validate a cert
5. Revoke a cert

## Running



## Creating Certificates

## Revoking

## Credit

The idea and a lot of the initial scripts came from this blog post: https://ilhicas.com/2018/04/10/Creating-oscp-responder-docker.html.

I have filled in the blanks, provided openssl configs, and generally cleaned it up to work for my use cases.