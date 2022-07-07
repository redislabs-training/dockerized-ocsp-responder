FROM alpine:3.16
RUN apk --update add openssl

ENV ROOT_DOMAIN="root.domain"
ENV OCSP_URL="http://127.0.0.1:2560"
ENV SAN="DNS:certs.$ROOT_DOMAIN"


COPY setup-tls-folder.sh setup-tls-folder.sh
RUN chmod +x setup-tls-folder.sh
RUN ./scripts/setup-tls-folder.sh

COPY src/create_chain.sh create_chain.sh
COPY src/create_cert.sh create_cert
COPY src/create_san_wildcard_cert.sh create_san_wildcard_cert
COPY src/revoke_cert.sh revoke_cert
COPY src/get_chain.sh get_chain
COPY src/get_cert.sh get_cert
COPY src/get_key.sh get_key
COPY config/configs/root-openssl.conf /root/tls/openssl.cnf
COPY config/configs/intermediate-openssl.conf /root/tls/intermediate/openssl.cnf

RUN chmod +x create_chain.sh && \
    chmod +x create_cert && \
    chmod +x create_san_wildcard_cert && \
    chmod +x revoke_cert && \
    chmod +x get_chain && \
    chmod +x get_cert &&\
    chmod +x get_key

RUN ./create_chain.sh

COPY docker-entrypoint.sh docker-entrypoint.sh
EXPOSE 2560
ENTRYPOINT [ "/bin/sh", "docker-entrypoint.sh" ]