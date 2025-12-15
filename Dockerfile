FROM apache/tika:latest-full

# 官方 apache/tika 镜像默认非 root；装语言包需要临时切 root
USER root

RUN set -eux; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      tesseract-ocr-chi-sim \
    apt-get clean -y; \
    rm -rf /var/lib/apt/lists/*

# 把配置内置到镜像里
COPY --chown=35002:35002 tika-config.xml /tika-config.xml

# 切回镜像默认用户
USER 35002:35002

# 让容器启动时自动加载配置
CMD ["--config", "/tika-config.xml"]
