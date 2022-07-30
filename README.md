# clock-in-dockerfile

一份简单的docker镜像打包教程，供有需要的人使用

一行代码跑起来，配置[阿里云ACR](https://www.aliyun.com/product/acr)自动打包

### How to Use?

如果你是懒狗，有人已经帮你打包好了一份镜像，改一下下面这行代码就能跑
把下方 `--name clock-in`改成`--name [你喜欢的名字]`  `account=`改成你的学号 `password=`改成你的密码 即可

~~~bash
docker run --name clock-in -e account="319010xxxx" -e password="cxz666" -d  registry.cn-hangzhou.aliyuncs.com/raynor/clock-in
~~~

Ok 下班



如果你希望自己编译

- 首先你需要安装一个docker，具体版本不重要，安装教程请参考https://dockerdocs.cn/get-docker/index.html

- git clone 一份本仓库到本地

- 使用如下命令进行打包，当然你可以先看看main.py自己改改

  ~~~bash
  git clone https://github.com/cxz66666/clock-in.git
  cd clock-in
  docker build . -t clock-in   #clock-in可以改成你喜欢的名字 
  ~~~

- 把它run起来

  ~~~bash
  docker run --name clock-in -e account="319010xxxx" -e password="cxz666" -d  clock-in  # 这里的clock-in改成上面build时候`-t`后面的名字
  ~~~



docker ps看一眼跑起来没，docker logs clock-in看一眼日志即可



如果发现需要更新脚本，请看看提交历史有没有改过，如果改过请重新拉取一遍镜像即可，如果没改请cc俺改
