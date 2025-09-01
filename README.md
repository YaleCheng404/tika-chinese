# Tika Chinese (GHCR)

基于官方 `apache/tika:latest-full` 扩展中文 OCR（简体/繁体）。仓库提供自动构建与推送到 **GitHub Container Registry (GHCR)** 的工作流，支持：
- Push / Release 自动构建
- 定时重建追踪上游 Tika 更新
- 手动触发构建（可自定义标签与多架构）

## 状态
<!-- 在 GitHub 仓库的 Actions 页面，选择该工作流，使用右侧菜单生成徽章 Markdown 并替换下行链接 -->
[![Build & Publish](https://github.com/<OWNER>/<REPO>/actions/workflows/build-publish.yml/badge.svg)](https://github.com/<OWNER>/<REPO>/actions/workflows/build-publish.yml)

> 生成徽章的官方方法：进入仓库 **Actions** → 选择工作流 → 右侧三点菜单 **Create status badge**，复制 Markdown。  
>（参考：GitHub Docs《Adding a workflow status badge》）  

## 快速开始

### 拉取镜像（GHCR）
```bash
docker pull ghcr.io/<OWNER>/tika-chinese:latest
