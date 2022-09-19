import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np # 安装 pip install numpy
import matplotlib.pyplot as plt #安装 pip install matplotlib


# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了


# 给视频的路劲,就是打开视频
cap=cv2.VideoCapture(0) # 代表打开本机的摄像头

img = cv2.imread('./img/29-3.png',1)  # rgb 蓝绿红,适合显示图片
# 加载人脸特征,人脸特征是通过训练得到的
gray=cv2.cvtColor(img,code=cv2.COLOR_RGB2GRAY) #颜色空间,适合计算
car_detector = cv2.CascadeClassifier('./car_feature/cars.xml')  # 路径不能使用中文,识别车辆
# scaleFactor 缩放区域  minMeighbors 临近几个都是人脸判定为人脸
# cars = car_detector.detectMultiScale(gray,scaleFactor=1.1,minNeighbors=10)
cars = car_detector.detectMultiScale(gray,1.1,1)  # 返回车牌坐标 x,y,w,h
print(cars)
for x, y, w, h in cars:
    cv2.rectangle(img,pt1=(x,y),pt2=(x+w,y+h),color=[0,0,255],thickness=2)
cv2.imshow('lena',img)
# cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
key=cv2.waitKey(0)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失

cv2.destroyAllWindows()  # 销毁内存,释放内存
