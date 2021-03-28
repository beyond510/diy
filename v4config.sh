## Version: v4.0.1
## Date: 2021-03-25
## Update Content: 增加jcode脚本用到的HelpType的一个可选值：填“2”使用“随机顺序助力模板”，本套脚本内账号间随机顺序助力，每次生成的顺序都不一致。

## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第一区域：jd_scripts特有变量填写区域（需要shell转换的） ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## Cookie（必填，由脚本去export JD_COOKIE，无需在config.sh中export）
## 请依次填入每个用户的Cookie，Cookie的具体形式（只有pt_key字段和pt_pin字段，没有其他字段）：pt_key=xxxxxxxxxx;pt_pin=xxxx;
## 1. 如果是通过控制面板编辑本文件，点击页面上方“扫码获取Cookie”即可获取，此方式获取的Cookie有效期为3个月
## 2. 还可以通过浏览器开发工具获取，此方式获得的Cookie只有1个月有效期
## 必须按数字顺序1、2、3、4...依次编号下去，例子只有6个，超出6个你继续往下编号即可
## 不允许有汉字，如果ID有汉字，请在PC浏览器上获取Cookie，会自动将汉字转换为URL编码
Cookie1=""
Cookie2=""

## 每日签到的通知形式（选填，JD_BEAN_SIGN_STOP_NOTIFY和JD_BEAN_SIGN_NOTIFY_SIMPLE，由脚本去export，无需在config.sh中export）
## js脚本每日签到提供3种通知方式，分别为：关闭通知，请填入0；简洁通知，请填入1；长通知，请填入2
NotifyBeanSign=""

## UN_SUBSCRIBES（选填，由脚本去export，无需在config.sh中export）
goodPageSize="50"   ## 商品取关数量
shopPageSize="50"   ## 店铺取关数量
jdUnsubscribeStopGoods=""  ## 遇到此商品不再取关此商品以及它后面的商品，需去商品详情页长按拷贝商品信息
jdUnsubscribeStopShop=""   ## 遇到此店铺不再取关此店铺以及它后面的店铺，请从头开始输入店铺名称

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第一区域：jd_scripts脚本特有变量填写区域（需要shell转换的） ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第二区域：jd_scripts特有变量填写区域（不需要shell转换的） ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
## 请在本区域补充其他你需要用到变量，export 变量名="变量值"，或：export 变量名='变量值'
## 其他变量详见：https://gitee.com/lxk0301/jd_docker/blob/master/githubAction.md
## 该链接中除JD_COOKIE、JD_BEAN_SIGN_STOP_NOTIFY、JD_BEAN_SIGN_NOTIFY_SIMPLE、UN_SUBSCRIBES这四个变量以及所有互助码类变量外，其他所有变量请在本区域自行补充


## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第二区域：jd_scripts脚本特有变量填写区域（不需要shell转换的） ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第三区域：互助码填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 互助码填法示例
## **互助码是填在My系列变量中的，ForOther系统变量中只要填入My系列的变量名即可，按注释中的例子拼接，以jd_fruit为例，如下所示。**
## **实际上jd_fruit一个账号只能给别人助力3次，我多写的话，只有前几个会被助力。但如果前面的账号获得的助力次数已经达到上限了，那么还是会尝试继续给余下的账号助力，所以多填也是有意义的。**
## **ForOther系列变量必须从1开始编号，依次编下去。**

# MyFruit1="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"  # 这是Cookie1这个账号的互助码
# MyFruit2="bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"  # 这是Cookie2这个账号的互助码
# MyFruit3="cccccccccccccccccccccccccccccccc"  # 这是Cookie3这个账号的互助码
# MyFruit4="dddddddddddddddddddddddddddddddd"  # 这是Cookie4这个账号的互助码
# MyFruit5="eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"  # 这是Cookie5这个账号的互助码
# MyFruit6="ffffffffffffffffffffffffffffffff"  # 这是Cookie6这个账号的互助码
# MyFruitA="gggggggggggggggggggggggggggggggg"  # 这是我和别人交换互助，另外一个用户A的互助码
# MyFruitB="hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"  # 这是我和别人交换互助，另外一个用户B的互助码
# MyFruitC="iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"  # 这是我和别人交换互助，另外一个用户C的互助码

# ForOtherFruit1="${MyFruit2}@${MyFruitB}@${MyFruit4}"   # Cookie1这个账号助力Cookie2的账号的账号、Cookie4的账号以及用户B
# ForOtherFruit2="${MyFruit1}@${MyFruitA}@${MyFruit4}"   # Cookie2这个账号助力Cookie1的账号的账号、Cookie4的账号以及用户A
# ForOtherFruit3="${MyFruit1}@${MyFruit2}@${MyFruitC}@${MyFruit4}@${MyFruitA}@${MyFruit6}"  # 解释同上，jd_fruit实际上只能助力3次
# ForOtherFruit4="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruitC}@${MyFruit6}@${MyFruitA}"  # 解释同上，jd_fruit实际上只能助力3次
# ForOtherFruit5="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruitB}@${MyFruit4}@${MyFruit6}@${MyFruitC}@${MyFruitA}"
# ForOtherFruit6="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruitA}@${MyFruit4}@${MyFruit5}@${MyFruitC}"


## jd_fruit互助（选填）
MyFruit1=''
MyFruit2=''
MyFruitA=''
MyFruitB=''

ForOtherFruit1=""
ForOtherFruit2=""

## jd_pet互助（选填）
MyPet1=''
MyPet2=''
MyPetA=''
MyPetB=''

ForOtherPet1=""
ForOtherPet2=""

## jd_plantBean互助（选填）
MyBean1=''
MyBean2=''
MyBeanA=''
MyBeanB=''

ForOtherBean1=""
ForOtherBean2=""

## jd_dreamFactory互助
MyDreamFactory1=''
MyDreamFactory2=''
MyDreamFactoryA=''
MyDreamFactoryB=''

ForOtherDreamFactory1=""
ForOtherDreamFactory2=""

## jd_jdfactory互助（选填）
MyJdFactory1=''
MyJdFactory2=''
MyJdFactoryA=''
MyJdFactoryB=''

ForOtherJdFactory1=""
ForOtherJdFactory2=""

## jd_jdzz互助（选填）
MyJdzz1=''
MyJdzz2=''
MyJdzzA=''
MyJdzzB=''

ForOtherJdzz1=""
ForOtherJdzz2=""

## jd_crazy_joy互助（选填）
MyJoy1=''
MyJoy2=''
MyJoyA=''
MyJoyB=''

ForOtherJoy1=""
ForOtherJoy2=""

## jd_jxnc互助（选填）
MyJxnc1=''
MyJxnc2=''
MyJxncA=''
MyJxncB=''

ForOtherJxnc1=""
ForOtherJxnc2=""

## jd_bookshop互助（选填）
MyBookShop1=''
MyBookShop2=''
MyBookShopA=''
MyBookShopB=''

ForOtherBookShop1=""
ForOtherBookShop2=""

## jd_cash互助（选填）
MyCash1=''
MyCash2=''
MyCashA=''
MyCashB=''

ForOtherCash1=""
ForOtherCash2=""

## jd_sgmh互助（选填） 
MySgmh1=''
MySgmh2=''
MySgmhA=''
MySgmhB=''

ForOtherSgmh1=""
ForOtherSgmh2=""

### jd_cfd活动互助（选填）
MyCfd1=''
MyCfd2=''
MyCfdA=''
MyCfdB=''

ForOtherCfd1=""
ForOtherCfd2=""

## jd_global活动互助（选填）
MyGlobal1=''
MyGlobal2=''
MyGlobalA=''
MyGlobalB=''

ForOtherGlobal1=""
ForOtherGlobal2=""

## jd_city活动互助（选填）
MyCity1=''
MyCity2=''
MyCityA=''
MyCityB=''

ForOtherCity1=""
ForOtherCity2=""

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第三区域：互助码填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第四区域：本shell脚本特有变量填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 临时屏蔽某个Cookie（选填）
## 如果某些Cookie已经失效了，但暂时还没法更新，可以使用此功能在不删除该Cookie和重新修改Cookie编号的前提下，临时屏蔽掉某些编号的Cookie
## 多个Cookie编号以半角的空格分隔，两侧一对半角双引号，使用此功能后，在运行js脚本时账号编号将发生变化
## 举例1：TempBlockCookie="2"    临时屏蔽掉Cookie2
## 举例2：TempBlockCookie="2 4"  临时屏蔽掉Cookie2和Cookie4
## 如果只是想要屏蔽某个账号不玩某些小游戏，可以参考下面 case 这个命令的例子来控制，脚本名称请去掉后缀 “.js”
## case $1 in
##   jd_fruit)
##     TempBlockCookie="5"      # 账号5不玩jd_fruit
##     ;;
##   jd_dreamFactory | jd_jdfactory)
##     TempBlockCookie="2"      # 账号2不玩jd_dreamFactory和jd_jdfactory
##     ;;
##   jd_jdzz | jd_joy)
##     TempBlockCookie="3 6"    # 账号3、账号6不玩jd_jdzz和jd_joy
##     ;;
##  esac
TempBlockCookie=""

## 是否自动删除 jd_scripts 项目中失效的脚本与定时任务（选填）
## 有的时候，某些JS脚本只在特定的时间有效，过了时间就失效了，需要自动删除失效的本地定时任务，则设置为 "true" ，否则请设置为 "false"
## 检测文件：lxk0301/jd_scripts 仓库中的 docker/crontab_list.sh
## 当设置为 "true" 时，会自动从检测文件中读取比对删除的任务（识别以“jd_”、“jr_”、“jx_”开头的任务）
## 当设置为 "true" 时，脚本只会删除一整行失效的定时任务，不会修改其他现有任务，所以任何时候，你都可以自己调整你的crontab.list
## 当设置为 "true" 时，如果你有添加额外脚本是以“jd_”“jr_”“jx_”开头的，如检测文件中，会被删除，不是以“jd_”“jr_”“jx_”开头的任务则不受影响
AutoDelCron="true"

## 是否自动增加 jd_scripts 项目中新的本地定时任务（选填）
## lxk0301 大佬会在有需要的时候，增加定时任务，如需要本地自动增加新的定时任务，则设置为 "true" ，否则请设置为 "false"
## 检测文件：lxk0301/jd_scripts 仓库中的 docker/crontab_list.sh
## 当设置为 "true" 时，如果检测到检测文件中有增加新的定时任务，那么在本地也增加（识别以“jd_”、“jr_”、“jx_”开头的任务）
## 当设置为 "true" 时，会自动从检测文件新增加的任务中读取时间，该时间为北京时间
## 当设置为 "true" 时，脚本只会增加新的定时任务，不会修改其他现有任务，所以任何时候，你都可以自己调整你的crontab.list
AutoAddCron="true"

## 删除日志的时间（选填） 
## 在运行删除旧的日志任务时，要删除多少天以前的日志，请输入正整数，不填则禁用删除日志的功能
RmLogDaysAgo="7"

## 随机延迟启动任务（选填）
## 如果任务不是必须准点运行的任务，那么给它增加一个随机延迟，由你定义最大延迟时间，单位为秒，如 RandomDelay="300" ，表示任务将在 1-300 秒内随机延迟一个秒数，然后再运行
## 在crontab.list中，在每小时第0-2分、第30-31分、第59分这几个时间内启动的任务，均算作必须准点运行的任务，在启动这些任务时，即使你定义了RandomDelay，也将准点运行，不启用随机延迟
## 在crontab.list中，除掉每小时上述时间启动的任务外，其他任务在你定义了 RandomDelay 的情况下，一律启用随机延迟，但如果你按照Wiki教程给某些任务添加了 "now"，那么这些任务也将无视随机延迟直接启动
RandomDelay="300"

## 自动按顺序进行账号间互助（选填）
## 设置为 true 时，以下所有互助活动，账号间将按照config.sh中Cookie顺序进行互助，此时，不会助力不在config.sh中的账号，无法和别人交换助力
## MyXxxx系列变量仍然需要填写，但ForOtherXxxx系列变量不再需要填写（填写了也无效）
## 如果启用了TempBlockCookie，那么只是被屏蔽的账号不助力其他账号，其他账号还是会助力被屏蔽的账号
AutoHelpOther=""

## 导出互助码模板样式（选填），定义 jcode 脚本导出的互助码模板样式。
## 不填 使用“按编号顺序助力模板”，Cookie编号在前的优先助力
## 填 0 使用“全部一致助力模板”，所有账户要助力的码全部一致，和启用 AutoHelpOther 的效果差不多
## 填 1 使用“均等机会助力模板”，所有账户获得助力次数一致
## 填 2 使用“随机顺序助力模板”，本套脚本内账号间随机顺序助力，每次生成的顺序都不一致。
HelpType=""

## 是否添加DIY脚本（选填）
## 如果你自己会写shell脚本，并且希望在每次git_pull.sh这个脚本运行时，额外运行你的DIY脚本，请赋值为 "true"
## 同时，请务必将你的脚本命名为 diy.sh (只能叫这个文件名)，放在 config 目录下
## 我已定义好的变量，你如果想直接使用，可以参考本仓库下 git_pull.sh 文件
EnableExtraShell="true"

## 启用其他开发者的仓库方式一（选填）：完整更新整个仓库，针对同一个仓库，方式一和方式二只能选择一种
## OwnRepoUrl：仓库地址清单，必须从1开始依次编号
## OwnRepoBranch：你想使用的分支清单，不指定分支（即使用默认分支）时可以用一对不包含内容的空引号""，编号必须和 OwnRepoUrl 对应。
## OwnRepoPath：要使用的脚本在仓库哪个路径下，请输入仓库下的相对路径，默认空值""代表仓库根目录，编号必须和 OwnRepoUrl 对应。
## 所有脚本存放在 own 目录下，三个清单必须一一对应，示例如下：
## OwnRepoUrl1="https://gitee.com/abc/jdtsa.git"
## OwnRepoUrl2="https://github.com/nedcd/jxddfsa.git"
## OwnRepoUrl3="git@github.com:eject/poex.git"
## 
## OwnRepoBranch1=""         # 代表第1个仓库 https://gitee.com/abc/jdtsa.git 使用 "默认" 分支
## OwnRepoBranch2="main"     # 代表第2个仓库 https://github.com/nedcd/jxddfsa.git 使用 "main" 分支
## OwnRepoBranch3="master"   # 代表第3个仓库 git@github.com:eject/poex.git 使用 "master" 分支
## 
## OwnRepoPath1=""            # 代表第1个仓库https://gitee.com/abc/jdtsa.git，你想使用的脚本就在仓库根目录下。
## OwnRepoPath2="scripts/jd"  # 代表第2个仓库https://github.com/nedcd/jxddfsa.git，你想使用的脚本在仓库的 scripts/jd 文件夹下，必须输入相对路径
## OwnRepoPath3="task"        # 代表第3个仓库git@github.com:eject/poex.git，你想使用的脚本在仓库的 task 文件夹下，必须输入相对路径

OwnRepoUrl1=""
OwnRepoUrl2=""

OwnRepoBranch1=""
OwnRepoBranch2=""

OwnRepoPath1=""
OwnRepoPath2=""

## 启用其他开发者的仓库方式二（选填）：只下载想要的文件，针对同一个仓库，方式一和方式二只能选择一种。
## 请先确认你能正常下载该raw文件才列在下方，无论是github还是gitee，请只填入 raw 文件链接。
## 一行一个文件下载链接，首尾一对半角括号，示例：
## OwnRawFile=(
##     https://gitee.com/wabdwdd/scipts/raw/master/jd_abc.js
##     https://github.com/lonfeg/loon/raw/main/jd_dudi.js
##     https://github.com/sunsem/qx/raw/main/z_dida.js
## )
OwnRawFile=(

)

## 是否自动增加 own 类脚本（其他开发者脚本）的cron任务（选填）
## 本shell脚本不一定能完全从js脚本中识别出有效的cron设置，如果发现不能满足你的需要，请设置为 "false" 以取消自动增加。
AutoAddOwnCron="true"

## 是否自动删除 own 类脚本（其他开发者脚本）的cron任务（选填）
## 本shell脚本不一定能完全从js脚本中识别出有效的cron设置，如果发现不能满足你的需要，请设置为 "false" 以取消自动删除。
AutoDelOwnCron="true"
################################## 定义User-Agent（选填） ##################################
## 自定义lxk0301大佬仓库里JD系列js脚本的User-Agent，不懂不知不会User-Agent的请不要随意填写内容，随意填写了出错概不负责
## 如需使用，请自行解除下一行注释
export JD_USER_AGENT=""

################################## 定义通知TOKEN（选填） ##################################
## 想通过什么渠道收取通知，就填入对应渠道的值
## ServerChan，教程：http://sc.ftqq.com/3.version
export PUSH_KEY=""

## 2. BARK，教程（看BARK_PUSH和BARK_SOUND的说明）：https://gitee.com/lxk0301/jd_docker/blob/master/githubAction.md#%E4%B8%8B%E6%96%B9%E6%8F%90%E4%BE%9B%E4%BD%BF%E7%94%A8%E5%88%B0%E7%9A%84-secrets%E5%85%A8%E9%9B%86%E5%90%88
export BARK_PUSH=""
export BARK_SOUND=""

## 2. Telegram，如需使用，TG_BOT_TOKEN和TG_USER_ID必须同时赋值，教程：https://github.com/lxk0301/jd_scripts/blob/master/backUp/TG_PUSH.md
export TG_BOT_TOKEN=""
export TG_USER_ID=""

## 4. 钉钉，教程（看DD_BOT_TOKEN和DD_BOT_SECRET部分）：https://gitee.com/lxk0301/jd_docker/blob/master/githubAction.md#%E4%B8%8B%E6%96%B9%E6%8F%90%E4%BE%9B%E4%BD%BF%E7%94%A8%E5%88%B0%E7%9A%84-secrets%E5%85%A8%E9%9B%86%E5%90%88
export DD_BOT_TOKEN=""
export DD_BOT_SECRET=""

## 5. iGot聚合推送，支持多方式推送，填写iGot的推送key。教程：https://wahao.github.io/Bark-MP-helper/#/
export IGOT_PUSH_KEY=""

## 6. Push Plus，微信扫码登录后一对一推送或一对多推送，参考文档：http://pushplus.hxtrip.com/
## 其中PUSH_PLUS_USER是一对多推送的“群组编码”（一对多推送下面->您的群组(如无则新建)->群组编码）注:(1、需订阅者扫描二维码 2、如果您是创建群组所属人，也需点击“查看二维码”扫描绑定，否则不能接受群组消息推送)，只填PUSH_PLUS_TOKEN默认为一对一推送
export PUSH_PLUS_TOKEN=""
export PUSH_PLUS_USER=""

## 7. 企业微信机器人消息推送 webhook 后面的 key，文档：https://work.weixin.qq.com/api/doc/90000/90136/91770
export QYWX_KEY=""

## 8. 企业微信应用消息推送的值，文档：https://work.weixin.qq.com/api/doc/90000/90135/90236 
## 依次填上corpid的值,corpsecret的值,touser的值,agentid,media_id的值，注意用,号隔开，例如："wwcff56746d9adwers,B-791548lnzXBE6_BWfxdf3kSTMJr9vFEPKAbh6WERQ,mingcheng,1000001,2COXgjH2UIfERF2zxrtUOKgQ9XklUqMdGSWLBoW_lSDAdafat"
export QYWX_AM=""


################################## Telegram 代理（选填） ##################################
## Telegram 代理的 IP，代理类型为 http，比如你代理是 http://127.0.0.1:1080，则填写 export TG_PROXY_HOST="127.0.0.1"，export TG_PROXY_PORT="1080"
## 如需使用，请自行解除注释
# export TG_PROXY_HOST=""
# export TG_PROXY_PORT=""

## Telegram api自建的反向代理地址，例子：反向代理地址 http://aaa.bbb.ccc 则填写 aaa.bbb.ccc，教程：https://www.hostloc.com/thread-805441-1-1.html
## 如需使用，请自行解除下注释
# export TG_API_HOST=""


################################## 定义每日签到每个接口间的延迟时间（选填） ##################################
## 默认每个签到接口并发无延迟，如需要依次进行每个接口，请自定义延迟时间，单位为毫秒，延迟作用于每个签到接口, 如填入延迟则切换顺序签到(耗时较长)
export JD_BEAN_STOP="300"


################################## 定义东东超市蓝币兑换数量（选填） ##################################
## 东东超市蓝币兑换，可用值包括：
## 一、0：表示不兑换京豆，这也是js脚本的默认值
## 二、20：表示兑换20个京豆
## 三、1000：表示兑换1000个京豆
## 四、可兑换清单的商品名称，输入能跟唯一识别出来的关键词即可，比如：MARKET_COIN_TO_BEANS="抽纸"
## 注意：有些比较贵的实物商品JD只是展示出来忽悠人的，即使你零点用脚本去抢，也会提示没有或提示已下架
export MARKET_COIN_TO_BEANS="0"


################################## 定义jd_superMarket蓝币成功兑换奖品是否静默运行（选填） ##################################
## 默认 "false" 关闭（即:奖品兑换成功后会发出通知提示），如需要静默运行不发出通知，请改为 "true"
export MARKET_REWARD_NOTIFY=""


################################## 定义jd_superMarket是否自动使用金币去抽奖（选填） ##################################
## 是否用金币去抽奖，默认 "false" 关闭，如需开启，请修改为 "true"
export SUPERMARKET_LOTTERY=""


################################## 定义jd_superMarket是否自动参加PK队伍（选填） ##################################
## 是否每次PK活动参加脚本作者创建的PK队伍，"true" 表示参加，"false" 表示不参加，默认为 "true"
export JOIN_PK_TEAM=""


################################## 定义jd_fruit是否静默运行（选填） ##################################
## 默认为 "false"，不静默，发送推送通知消息，如不想收到通知，请修改为 "true"
## 如果你不想完全关闭或者完全开启通知，只想在特定的时间发送通知，可以参考下面的“定义jd_pet是否静默运行”部分，设定几个if判断条件
export FRUIT_NOTIFY_CONTROL=""


################################## 定义jd_fruit是否使用水滴换豆卡（选填） ##################################
## 如果出现限时活动时100g水换20豆，此时比浇水划算，"true" 表示换豆（不浇水），"false" 表示不换豆（继续浇水）,默认是"false"
## 如需切换为换豆（不浇水），请修改为 "true"
export FRUIT_BEAN_CARD=""


################################## 定义jd_joy喂食克数（选填） ##################################
## 你期望的jd_joy每次喂食克数，只能填入10、20、40、80，默认为10
## 如实际持有食物量小于所设置的克数，脚本会自动降一档，直到降无可降
## 具体情况请自行在宠汪汪游戏中去查阅攻略
export JOY_FEED_COUNT=""


################################## 定义jd_joy兑换京豆数量（选填） ##################################
## 目前的可用值包括：0、20、500、1000，其中0表示为不自动兑换京豆，如不设置，将默认为"20"
## 不同等级可兑换不同数量的京豆，详情请见jd_joy游戏中兑换京豆选项
## 500、1000的京豆每天有总量限制，设置了并且你也有足够积分时，也并不代表就一定能抢到
export JD_JOY_REWARD_NAME=""


################################## 定义jd_joy兑换京豆是否静默运行（选填） ##################################
## 默认为 "false"，在成功兑换京豆时将发送推送通知消息（失败不发送），如想要静默不发送通知，请修改为 "true"
export JD_JOY_REWARD_NOTIFY=""


################################## 定义jd_joy是否自动给好友的汪汪喂食（选填） ##################################
## 默认 "false" 不会自动给好友的汪汪喂食，如想自动喂食，请改成 "true"
export JOY_HELP_FEED=""


################################## 定义jd_joy是否自动报名宠物赛跑（选填） ##################################
## 默认 "true" 参加宠物赛跑，如需关闭，请改成 "false"
export JOY_RUN_FLAG=""


################################## 定义jd_joy参加比赛类型（选填） ##################################
## 当JOY_RUN_FLAG不设置或设置为 "true" 时生效
## 可选值：2,10,50，其他值不可以。其中2代表参加双人PK赛，10代表参加10人突围赛，50代表参加50人挑战赛，不填时默认为2
## 各个账号间请使用 & 分隔，比如：JOY_TEAM_LEVEL="2&2&50&10"
## 如果你有5个账号但只写了四个数字，那么第5个账号将默认参加2人赛，账号如果更多，与此类似
export JOY_TEAM_LEVEL=""


################################## 定义jd_joy赛跑自己账号内部是否开启互助（选填） ##################################
## 输入 true 为开启内部互助
export JOY_RUN_HELP_MYSELF="true"


################################## 定义jd_joy赛跑获胜后是否推送通知（选填） ##################################
## 控制jd_joy.js脚本jd_joy赛跑获胜后是否推送通知，"false" 为否(不推送通知消息)，"true" 为是(即：发送推送通知消息)，默认为 "true"
export JOY_RUN_NOTIFY=""


################################## 定义jd_moneyTree是否自动将金果卖出变成金币（选填） ##################################
## 金币有时效，默认为 "false"，不卖出金果为金币，如想希望自动卖出，请修改为 "true"
export MONEY_TREE_SELL_FRUIT=""


################################## 定义jd_pet是否静默运行（选填） ##################################
## 默认 "false"（不静默，发送推送通知消息），如想静默请修改为 true
## 每次执行脚本通知太频繁了，改成只在周三和周六中午那一次运行时发送通知提醒
## 除掉上述提及时间之外，均设置为 true，静默不发通知
## 特别说明：针对北京时间有效。
if [ $(date "+%-w") -eq 6 ] && [ $(date "+%-H") -ge 9 ] && [ $(date "+%-H") -lt 14 ]; then
  export PET_NOTIFY_CONTROL="false"
elif [ $(date "+%-w") -eq 3 ] && [ $(date "+%-H") -ge 9 ] && [ $(date "+%-H") -lt 14 ]; then
  export PET_NOTIFY_CONTROL="false"
else
  export PET_NOTIFY_CONTROL="true"
fi


################################## 定义jd_jdfactory心仪的商品（选填） ##################################
## 只有在满足以下条件时，才自动投入电力：一是存储的电力满足生产商品所需的电力，二是心仪的商品有库存，如果没有输入心仪的商品，那么当前你正在生产的商品视作心仪的商品
## 如果你看不懂上面的话，请去jd_jdfactory游戏中查阅攻略
## 心仪的商品请输入商品的全称或能唯一识别出该商品的关键字
export FACTORAY_WANTPRODUCT_NAME=""


################################## 定义jd_jxnc通知级别（选填） ##################################
## 可用值： 0(不通知); 1(本次获得水滴>0); 2(任务执行); 3(任务执行+未种植种子)，默认为"3"
export JXNC_NOTIFY_LEVEL=""


################################## 定义jd_cfd通知开关（选填） ##################################
## 输入 true 为通知，不填则为不通知
export CFD_NOTIFY_CONTROL="true"


################################## 定义jd_jxd是否自动把抽奖卷兑换为兑币 ##################################
## 输入 true 为自动兑换，不填则为不兑换
export JD_JXD_EXCHANGE="true"


################################## 定义jd_necklace是否是否静默运行 ##################################
## 控制点点券是否静默运行，false 为否(默认值false，发送推送通知消息)，true 为是(即：不发送推送通知消息)
export DDQ_NOTIFY_CONTROL=""


################################## 定义jd_cash是否是否静默运行 ##################################
## 控制签到领现金是否静默运行，false 为否(默认值false，发送推送通知消息)，true 为是(即：不发送推送通知消息)
export CASH_NOTIFY_CONTROL=""


################################## 定义jd_jdzz是否是否静默运行 ##################################
## 控制jd_jdzz是否静默运行，false 为否(默认值false，发送推送通知消息)，默认每月1日推送一次通知，true 为是(即：不发送推送通知消息)，
export JDZZ_NOTIFY_CONTROL=""


################################## 定义注销店铺会员参数（选填） ##################################
## jd_unbind脚本需要的，注销JD已开的店铺会员，不是注销JDplus会员，个别店铺无法注销
## 此参数控制每次运行脚本时注销多少个店铺会员，默认200
export UN_BIND_CARD_NUM=""

## 遇到此参数设定的会员卡则跳过不进行注销，多个会员卡之间以 & 分隔，默认值"JDPLUS会员"
export UN_BIND_STOP_CARD=""


################################## jd_crazy_joy（选填） ##################################
## jd_crazy_joy循环助力，"true" 表示循环助力，"false" 表示不循环助力，默认 "false"
export JDJOY_HELPSELF=""

## jd_crazy_joy京豆兑换，目前最小值为500/1000京豆，默认为 "0" 不开启京豆兑换
export JDJOY_APPLYJDBEAN=""

## jd_crazy_joy自动购买什么等级的JOY，如需要使用请自行解除注释
# export BUY_JOY_LEVEL=""


################################## 定义是否自动加购物车（选填） ##################################
## jd_bookshop和jd_small_home有些任务需要将商品加进购物车才能完成，默认 "false" 不做这些任务，如想做，请设置为 "true"
export PURCHASE_SHOPS="false"


################################## Telegram 代理（选填） ##################################
## Telegram 代理的 IP，代理类型为 http，比如你代理是 http://127.0.0.1:1080，则填写 "127.0.0.1"
## 如需使用，请自行解除下一行的注释
# export TG_PROXY_HOST=""

## Telegram 代理的端口，代理类型为 http，比如你代理是 http://127.0.0.1:1080，则填写 "1080"
## 如需使用，请自行解除下一行的注释
# export TG_PROXY_PORT=""

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第四区域：本shell脚本特有变量填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第五区域：额外的环境变量填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
## 请在以下补充你需要用到的额外的环境变量，形式：export 变量名="变量值"，或：export 变量名='变量值'


## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第五区域：额外的环境变量填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
