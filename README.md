# Dockerfile 演示
## 整体流程

> 基于 Docker 多阶段构建(multistage builds)。

1. 第一阶段: 对 main.go 进行编译产出 app 可执行文件。
2. 第二阶段: 复制 app 文件到 scratch 镜像中。

## 构建
```sh
cd docker-tutorial
docker build -t docker-tutorial:v1 .
```

## 运行
```sh
docker run -p 8080:80 docker-tutorial:v1
```

> 参数解释

-p: 用来将宿主机的端口和容器的端口和映射。

8080: 宿主机端口，既访问地址中的端口号，8080 表示访问地址为: http://localhost:8080 或者 http://host-ip:8080 。

80: 容器里程序监听的端口号。
