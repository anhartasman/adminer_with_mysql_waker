# Adminer with MySQL Waker Support

A drop-in Adminer Docker image that optionally wakes a serverless MySQL
instance before starting.

## Environment Variables

- `MYSQL_WAKER_URL` (optional)
  - URL to call before Adminer starts
- `MYSQL_WAKER_WAIT` (optional, default: 5)
  - Seconds to wait after calling the waker

If `MYSQL_WAKER_URL` is not set, Adminer starts normally.
