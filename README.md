# 修改的[Hydrahail-Johnso大佬](https://github.com/Hydrahail-Johnson/diy_scripts)的DIY脚本
# 仅仅自己瞎玩
# docker换home.html
docker inspect 容器名  #查看某个容器的详细信息
找到 
```
"GraphDriver": {
            "Data": {
                "LowerDir": 
                xxxxxxxxxxx自己摘取路径，如下
```
```
/usr/local/lighthouse/softwares/btpanel/server/docker/overlay2/xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```
<div align=center><img width="978" height="282" src="https://user-images.githubusercontent.com/59304891/112744340-e520c900-8fd1-11eb-8cad-8271d8153e1d.png"/></div>
(https://user-images.githubusercontent.com/59304891/112744340-e520c900-8fd1-11eb-8cad-8271d8153e1d.png)

## docker
```
docker run -dit \
   -v /home/jd/config:/jd/config \#配置
   -v /home/jd/log:/jd/log \#日志
   -v /home/jd/scripts:/jd/scripts \#放lxk0301大佬的js脚本
   -v /home/jd/own:/jd/own \# own脚本目录，如需使用，建议映射
   -p 5678:5678 \
   -e ENABLE_TTYD=true \ # 是否在启动容器时自动启动网页终端，当ENABLE_WEB_PANEL=true时此项设置才生效
   -e ENABLE_HANGUP=true \ # 是否在启动容器时自动启动控制面板
   -e ENABLE_WEB_PANEL=true \# 是否在启动容器时自动启动挂机程序
   --name jd \
   --hostname jd \#主机名
   --restart always \
   nevinee/jd:v4
```
## 命令
jtask mtask otask链接的都是同一个脚本，m=my，o=own，j=jd。三者区分仅用在crontab.list中，以区别不同类型任务，手动运行直接jtask即可。
```
docker exec -it jd jtask   # 运行jd_scripts脚本，类似于v3版本的jd命令
docker exec -it jd otask   # 运行own脚本，详见配置文件说明
docker exec -it jd mtask   # 运行你自己的脚本
docker exec -it jd jlog    # 删除旧日志，类似于v3版本的rm_log命令
docker exec -it jd jup     # 更新所有脚本，包括jd_scripts脚本和own脚本，自动增删定时任务，类似于v3版本的git_pull命令，但更强大
docker exec -it jd jcode   # 导出所有互助码，可以准确识别没有码的ID，比v3版本的export_sharecode命令更智能
docker exec -it jd jcsv    # 记录豆豆变化情况，在log目录下存为csv文件
```
## 感谢

感谢以下大佬们的无偿分享，让我们才能使用这么多的免费脚本，在此表示感谢。

[lxk0301](https://gitee.com/lxk0301/jd_docker)[Tartarus2014](https://github.com/Tartarus2014/)，[i-chenzhe](https://github.com/i-chenzhe/)，[whyour](https://github.com/whyour/)，[moposmall](https://github.com/moposmall/)，[qq34347476](https://github.com/qq34347476/)，[ZCY01](https://github.com/ZCY01/)，[cui521](https://github.com/cui521/)

请关注原作者的github，并打赏原作者支持作者不断更新。
## 正版镜像
[小e维护v3](https://github.com/dockere/jd-base)[whyour大佬的qinglong](https://github.com/whyour/qinglong)[E大的nevinee/jd:v4]()
