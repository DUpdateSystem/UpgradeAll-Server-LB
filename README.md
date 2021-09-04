# UpgradeAll Server LB

UpgradeAll 服务端负载均衡

该项目旨在为多个 [UpgradeAll Server](https://github.com/DUpdateSystem/Server) 提供更好的负载均衡支持

# 如何运行

> 请预先安装 `Docker`
 
运行以下命令启动容器

```
docker run --name upas-lb -d --restart always -p <you port>:80 -e 'serverName=<you domain or ip>' -v /etc/localtime:/etc/localtime -v <you Dir>/cache:/cache -v <you Dir>/upalb-conf:/etc/nginx/conf.d banbendalao/upas-lb
```

然后运行 `nano <you Dir>/upalb-conf/upstream.conf` 编辑上游文件，编辑完毕后执行 `docker exec upas-lb nginx -s reload` 重载配置文件

# 自定义

`<you Dir>/upalb-conf/upstream.conf`：配置上游服务器

`<you Dir>/upalb-conf/bypass.conf`：配置分流以及缓存逻辑，可以根据实际情况自定义