#!/bin/sh
set -e

# Optional env var:
# MYSQL_WAKER_URL=https://your-waker.up.railway.app/wake
# MYSQL_WAKER_WAIT=5

if [ -n "$MYSQL_WAKER_URL" ]; then
  echo "🟡 Waking MySQL via $MYSQL_WAKER_URL"
  curl -fsS "$MYSQL_WAKER_URL" || echo "⚠️ Waker call failed, continuing anyway"
  
  WAIT_TIME="${MYSQL_WAKER_WAIT:-5}"
  echo "⏳ Waiting ${WAIT_TIME}s for DB to wake"
  sleep "$WAIT_TIME"
else
  echo "ℹ️ MYSQL_WAKER_URL not set, skipping wake step"
fi

echo "🚀 Starting Adminer"
php -S 0.0.0.0:8080 -t /var/www/html
