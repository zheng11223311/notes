import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np

# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

if __name__ == '__main__':
    img = cv2.imread('./img/3-1.jpg')  # 图片是一个数组数据,加载图片不能是中文,否则无法加载

    print(img.shape)  #(1707, 1280, 3)

    # 原理:减少像素点
    # 马赛克方式1
    #模糊处理,先缩小,看起来更模糊,然后将模糊的图片放大为原来的大小(图片依然模糊)
    # img=cv2.resize(img,(85,60))
    # img=cv2.resize(img,(1707, 1280))

    # 马赛克方式2
    img = cv2.resize(img, (85, 60))
    # repeat 将多维数组或1维变成一维数组,在进行重复里面的值 [[1,2],[3,4]] 重复2次=>[1,1,2,2,3,3,4,4]
    img=np.repeat(img,10,axis=0) #重复10份,默认是1维的重复,重复轴0 行重复 [[1],[2]]=>[[1],[1],[2],[2]]
    img = np.repeat(img, 10, axis=1) #重复轴1,列重复 [[1],[2]]=>[[1,1],[2,2]]

    # 马赛克方式3
    img=img[::10,::10] #每隔10个取一个像素,减少像素点

    cv2.namedWindow('img1',flags=cv2.WINDOW_NORMAL) #一般窗口,可调整缩放
    cv2.resizeWindow('img1',1707, 1280) #调整大窗口小
    cv2.imshow('img1', img)


    # cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    cv2.waitKey(0) #等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失


    cv2.destroyAllWindows()  # 销毁内存,释放内存
