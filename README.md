## docker
```
docker run -dit \
   -v /home/jd/config:/jd/config \#配置
   -v /home/jd/log:/jd/log \#日志
   -v /home/jd/scripts:/jd/scripts \#放lxk0301大佬的js脚本
   -v /home/jd/own:/jd/own \# own脚本目录，如需使用，建议映射
   -p 5678:5678 \ 映射端口
   -e ENABLE_TTYD=true \ # 是否在启动容器时自动启动网页终端，当ENABLE_WEB_PANEL=true时此项设置才生效
   -e ENABLE_HANGUP=true \ # 是否在启动容器时自动启动控制面板
   -e ENABLE_WEB_PANEL=true \# 是否在启动容器时自动启动挂机程序
   --name jd \ #容器名
   --hostname jd \#主机名
   --restart always \
   nevinee/jd:v4
```
## 赞赏码(LXK大佬开发维护不易)
<div align=center><img width="250" height="250" src="https://gitee.com/lxk0301/jd_docker/raw/master/icon/thanks.jpg"/></div>

