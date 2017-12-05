# mongo 
## 获取images:

```shell
docker pull registry.cn-beijing.aliyuncs.com/wzx/mongo:[版本号3.0.15]
```

## 运行：
- 创建 `数据` 目录

```shell
mkdir -p /data1/mongo_db
```


- 根据镜像启动容器

```shell
docker run -d \
--name mongo \
-v /data1/mongo_data:/data/db \
registry.cn-beijing.aliyuncs.com/wzx/mongo:[版本号3.0.15]
```

## 进入容器的mongo命令行：

```shell
docker exec -it mongo mongo admin
```

搞定，如图：
![](http://ovqt5rbeh.bkt.clouddn.com/markdown/1512443162424.png)

## TODO
- 配置mongo auth
- 其他配置 （[详见官网](https://hub.docker.com/_/mongo/)）