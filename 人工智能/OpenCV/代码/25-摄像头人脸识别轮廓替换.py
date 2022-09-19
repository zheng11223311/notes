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

dog = cv2.imread('./img/11-2.png')  # rgb 蓝绿红,适合显示图片

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
        head2=cv2.resize(dog,dsize=(w,h))
        # image[y:y+h,x:x+w]=head2
        # head2=image[y:y+h,x:x+w]
        head2_gray=cv2.cvtColor(head2,code=cv2.COLOR_RGB2GRAY)
        # threshold 返回修改后的阈值,binary 图像
        threshold , head_binary = cv2.threshold(head2_gray , 100 , 255 ,
                                                cv2.THRESH_OTSU)  # 阈值(二值化),像用笔画出来的图像,cv2.THRESH_OTSU 是一种高效的二值化计算方式,不会根据给定的值来进行二值化,而是自己计算
        contours,hierarchy=cv2.findContours(head_binary,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE) #轮廓查找,参数 图像 检索模式 轮廓近似方法, 返回图像 轮廓
        areas = []

        for contour in contours:  # 所有轮廓中获取一个轮廓
            areas.append(cv2.contourArea(contour))  # 计算轮廓面积
        areas = np.asarray(areas)  # 转换成数组
        index = areas.argsort()  # 从小到大排序,areas[index] 的值排序,如areas[3]=-1最小，areas[5]=9最大
        mask = np.zeros_like(head2_gray , dtype=np.uint8)  # 给定一张图片,绘制一张形状一模一样的图片 mask 面具
        # print(mask) #都是0 为纯黑色图片
        mask = cv2.drawContours(mask , contours , index[-1] , (255 , 255 , 255) ,
                                thickness=-1)  # 向mask 中绘制轮廓,绘制倒数第二个轮廓index[-2](第一大轮廓是整张图片的轮廓),thickness -1 轮廓内部都会被填充为白色(255,255,255)
        for i in range(h):
            for j in range(w):
                if (mask[i,j]==255).all(): #白色区域
                    image[i+y,j+x]=head2[i,j] #替换人脸
    cv2.imshow('lena',image)
    # cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    key=cv2.waitKey(1000//24)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失
    if key==ord(' '):
        print('按键 空格,退出')
        break

cv2.destroyAllWindows()  # 销毁内存,释放内存
