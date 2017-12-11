# 简介
NavApp服务端挑选出Library部分的MicroService，并且使用Yii2框架进行重构。如果需要其他功能在此框架上继续开发就可以了。

## API列表

(GET)列出图书馆列表：

    localhost/library/list #return json
(POST)新增图书馆信息：

    localhost/library/create
    #success:{'status': 0,'msg': 'success'}
    #fail{'status': 1,'msg': 'XXXX'}    
(GET)查找图书馆信息：

    localhost/library/search?name=XXXX #return json