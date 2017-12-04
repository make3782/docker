# gitLab docker

## 获取images:
```sh
docker pull registry.cn-beijing.aliyuncs.com/wzx/gitlab:[版本号]
```

## 运行images:
- 创建 `数据` 挂载目录
```sh
mkdir -p /data/gitlab/config
mkdir -p /data/gitlab/logs
mkdir -p /data/gitlab/data
```
- 根据镜像启动容器
```sh
    docker run --detach \
    --hostname gitlab.test.com \
    --publish 8081:80 \
    --publish 22:22 \
    --name gitlab \
    --restart always \
    --volume /data/gitlab/config:/etc/gitlab \
    --volume /data/gitlab/logs:/var/log/gitlab \
    --volume /data/gitlab/data:/var/opt/gitlab \
    registry.cn-beijing.aliyuncs.com/wzx/gitlab:[版本号]
```

## 进入容器查看：
```sh
docker exec -it -uroot gitlab /bin/bash
```
