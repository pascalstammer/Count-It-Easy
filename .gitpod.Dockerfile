FROM ghcr.io/cirruslabs/flutter:latest
RUN apt-get update && apt-get install -y libwebkit2gtk-4.0-dev
