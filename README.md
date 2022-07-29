# clock-in-dockerfile

一份简单的docker镜像打包教程，供有需要的人使用

一行代码跑起来，配置ACR自动打包

### How to Use?

如果你是懒狗，有人已经帮你打包好了一份镜像，改一下下面这行代码就能跑

~~~bash
docker run --name clock-in-syf -e account="319010xxxx" -e password="cxz666" -d  registry.cn-hangzhou.aliyuncs.com/raynor/clock-in
~~~

Ok 下班



如果你希望自己编译

- 首先你需要安装一个docker，具体版本不重要，安装教程请参考https://dockerdocs.cn/get-docker/index.html

- git clone 一份本仓库到本地

- 使用如下命令进行打包，当然你可以先看看main.py自己改改

  ~~~
  cd clock-in
  docker build . -t clock-in
  ~~~

- 把它run起来

  ~~~bash
  docker run --name clock-in-syf -e account="319010xxxx" -e password="cxz666" -d  clock-in
  ~~~



docker ps看一眼跑起来没，docker logs看一眼日志即可



如果发现需要更新脚本，请看看提交历史有没有改过，如果改过请重新拉取一遍镜像即可，如果没改请cc俺改