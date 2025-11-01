# Tika Chinese (GHCR)

在官方 `apache/tika:latest-full` 基础上扩展简体 / 繁体中文 OCR 支持，并保持镜像体积尽可能小。

## 特性概览

- 🈶️ 内置 `tesseract-ocr-chi-sim` 与 `tesseract-ocr-chi-tra`
- ⚙️ 通过 build args 自定义基础镜像或额外语言包，无需修改 Dockerfile
- 🔁 自动构建与推送至 **GitHub Container Registry (GHCR)**：
  - Push / Release 自动构建
  - 定时重建跟进上游 Apache Tika 更新
  - 手动触发构建（可自定义标签与多架构）

## 状态
[![Build & Publish Tika (Chinese)](https://github.com/YaleCheng404/tika-chinese/actions/workflows/build-publish.yml/badge.svg)](https://github.com/YaleCheng404/tika-chinese/actions/workflows/build-publish.yml)

## 快速开始

### 拉取镜像（GHCR）
```bash
docker pull ghcr.io/yalecheng404/tika-chinese:latest
docker run --rm -p 9998:9998 ghcr.io/yalecheng404/tika-chinese:latest
```

## 自定义构建

如需基于其他 Apache Tika 版本或额外 OCR 语言，可在构建时指定 build args：

```bash
# 使用不同的基础镜像
docker build \
  --build-arg TIKA_BASE=apache/tika:3.0.0-full \
  -t my-tika-chinese .

# 添加更多 Tesseract 语言包（空格分隔）
docker build \
  --build-arg "TESSERACT_LANGS=tesseract-ocr-chi-sim tesseract-ocr-chi-tra tesseract-ocr-jpn" \
  -t my-tika-chinese .
```

> Copyright 2025 YaleCheng404
> 
> This software is a derivative work based on Apache Tika (https://tika.apache.org/) and its Docker distribution (https://github.com/apache/tika-docker/), both licensed under the Apache License 2.0.
> 
> All modifications you make are licensed under the Apache License 2.0 unless otherwise noted.
> 
> This derivative work retains all original copyright notices, patent notices, trademark notices, and attribution as required by the Apache License 2.0.
> 
> See the LICENSE and NOTICE files for details.
