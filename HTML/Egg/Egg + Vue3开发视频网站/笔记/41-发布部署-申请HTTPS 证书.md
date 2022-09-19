## 配置HTTPS

确保服务器防火墙允许访问433



1. 申请证书
   1. 免费证书申请 [Let's Encrypt - 免费的SSL/TLS证书 (letsencrypt.org)](https://letsencrypt.org/zh-cn/)  
2. 在nginx 服务器上安装证书

![41-1](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-1.png)



进去点击 购买证书



**域名类型**

通配符域名:

同级域名都可以使用,比如 a.taobao.com,  b.taobao.com , *.taobao.com

单个域名

只能在一个域名上使用



**证书类型**

安全等级: ov企业级ssl < dv 域名级ssl(有免费版) < ev增强级ssl

![41-2](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-2.png)



**购买需要到 证书资源包 中**

![41-3](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-3.png)

![41-4](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-4.png)

![41-5](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-5.png)

![41-6](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-6.png)

![41-7](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-7.png)

![41-8](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-8.png)



解析记录验证结束之前,不能删除,验证结束之后可以删除

![41-9](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-9.png)

![41-10](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\41-10.png)

**提交验证之后,系统秒签发,可以进行部署证书了**

