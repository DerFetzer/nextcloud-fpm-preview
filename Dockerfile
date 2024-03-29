FROM nextcloud:25.0.4-fpm

RUN export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ghostscript ffmpeg libreoffice libfcgi-bin \
    && rm -rf /var/lib/apt/lists/*
