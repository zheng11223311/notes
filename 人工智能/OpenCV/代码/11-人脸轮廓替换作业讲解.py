import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np

# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了

if __name__ == '__main__':
    img = cv2.imread('./img/3-1.jpg')  #rgb 蓝绿红,适合显示图片
    # head = cv2.imread('./img/11-3.png')  #rgb 蓝绿红,适合显示图片
    head = cv2.imread('./img/11-2.png')  #rgb 蓝绿红,适合显示图片
    # 加载人脸特征,人脸特征是通过训练得到的
    face_detector = cv2.CascadeClassifier('./face_feature/haarcascade_frontalface_alt.xml')  # 路径不能使用中文
    gray=cv2.cvtColor(img,code=cv2.COLOR_RGB2GRAY) #颜色空间,适合计算
    head_gray=cv2.cvtColor(head,code=cv2.COLOR_RGB2GRAY) #颜色空间,适合计算
    # threshold 返回修改后的阈值,binary 图像
    threshold,head_binary=cv2.threshold(head_gray,50,255,cv2.THRESH_OTSU) #阈值(二值化),像用笔画出来的图像,cv2.THRESH_OTSU 是一种高效的二值化计算方式,不会根据给定的值来进行二值化,而是自己计算
    #cv2.THRESH_BINARY 给定100,最大255,使图片变成黑白图片,根据给定的值100 大于100变成255 白色,小于变成黑色,
    # print(threshold) #97.0
    # cv2.imshow('face', head_binary)






    # 轮廓查找 方法2
    # RETR_TREE 返回所有轮廓
    # CHAIN_APPROX_SIMPLE 去除冗余轮廓点,比如一条直线所有的点,我们只需要头尾点,就可以绘制,去除了中间多余的点
    # CHAIN_APPROX_NONE 绘制轮廓所有的点
    #  contours,hierarchy 轮廓,层次结构
    contours,hierarchy=cv2.findContours(head_binary,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE) #轮廓查找,参数 图像 检索模式 轮廓近似方法, 返回图像 轮廓
    # print(contours)
    areas=[]

    for contour in contours:  #所有轮廓中获取一个轮廓
        areas.append(cv2.contourArea(contour))    #计算轮廓面积
    areas=np.asarray(areas) #转换成数组
    index=areas.argsort() #从小到大排序,areas[index] 的值排序,如areas[3]=-1最小，areas[5]=9最大
    # print(index)
    # print(areas)
    mask=np.zeros_like(head_gray,dtype=np.uint8) #给定一张图片,绘制一张形状一模一样的图片 mask 面具
    # print(mask) #都是0 为纯黑色图片
    # cv2.imshow('mask ', mask)
    mask=cv2.drawContours(mask,contours,index[-1],(255,255,255),thickness=-1) #绘制轮廓,绘制倒数第二个轮廓index[-2](第一大轮廓是整张图片的轮廓),thickness -1 轮廓内部都会被填充为白色(255,255,255)
    # 2、函数的调用形式
    # void drawContours(InputOutputArray
    # image, InputArrayOfArrays
    # contours, int
    # contourIdx, const
    # Scalar & color, int
    # thickness = 1, int
    # lineType = 8, InputArray
    # hierarchy = noArray(), int
    # maxLevel = INT_MAX, Point
    # offset = Point() )
    # 函数参数详解：
    # 其中第一个参数image表示目标图像，指明在哪幅图像上绘制轮廓,img 为三通道才能显示轮廓
    # 第二个参数contours表示输入的轮廓组，每一组轮廓由点vector构成，
    # 第三个参数contourIdx指明画第几个轮廓，如果该参数为负值，则画全部轮廓，
    # 第四个参数color为轮廓的颜色，
    # 第五个参数thickness为轮廓的线宽，如果为负值或CV_FILLED表示填充轮廓内部，
    # 第六个参数lineType为线型，
    # 第七个参数为轮廓结构信息，
    # 第八个参数为maxLevel
    # ————————————————
    # 原文链接：https: // blog.csdn.net / qq_18343569 / article / details / 47982167
    cv2.imshow('head_gray_mask', mask)
    # 检测人脸
    faces = face_detector.detectMultiScale(gray)  # 返回人脸坐标 x,y,w,h
    # print(faces)
    for x, y, w, h in faces:
        mask2=cv2.resize(mask,(w,h))  #img.shape 打印出来的是 (h,w,color) w,h顺序相反
        head_gray2=cv2.resize(head,(w,h))
        for i in range(h):
            for j in range(w):
                if (mask2[i,j]==255).all(): #白色区域
                    img[i+y,j+x]=head_gray2[i,j] #替换人脸

    cv2.imshow('img', img)
        # cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    cv2.waitKey(0) #等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失


    cv2.destroyAllWindows()  # 销毁内存,释放内存
