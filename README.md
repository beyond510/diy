# 修改的[Hydrahail-Johnso大佬](https://github.com/Hydrahail-Johnson/diy_scripts)的DIY脚本
# 仅仅自己瞎玩
# [docker换home.html](./backUp/home.md)
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
## [v3命令](./backUp/v3.md)
## [v4命令](./backUp/v4.md)
## 感谢

感谢以下大佬们的无偿分享，让我们才能使用这么多的免费脚本，在此表示感谢。

[lxk0301](https://gitee.com/lxk0301/jd_docker)[Tartarus2014](https://github.com/Tartarus2014/)，[i-chenzhe](https://github.com/i-chenzhe/)，[whyour](https://github.com/whyour/)，[moposmall](https://github.com/moposmall/)，[qq34347476](https://github.com/qq34347476/)，[ZCY01](https://github.com/ZCY01/)，[cui521](https://github.com/cui521/)

请关注原作者的github，并打赏原作者支持作者不断更新。
## 正版镜像
[小e维护v3](https://github.com/dockere/jd-base)，[whyour大佬的qinglong](https://github.com/whyour/qinglong)，[E大的nevinee/jd:v4]()

### 请不要把lxk仓库京东脚本用在淘宝、咸鱼、拼多多等平台进行商业谋利，请认真阅读[Readme特别说明](https://gitee.com/lxk0301/jd_docker/blob/master/README.md#特别说明)，谢谢配合。否则我会删库跑路。
#### 后期脚本会逐步进行加密后发布(原因:部分人偷盗脚本,然后进行改脚本内置邀请码后再次宣传修改后的)
##### 2021.02.27日更新，目前通知多账号内容放到一块通知(即：多账号只推送一次)，如账号过多导致通知失败的（原因：账号多通知内容太大），自行多分容器部署。
##### 2021.02.21日，[jd_scripts](https://gitee.com/lxk0301/jd_scripts)仓库被迫私有 [详见一](./icon/photo.png)，[详见二](./icon/photo.jpeg)，[最新镜像](https://hub.docker.com/r/lxk0301/jd_scripts) (国内其他什么阿里云的源以及网易云的源目前都不是最新的)

## 特别声明: 

* 本仓库发布的Script项目中涉及的任何解锁和解密分析脚本，仅用于测试和学习研究，禁止用于商业用途，不能保证其合法性，准确性，完整性和有效性，请根据情况自行判断.

* 本项目内所有资源文件，禁止任何公众号、自媒体进行任何形式的转载、发布。

* lxk0301对任何脚本问题概不负责，包括但不限于由任何脚本错误导致的任何损失或损害.

* 间接使用脚本的任何用户，包括但不限于建立VPS或在某些行为违反国家/地区法律或相关法规的情况下进行传播, lxk0301 对于由此引起的任何隐私泄漏或其他后果概不负责.

* 请勿将Script项目的任何内容用于商业或非法目的，否则后果自负.

* 如果任何单位或个人认为该项目的脚本可能涉嫌侵犯其权利，则应及时通知并提供身份证明，所有权证明，我们将在收到认证文件后删除相关脚本.

* 任何以任何方式查看此项目的人或直接或间接使用该Script项目的任何脚本的使用者都应仔细阅读此声明。lxk0301 保留随时更改或补充此免责声明的权利。一旦使用并复制了任何相关脚本或Script项目的规则，则视为您已接受此免责声明.

 **您必须在下载后的24小时内从计算机或手机中完全删除以上内容.**  </br>
> ***您使用或者复制了本仓库且本人制作的任何脚本，则视为`已接受`此声明，请仔细阅读*** 


## 邀请码互助


- [邀请码使用规范](./backUP/githubAction.md#互助码类环境变量)(仅限云端)

## 食用方法

### 1. Docker

- [部署方法](./docker)

- [环境变量集合](./backUp/githubAction.md)
 
- 获取京东cookie教程可参考：
  
  + [浏览器获取京东cookie教程](./backUp/GetJdCookie.md)
    
  + [插件获取京东cookie教程](./backUp/GetJdCookie2.md)
    
  + 京东APP扫码获取cookie(执行`node getJDCookie.js`即可)

## 赞赏码(开发维护不易,请赏杯茶水费)
lxk大佬的码
<div align=center><img width="250" height="250" src="https://gitee.com/lxk0301/jd_docker/raw/master/icon/thanks.jpg"/></div>

