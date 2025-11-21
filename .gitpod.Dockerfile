# ---------- Gitpod Dockerfile optimized for Flutter + Web/TFLite ----------

# Base image with Flutter preinstalled
FROM ghcr.io/cirruslabs/flutter:latest

# Install Debian UI libs required for Chromium and TFLite WASM
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    chromium \
    libgtk-3-0 \
    libwebkit2gtk-4.0-dev \
    libavcodec59 \
    libavformat59 \
    libavutil57 \
    libgles2 \
    libegl1 \
    libwayland-client0 \
    libwayland-egl1 \
    libwayland-cursor0 \
    && rm -rf /var/lib/apt/lists/*

ENV CHROME_EXECUTABLE=/usr/bin/chromium

# Flutter web optimizations
ENV FLUTTER_WEB_USE_SKIA=true
ENV TFLITE_ENABLE_GPU=1
ENV TFLITE_ENABLE_XNNPACK=1
