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

img = cv2.imread('./img/3-1.jpg')  # rgb 蓝绿红,适合显示图片
# 加载人脸特征,人脸特征是通过训练得到的
face_detector = cv2.CascadeClassifier('./face_feature/haarcascade_frontalface_alt.xml')  # 路径不能使用中文
while True:
    flag,image=cap.read() #flag 是否读取到了视频的图片,image 得到的图片
    if not flag:
        break
    gray=cv2.cvtColor(image,code=cv2.COLOR_RGB2GRAY) #颜色空间,适合计算
    # 检测人脸
    # scaleFactor 缩放区域  minMeighbors 临近几个都是人脸判定为人脸
    faces = face_detector.detectMultiScale(gray,scaleFactor=1.1,minNeighbors=10)  # 返回人脸坐标 x,y,w,h
    for x, y, w, h in faces:
        cv2.rectangle(image,pt1=(x,y),pt2=(x+w,y+h),color=[0,0,255],thickness=2)
        # mask2=cv2.resize(mask,(w,h))  #img.shape 打印出来的是 (h,w,color) w,h顺序相反
        # head_gray2=cv2.resize(head,(w,h))
        # for i in range(h):
        #     for j in range(w):
        #         if (mask2[i,j]==255).all(): #白色区域
        #             img[i+y,j+x]=head_gray2[i,j] #替换人脸
    cv2.imshow('lena',image)
    # cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    key=cv2.waitKey(1000//24)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失
    if key==ord(' '):
        print('按键 空格,退出')
        break

cv2.destroyAllWindows()  # 销毁内存,释放内存
