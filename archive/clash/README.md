# Clash

Clash.

## Config IPTables

```shell
iptables -t nat -N clash # 创建 Clash 链路
iptables -t nat -N clash_dns # 创建 Clash DNS 链路

iptables -t nat -A PREROUTING -p tcp --dport 53 -d 198.19.0.0/24 -j clash_dns
iptables -t nat -A PREROUTING -p udp --dport 53 -d 198.19.0.0/24 -j clash_dns
iptables -t nat -A PREROUTING -p tcp -j clash

# 192.168.0.254 为旁路由地址，即 Clash DNS 服务器
iptables -t nat -A clash_dns -p udp --dport 53 -d 198.19.0.0/24 -j DNAT --to-destination 192.168.0.254:53
iptables -t nat -A clash_dns -p tcp --dport 53 -d 198.19.0.0/24 -j DNAT --to-destination 192.168.0.254:53

# 本地地址回环
iptables -t nat -A clash -d 0.0.0.0/8 -j RETURN
iptables -t nat -A clash -d 10.0.0.0/8 -j RETURN
iptables -t nat -A clash -d 127.0.0.0/8 -j RETURN
iptables -t nat -A clash -d 169.254.0.0/16 -j RETURN
iptables -t nat -A clash -d 172.16.0.0/12 -j RETURN
iptables -t nat -A clash -d 192.168.0.0/16 -j RETURN
iptables -t nat -A clash -d 224.0.0.0/4 -j RETURN
iptables -t nat -A clash -d 240.0.0.0/4 -j RETURN

# 局域网流量转发至 Clash 7892 redir 端口
iptables -t nat -A clash -p tcp -j REDIRECT --to-ports 7892
```

## Run Command

### Run container

Run container in raspberry.

```shell
docker run \
  --net=host \
  --name clash \
  --restart always \
  iinfinity/clash:arm64
```

### Run with Docker Stack

See the docker stack yaml config.

```shell
docker stack deploy -c docker-compose.yml proxy
```
