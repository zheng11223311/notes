import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np # 安装 pip install numpy
# opencv 没有提供案例图片,需要自己安装
from skimage import data     # 安装 pip install scikit-image 或 文件->设置->项目:代码->python 解释器->安装scikit-image
import matplotlib.pyplot as plt #安装 pip install matplotlib

# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了

moon=data.moon()
cv2.imshow('moon' , moon)  #生成月球图片
print(moon.shape)   #二维数组,为黑白图片,没有color 维度
# plt.hist(moon.ravel(),bins=256) # plt 分析图片,ravel()方法将数组维度拉成一维数组,分成256份
# plt.show()  #显示直方图,x 轴为灰度值,0-255,y 轴表示图片中具有同一个灰度值的点的数目

# 直方图均衡化,可以将图片的明暗对比增强
# moon2=cv2.equalizeHist(moon) #直方图均衡化,平均一下,颜色分明
# plt.hist(moon2.reshape(-1),bins=256) #reshape 平展化,变成多少行多少列,一个参数-1,直接为1列
# print(moon2.reshape(-1)) #[190 190 241 ... 213 213 213]
# plt.show()
# cv2.imshow('moon2' , moon2)

hist=cv2.calcHist(moon,[0],None,[256],[0,256])  #cv2 分析图片,图片 通道, mask 分成几份,范围
print(hist)
print(hist.shape)
# plt.plot(hist)  #plot 画线性图
plt.bar(x=np.arange(0,256),height=hist.reshape(-1))  # bar 柱状图
# 如果显示的是一片黑,是因为黑色的频率相对于白色的频率特别大,其实白色的频率是存在的,只是相对于黑色太小,肉眼看不见
# 就像白天太阳的光遮住了星星的光
plt.show()



# cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
cv2.waitKey(0)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失

cv2.destroyAllWindows()  # 销毁内存,释放内存
