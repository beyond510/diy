#!/usr/bin/env bash
##############################安装npm##############################
#node_modules路径
nodePath="/jd/scripts/node_modules"
echo -e "开始安装npm"
#判断panel文件夹是否存在，若不存在，复制/jd目录内
if [[ ! -d "$nodePath" ]]; then
 echo "npm不存在."
 npm install || npm install --registry=https://registry.npm.taobao.org
 echo "npm已经装完\n"
else
 echo "npm存在.\n"
fi

##############################创建auth##############################
echo -e "开始创建auth"
autoPath="/jd/config/auth.json"
if [[ ! -f "$autoPath" ]]; then
  echo "auth.json文件不存在"
  wget -q --no-check-certificate https://ghproxy.com/https://raw.githubusercontent.com/gys619/diy/main/auth.json -O auth.json
  echo "auth.json文件创建成功\n"
else
 echo "auth.json还存在.\n"
fi
##############################安装面板 首先要把panel复制到config文件夹下##############################
#panel路径
echo -e "开始安装面板 "
PanelPath="/jd/panel"
#判断panel文件夹是否存在，若不存在，复制/jd目录内
if [[ ! -d "$PanelPath" ]]; then
 echo "控制面板已和谐，重新拷贝面板目录..\n."
 cp -r /jd/config/panel /jd/
 echo "启动控制面板挂载程序...\n"
 pm2 stop /jd/panel/server.js
 pm2 start /jd/panel/server.js
else
 echo "控制面板还存在.\n"
fi

############################## 恢复HomePage ##############################
echo -e "开始恢复homePage "
##panelDir=${ShellDir}/panel/public
cd /jd/panel/public
wget -q --no-check-certificate https://ghproxy.com/https://raw.githubusercontent.com/gys619/diy/main/home.html -O home.html.new
if [ $? -eq 0 ]; then
  mv -f home.html.new home.html
  echo -e "恢复 HomePage 成功!!!\n"
else
  rm -rf home.html.new
  echo -e "恢复 HomePage 失败...\n"
fi
############################## 更新diy ##############################
cd /jd/config
echo -e "开始更新 diy.sh "
wget -q --no-check-certificate https://ghproxy.com/https://raw.githubusercontent.com/gys619/diy/main/v4diy.sh -O diy.sh.new
if [ $? -eq 0 ]; then
  mv -f diy.sh.new diy.sh
  echo -e "更新 diy.sh 成功!!!"
else
  rm -rf diy.sh.new
  echo -e "更新 diy.sh 失败...\n"
fi
