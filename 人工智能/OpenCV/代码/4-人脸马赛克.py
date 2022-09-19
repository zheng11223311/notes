import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np

# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

if __name__ == '__main__':
    img = cv2.imread('./img/3-1.jpg')  # 图片是一个数组数据,加载图片不能是中文,否则无法加载

    print(img.shape)  #(1707, 1280, 3)
    # 人脸左上角坐标 240,500 ;右下角坐标780,980 (x/y 宽度/高度)
    face=img[500:980,240:780]  #切片提取到的脸部
    # cv2.imshow('img1', face)

    # img[500:980, 240:780]=face[:,:,::-1] #选取的脸部区域颜色翻转
    # img[500:980, 240:780]=face[:,:,[0,2,1]] #选取的脸部区域颜色翻转

    face=face[::10,::10] #每10个提取一个像素点,如果最后只有5个像素点,也会取一个像素点,导致尺寸不一致,图片大小也会缩小10倍,马赛克处理
    face=np.repeat(face,10,axis=0) #重复行
    face=np.repeat(face,10,axis=1) #重复列 此两步相当于放大
    # img[500:980, 240:780] = face #填充回去,尺寸需要一致,这里缩放10 倍需要注意都为10的倍数(500:980, 240:780),否者除不尽会缺失像素点,导致尺寸不一致,不能填充进去
    img[500:980, 240:780] = face[:1707, :1280] #尺寸不一致时,使用裁剪,裁剪到尺寸一致,也可以
    cv2.imshow('img1', img)


    # cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    cv2.waitKey(0) #等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失


    cv2.destroyAllWindows()  # 销毁内存,释放内存
