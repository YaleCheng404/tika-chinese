FROM apache/tika:latest-full

USER root

RUN set -eux; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      tesseract-ocr-chi-sim \
      tesseract-ocr-eng \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=35002:35002 tika-config.xml /tika-config.xml

USER 35002:35002

CMD ["--config", "/tika-config.xml"]
