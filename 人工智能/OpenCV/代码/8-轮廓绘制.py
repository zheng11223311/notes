import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np

# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了

if __name__ == '__main__':
    img = cv2.imread('./img/3-1.jpg')  #rgb 蓝绿红,适合显示图片
    gray=cv2.cvtColor(img,code=cv2.COLOR_RGB2GRAY) #颜色空间,适合计算
    # 轮廓查找,使用的是,颜色值,进行的
    # lower_red = np.array([150, 50, 50])  # 浅红色
    # upper_red = np.array([180, 255, 255])  # 深红色
    # mask = cv2.inRange(img, lower_red, upper_red)  # 标记红色的区域

    # 手工绘制轮廓
    h,w,c=img.shape
    mask=np.zeros((h,w),dtype=np.uint8) #数据为0
    x_data=np.array([124,169,208,285,307,260,175]) #x轴数据
    y_data=np.array([205,124,135,173,216,311,309]) #y轴数据
    # pts=np.vstack((x_data,y_data)).astype(np.uint8).T #合并x,y 轴数据,组合成一个数组,垂直级联
    pts=np.c_[x_data,y_data] #也可以级联,效果同上
    print(pts)
    cv2.fillPoly(mask,[pts],(255)) #绘制多边形
    # cv2.imshow('mask', mask)


    res=cv2.bitwise_and(img,img,mask=mask)
    cv2.imshow('img',res)


    # cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    cv2.waitKey(0) #等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失


    cv2.destroyAllWindows()  # 销毁内存,释放内存
