#!/bin/sh
app_dir=/app/lib/keystore-explorer/kse-570
exec "$app_dir/jre/bin/java" "-splash:$app_dir/splash.png" -jar "$app_dir/kse.jar" "$@"