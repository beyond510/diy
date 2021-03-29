# 下面方法容易实现。diy里加了换home.html
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
