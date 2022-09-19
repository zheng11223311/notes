import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np

# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了

if __name__ == '__main__':
    # img = cv2.imread('./img/3-1.jpg')  # 图片是一个数组数据,加载图片不能是中文,否则无法加载
    # img = cv2.imread('./img/5-1.webp')  # 图片是一个数组数据,加载图片不能是中文,否则无法加载
    # 多张人脸
    img = cv2.imread('./img/5-2.jpg')  # 图片是一个数组数据,加载图片不能是中文,否则无法加载

    print(img.shape)  #(1707, 1280, 3)
    # 加载人脸特征,人脸特征是通过训练得到的
    # 计算机根据这些特征,进行人脸检测
    # 符合其中的一部分,算作人脸,比如蒙面的识别一部分也算作人脸
    # CascadeClassifier 级联分类器,检测器,比如 眼睛和鼻子是一起的,如果只有眼睛没有鼻子,就不算人脸,因为这两个是联系到一起
    face_detector=cv2.CascadeClassifier('./face_feature/haarcascade_frontalface_alt.xml') #路径不能使用中文
    # 检测人脸
    faces=face_detector.detectMultiScale(img) #返回坐标 x,y,w,h  [[248 306 711 711]],
    # 多张人脸就会有多个数组[[248 306 711 711],[248 306 711 711],...]
    print(faces)
    for x,y,w,h in faces:
        cv2.rectangle(img,pt1=(x,y),pt2=(x+w,y+h),color=[0,0,255],thickness=2) #绘制矩形,pt1 左上角,pt2 右下角,color 矩形的颜色,thickness 线条粗细

    cv2.imshow('img1', img)


    # cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    cv2.waitKey(0) #等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失


    cv2.destroyAllWindows()  # 销毁内存,释放内存
