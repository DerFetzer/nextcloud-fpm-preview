FROM nextcloud:17.0.1-fpm

RUN export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ghostscript ffmpeg libreoffice \
    && rm -rf /var/lib/apt/lists/*
