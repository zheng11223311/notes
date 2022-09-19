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
    # 轮廓查找 方法1
    # gas=cv2.GaussianBlur(gray,(5,5),0)  #高斯平滑,高斯模糊,菱角不分明,像近视一样看起模糊,(5,5) 表示在附近5个点位置取平均计算值
    # canny=cv2.Canny(gas,150,200) #轮廓查找
    # cv2.imshow('canny', canny)
    # cv2.imshow('gas', gas)
    # cv2.imshow('gray', gray)
    # cv2.imshow('img', img)


    # 轮廓查找 方法2
    # res=cv2.findContours(gray,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE) #轮廓查找,参数 图像 检索模式 轮廓近似方法, 返回图像 轮廓
    # print(res)
    img,countours=cv2.findContours(gray, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    print(img,countours)



    # cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    cv2.waitKey(0) #等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失


    cv2.destroyAllWindows()  # 销毁内存,释放内存
