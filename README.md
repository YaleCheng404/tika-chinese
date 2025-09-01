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
