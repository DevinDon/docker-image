# IInfinity Nginx

# Build

**Command:** `sh build.sh`

# Config

*Nginx config files.*

## General

*Config anything you want.*

**Location:** `/etc/nginx/conf.d`

## HTTP

*HTTP services.*

**Location:** `/etc/nginx/http.d`

### Cluster

*Cluster define.*

**Location:** `/etc/nginx/http.d/cluster.conf`

**Example:**

```conf
# Balanced load cluster with IP hash
upstream app-cluster {
  server app-server:8080;
  # server app-server:8081;
  # server app-server:8082;
  ip_hash;
}
```

### HTTP

*HTTP servers.*

**Location:** `/etc/nginx/http.d/http.conf`

**Example:**

```conf
# HTTP Server, choose one to use
server {

  listen 80;
  listen [::]:80;
  server_name _;

  set $realip $remote_addr;
  if ($http_x_forwarded_for ~ ^(\d+\.\d+\.\d+\.\d+)) {
    set $realip $1;
  }
  if ($http_x_real_ip ~* ^\d+\.\d+\.\d+\.\d+) {
    set $realip $http_x_real_ip;
  }
  proxy_set_header X-Real-IP $realip;
  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

  location ^~ / {
    try_files $uri $uri/ /index.html =404;
  }

  # location ^~ /api/ {
  #   proxy_pass http://app-cluster/;
  # }

}

# # HTTP to HTTPS, choose one to use
# server {

#   listen 80;
#   listen [::]:80;
#   server_name _;

#   return 301 https://$host$request_uri;

# }
```

### HTTPS

*HTTPS servers.*

**Location:** `/etc/nginx/http.d/http.conf`

**Example:**

```conf
# HTTPS Server
server {

  listen 443 ssl http2;
  listen [::]:443 ssl http2;
  server_name _;

  ssl_protocols TLSv1 TLSv1.1 TLSv1.2 TLSv1.3;
  ssl_ciphers TLS13-AES-256-GCM-SHA384:TLS13-CHACHA20-POLY1305-SHA256:TLS13-AES-128-GCM-SHA256:TLS13-AES-128-CCM-8-SHA256:TLS13-AES-128-CCM-SHA256:EECDH+CHACHA20:EECDH+CHACHA20-draft:EECDH+ECDSA+AES128:EECDH+aRSA+AES128:RSA+AES128:EECDH+ECDSA+AES256:EECDH+aRSA+AES256:RSA+AES256:EECDH+ECDSA+3DES:EECDH+aRSA+3DES:RSA+3DES:!MD5;
  ssl_certificate /etc/nginx/cert/website.crt;
  ssl_certificate_key /etc/nginx/cert/website.key;

  set $realip $remote_addr;
  if ($http_x_forwarded_for ~ ^(\d+\.\d+\.\d+\.\d+)) {
    set $realip $1;
  }
  if ($http_x_real_ip ~* ^\d+\.\d+\.\d+\.\d+) {
    set $realip $http_x_real_ip;
  }
  proxy_set_header X-Real-IP $realip;
  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

  # location ~ .*/proxy_server/.* {
  #   proxy_cache cachei;
  #   proxy_cache_revalidate on;
  #   proxy_cache_min_uses 5;
  #   proxy_cache_lock on;
  #   proxy_cache_lock_timeout 5s;
  #   proxy_cache_use_stale updating error timeout invalid_header http_500 http_502;
  #   proxy_http_version 1.1;
  # }

  location ^~ / {
    try_files $uri $uri/ /index.html =404;
  }

  # location ^~ /api/ {
  #   proxy_pass http://app-cluster/;
  # }

}
```

## Stream

*Stream services.*

**Location:** `/etc/nginx/stream.d`

### Cluster

*Cluster define.`

**Location:** `/etc/nginx/stream.d/cluster.conf`

**Example:**

```conf
Balanced load cluster with IP hash
upstream app-cluster {
  server app-server-1:8080;
  server app-server-1:8081;
  server app-server-2:8080;
  ip_hash;
}
```

### Database

*Database server.*

**Location:** `/etc/nginx/stream.d/database.conf`

**Example:**

```conf
# MySQL 3306, only for dev
server {
  listen 3306;
  proxy_pass app-mysql:3306;
}

PostgreSQL, only for dev
server {
  listen 5432;
  proxy_pass app-postgres:5432;
}
```

### Redis

*Redis server.*

**Location:** `/etc/nginx/stream.d/redis.conf`

**Example:**

```conf
# Redis 6379, only for dev
server {
  listen 6379;
  proxy_pass app-redis:6379;
}
```
