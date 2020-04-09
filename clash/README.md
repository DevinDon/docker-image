# Clash

Clash.

## Run Command

### Create MACVlan network

```shell
docker network create \
  -d macvlan \
  --subnet=192.168.0.0/24 \
  --gateway=192.168.0.1 \
  -o parent=eth0 \
  macnet
```

### Run container

```shell
docker run -d \
  --name clash \
  -v ~/.config/clash:/clash/config \
  --network macnet \
  --ip 192.168.0.254 \
  --privileged \
  --restart always \
  iinfinity/clash
```
