#!/usr/bin/env bash

##############################################################################
#                                                                            #
#                          自动拉取各个作者库内指定脚本
#                   把此diy.sh放入config即可,会自动同步最新脚本
#                    如有好用的脚本或者脚本更新不及时请@gys619
#                              2021年3月28日23:36
#                                                                            #
##############################################################################

############################## 作者名称 ##############################
author_list="
Tartarus2014
i-chenzhe
whyour
moposmall
qq34347476
ZCY01
cui521
monk-coder
"
######################################################################

############################## 维护:Tartarus2014 ##############################
# 库地址:https://github.com/Tartarus2014/Script
scripts_base_url_1=https://ghproxy.com/https://raw.githubusercontent.com/Tartarus2014/Script/master/
my_scripts_list_1="

"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

############################## 维护:i-chenzhe ##############################
# 库地址:https://github.com/i-chenzhe/qx
#scripts_base_url_2=https://ghproxy.com/https://raw.githubusercontent.com/i-chenzhe/qx/main/
scripts_base_url_2=https://ghproxy.com/https://raw.githubusercontent.com/gys619/diy/main/scripts/
my_scripts_list_2="
jd_entertainment.js
jd_fanslove.js
jd_shake.js
z_marketLottery.js
z_unionPoster.js
z_wish.js
z_lenovo.js
z_mother_jump.js
z_mgold.js
z_super5g.js
z_city_cash.js
z_oneplus.js
z_grassy.js
z_sister.js
z_xmf.js
"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

############################## 维护:whyour ##############################
# 库地址:https://github.com/whyour/hundun/tree/master/quanx
scripts_base_url_3=https://ghproxy.com/https://raw.githubusercontent.com/whyour/hundun/master/quanx/
my_scripts_list_3="
jd_zjd_tuan.js

"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

############################## 维护:moposmall ##############################
# 库地址:https://github.com/moposmall/Script/tree/main/Me
scripts_base_url_4=https://ghproxy.com/https://raw.githubusercontent.com/moposmall/Script/main/Me/
my_scripts_list_4="
jx_cfd_exchange.js

"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

############################## 维护:qq34347476 ##############################
# 库地址:https://github.com/qq34347476/js_script
scripts_base_url_5=https://ghproxy.com/https://raw.githubusercontent.com/qq34347476/js_script/master/scripts/
my_scripts_list_5="
format_share_jd_code.js

"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

############################## 维护:ZCY01 ##############################
# 库地址:https://github.com/ZCY01/daily_scripts/tree/main/jd
scripts_base_url_6=https://ghproxy.com/https://raw.githubusercontent.com/ZCY01/daily_scripts/main/jd/
my_scripts_list_6="
jd_priceProtect.js

"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

############################## 维护:cui521 ##############################
# 库地址:https://github.com/Hydrahail-Johnson/diy_scripts
scripts_base_url_7=https://ghproxy.com/https://raw.githubusercontent.com/cui521/jdqd/main/
my_scripts_list_7="
DIY_shopsign.js

"
############################## 维护:和尚monk-coder ##############################
# 库地址:https://github.com/Hydrahail-Johnson/diy_scripts
scripts_base_url_8=https://ghproxy.com/https://raw.githubusercontent.com/monk-coder/dust/dust/car/
my_scripts_list_8="
monk_shop_add_to_car.js
"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

############################ 是否强制替换脚本的定时 ############################
# 设为"true"时强制替换脚本的定时，设为"false"则不替换脚本的定时...
Enablerenew="false"

############################## 随机函数 ##############################
rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(cat /proc/sys/kernel/random/uuid | cksum | awk -F ' ' '{print $1}')
    echo $(($num%$max+$min))
}

############################## 手动删除失效脚本 ##############################
cd $ScriptsDir
# rm -rf qq34347476_getShareCode_format.js

############################## 开始下载脚本 ##############################
index=1
for author in $author_list
do
  echo -e "######################### 开始下载 $author 的脚本 #########################"
  # 下载my_scripts_list中的每个js文件，重命名增加前缀"作者昵称_"，增加后缀".new"
  eval scripts_list=\$my_scripts_list_${index}
  eval url_list=\$scripts_base_url_${index}
  for js in $scripts_list
  do
    eval url=$url_list$js
    eval name="/jd/own/raw""/"$js
    echo $name
    wget -q --no-check-certificate $url -O $name.new

    # 如果上一步下载没问题，才去掉后缀".new"，如果上一步下载有问题，就保留之前正常下载的版本
    if [ $? -eq 0 ]; then
      mv -f $name.new $name
      echo -e "$name 更新成功!!!"
	  #croname=`echo "$name"|awk -F\. '{print $1}'`
	  script_date=`cat  $name|grep "http"|awk '{if($1~/^[0-59]/) print $1,$2,$3,$4,$5}'|sort |uniq|head -n 1`
	  [ -z "${script_date}" ] && script_date=`cat  $name|grep -Eo "([0-9]+|\*) ([0-9]+|\*) ([0-9]+|\*) ([0-9]+|\*) ([0-9]+|\*)"|sort |uniq|head -n 1`
	  if [ -z "${script_date}" ]; then
	    cron_min=$(rand 1 59)
	    cron_hour=$(rand 7 9)
      [ $(grep -c "$name" ${ConfigDir}/jd/config/crontab.list) -eq 0 ] && sed -i "21i${cron_min} ${cron_hour} * * * otask $croname"  ${ConfigDir}/jd/config/crontab.list #cui521的
	  else
	    check_existing_cron=`grep -c "$name" ${ConfigDir}/jd/config/crontab.list`
	    echo $name "开始添加定时..."
	    if [ "${check_existing_cron}" -eq 0 ]; then
	      sed -i "21i${script_date} otask $name"  ${ConfigDir}/jd/config/crontab.list
	      echo -e "$name 成功添加定时!!!\n"
	    else
	      if [ "${Enablerenew}" = "true" ]; then
	      	echo -e "检测到"$name"定时已存在开始替换...\n"
	        grep -v "$name" ${ConfigDir}/jd/config/crontab.list > output.txt
		      mv -f output.txt ${ConfigDir}/jd/config/crontab.list
		      sed -i "21i${script_date} otask $name"  ${ConfigDir}/jd/config/crontab.list
	        echo -e "替换"$name"定时成功!!!"
	      else
	        echo -e "$name 存在定时,已选择不替换...\n"
	      fi
	    fi
	  fi
    else
      [ -f $name.new ] && rm -f $name.new
      echo -e "$name 脚本失效,已删除脚本...\n"
      #croname=`echo "$name"|awk -F\. '{print $1}'`
      check_existing_cron=`grep -c "$name" ${ConfigDir}/jd/config/crontab.list`
      if [ "${check_existing_cron}" -ne 0 ]; then
        grep -v "$name" ${ConfigDir}/jd/config/crontab.list > output.txt
        mv -f output.txt ${ConfigDir}/jd/config/crontab.list
        echo -e "检测到"$name"残留文件..."
        rm -f ${name:-default}
        echo -e "开始清理"$name"残留文件..."
        cd $LogDir
        rm -rf ${name:-default}
        echo -e "清理"$name"残留文件完成!!!\n"
        cd $ScriptsDir
      fi
    fi
  done
  index=$[$index+1]
done

echo -e "开始安装npm "
#node_modules路径
nodePath="/jd/scripts/node_modules"
#判断panel文件夹是否存在，若不存在，复制/jd目录内
if [[ ! -d "$nodePath" ]]; then
 echo "npm不存在."
 npm install || npm install --registry=https://registry.npm.taobao.org
 echo "npm已经装完"
else
 echo "npm存在."
fi

echo -e "开始创建auto.json文件 "
###创建auto.json文件。没有这个文件无法登录进面板
dirAndName="/jd/config/auth.json"
if [[ ! -d "$dirAndName" ]]; then
 mkdir $dirAndName
 echo "创建文件成功"
 echo "{"user":"admin","password":"adminadmin"}" >>auto.json
else
 echo "文件已经存在"
fi

echo -e "启动面板 "
#panel路径#######需要把panel复制到config目录下
PanelPath="/jd/panel"
#判断panel文件夹是否存在，若不存在，复制/jd目录内
if [[ ! -d "$PanelPath" ]]; then
 echo "控制面板已和谐，重新拷贝面板目录..."
 cp -r /jd/config/panel /jd/
 echo "启动控制面板挂载程序..."
 pm2 stop /jd/panel/server.js   #停止面板
 pm2 start /jd/panel/server.js  #启动面板
else
 echo "控制面板还存在."
fi

############################## 恢复HomePage ##############################
##panelDir=${ShellDir}/panel/public
echo -e "开始更新恢复home "
cd /jd/panel/public
wget -q --no-check-certificate https://ghproxy.com/https://raw.githubusercontent.com/gys619/diy/main/home.html -O home.html.new
if [ $? -eq 0 ]; then
  mv -f home.html.new home.html
  echo -e "恢复 HomePage 成功!!!"
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
