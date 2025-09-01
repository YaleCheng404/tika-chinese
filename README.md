# Tika Chinese (GHCR)

基于官方 `apache/tika:latest-full` 扩展中文 OCR（简体/繁体）。仓库提供自动构建与推送到 **GitHub Container Registry (GHCR)** 的工作流，支持：
- Push / Release 自动构建
- 定时重建追踪上游 Tika 更新
- 手动触发构建（可自定义标签与多架构）

## 状态
[![Build & Publish Tika (Chinese)](https://github.com/YaleCheng404/tika-chinese/actions/workflows/build-publish.yml/badge.svg)](https://github.com/YaleCheng404/tika-chinese/actions/workflows/build-publish.yml)

## 快速开始

### 拉取镜像（GHCR）
```bash
docker pull ghcr.io/yalecheng404/tika-chinese:latest
docker run --rm -p 9998:9998 ghcr.io/yalecheng404/tika-chinese:latest
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
