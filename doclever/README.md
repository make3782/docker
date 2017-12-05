# doclever
## 获取images：

```shell
docker pull registry.cn-beijing.aliyuncs.com/wzx/doclever:[版本号5.0.0]
```

## 运行：

```shell
docker run -it -d --name doclever -p 10000:10000 \
--link mongo:mongo \
-e DB_HOST=mongodb://mongo:27017/DOClever \
-e PORT=10000 \
-e DB_FILE=/root/DOClever/data/file \
-e DB_IMG=/root/DOClever/data/img \
-e DB_TEMP=/root/DOClever/data/tmp \
-v /data1/DOClever/file:/root/DOClever/data/file \
-v /data1/DOClever/img:/root/DOClever/data/img \
-v /data1/DOClever/tmp:/root/DOClever/data/tmp \
registry.cn-beijing.aliyuncs.com/wzx/doclever:[版本号5.0.0]
```

* 端口号设置为10000，注意修改
* mongodb使用的链接的其他源，非容器内部自带
* 挂载目录自行设置
* [DOClever官网](http://doclever.cn/) &&   [GITHUB](https://github.com/sx1989827/DOClever)

