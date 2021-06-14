# 2021

## catalog

| Title                                                        | empty                         | Week    | 序号 |
| ------------------------------------------------------------ | ----------------------------- | ------- | ---- |
| [3 Tools to Track and Visualize the Execution of your Python Code](https://towardsdatascience.com/3-tools-to-track-and-visualize-the-execution-of-your-python-code-666a153e435e) |                               | ✅week19 | 001  |
| [A Beginner-Friendly Introduction to Containers, VMs and Docker](https://medium.com/free-code-camp/a-beginner-friendly-introduction-to-containers-vms-and-docker-79a9e3e119b) | 目前阅读速度：英语母语的 1/12 | ✅week20 | 002  |
| [docker-getting started](https://docs.docker.com/get-started/) |                               | ✅week21 | 003  |
| [Part 2: Sample application](https://docs.docker.com/get-started/02_our_app/) |                               | ✅week23 | 004  |
| [Part3: Update the application](https://docs.docker.com/get-started/03_updating_app/) | week24(30min)--005            | ✅week24 | 005  |



## ✅week19(1h 50min)--001

---

### [3 Tools to Track and Visualize the Execution of your Python Code](https://towardsdatascience.com/3-tools-to-track-and-visualize-the-execution-of-your-python-code-666a153e435e)

### overview

1. motivation
   1. optimize error log output format to easy to understande
   2. combinations(p,r)
      1. [api url](https://docs.python.org/3/library/itertools.html)
      2. 排列组合
      3. `combinations([2,1,0], 2)` returns `[(2, 1), (2, 0), (1, 0)]` .

### Tools

#### 1. Loguru — Print Better Exceptions - accurate positioning

> pip3 install loguru

- use in main function by annotation
  - `@logger.catch`

![avator](pic/123.png)

#### 2. snoop - help you understanding proj more clearly

> pip3 install snoop

![avator](pic/2.png)

#### 3. heartrate - Visualize the Execution of a Python Program in Real-Tim

> pip3 install heartrate

`The longer bars mean more hits`

`lighter colors mean more recent`

![avator](pic/3.png)

### conclution

Awesome tools for debugging!



## ✅week20(1h 50min)--002

[A Beginner-Friendly Introduction to Containers, VMs and Docker](https://medium.com/free-code-camp/a-beginner-friendly-introduction-to-containers-vms-and-docker-79a9e3e119b)

![avator](pic/003.png)

![avator](pic/004.png)

![avator](pic/005.png)

![avator](pic/006.png)

![avator](pic/007.png)

- references
  - [什么是Hypervisor?](https://www.dell.com/community/%E5%85%A5%E9%97%A8%E7%BA%A7%E5%92%8C%E4%B8%AD%E7%AB%AF/%E5%88%86%E4%BA%AB-%E4%BB%80%E4%B9%88%E6%98%AFHypervisor/td-p/6904385)



**conclusion**

文章主要阐述了 虚拟机 和 docker 容器 的运行机制，以及原理上的不同，还有各自的优势劣势，讲的非常清晰明了，有需要的同学可以好好看一看，对以后使用 docker 一定也有更好的认识和深入。





## ✅week21(30min)--003

根据指导 学习 docker

安装了 docker app

使用了 docker 的一些命令





## ✅week23(48min)--004

案例学习使用

> https://docs.docker.com/get-started/02_our_app/

#### overview

1. 获取app
2. 制作镜像
   1. 制作 dockerfile 文件
   2.  docker build -t getting-started .
3. 启动镜像

---



```bash
 docker build -t getting-started .
```

> 编译
>
> -t 就是为了 给 那个镜像 取一个 人类看得懂的名字，getting-started 
>
> . 是有了这个 . 之后，系统运行之后就会在 当前目录下自动去 寻找 Dockerfile 这个文件

输入这个 命令的时候要先 打开 docker

不然报错

``` bash
ERRO[0000] Can't close tar writer: io: read/write on closed pipe 
```



启动镜像 并且映射 现实主机端口

```
 docker run -dp 3000:3000 getting-started
```

> -p 指的是 端口 指的是本机的 host 端口
>
> 第一个 3000 是本机端口
>
> 第二个 是 容器的端口
>
> 也就是 把 本机端口映射到 容器的 端口上的意思

detection - 检测 

✅detached - 分离的







## ✅docker-Update the application

> week24(30min)--005

### overview

1. 停止 并且删除 原来的容器
2. 重新建立 修改后的容器
3. 启动 修改后的新容器

### [Update the application](https://docs.docker.com/get-started/03_updating_app/)

```bash
docker run -dp 3000:3000 getting-started
```

启动的时候 这个报错，就说明后台可能启动了一个 容器 占用了 主机的 3000 端口

```
docker: Error response from daemon: driver failed programming external connectivity on endpoint unruffled_pasteur (2f96f0b172efcd637669975629b6d64e0cf546853b3c462c0a05c346a54fa583): Bind for 0.0.0.0:3000 failed: port is already allocated.
```





```bash
Get the ID of the container by using the docker ps command.
> docker ps


Use the docker stop command to stop the container.
 # Swap out <the-container-id> with the ID from docker ps
> docker stop <the-container-id>


「停止」后 移除容器
> docker rm <the-container-id>

-f force, 强制停止移除容器，不需要先「停止」
> docker rm -f <the-container-id>
```

删除 容器 也可以用 docker app 的 dashboard 删除



### Recap[🔗](https://docs.docker.com/get-started/03_updating_app/#recap) [重新回顾]

While we were able to build an update, there were two things you might have noticed:

- ` All of the 「existing items」 in our todo list 「are gone」!`   That’s not a very good app! We’ll talk about that shortly.
- There were *a lot* of steps involved for such a small change. In an upcoming section, we’ll talk about how to see code updates without needing to rebuild and start a new container every time we make a change.

Before talking about persistence, we’ll quickly see how to share these images with others.

