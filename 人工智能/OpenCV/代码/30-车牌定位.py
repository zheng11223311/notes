import cv2
import numpy as np

def lpr(filename): #lpr 车牌识别 Licence Plate recognize
    img = cv2.imread(filename)
    # 预处理，包括灰度处理，高斯滤波平滑处理，Sobel提取边界，图像二值化
    # 对于高斯滤波函数的参数设置，第四个参数设为零，表示不计算y方向的梯度，原因是车牌上的数字在竖方向较长，重点在于得到竖方向的边界
    gray_img = cv2.cvtColor(img, cv2.COLOR_RGB2GRAY) #灰度化处理
    GaussianBlur_img = cv2.GaussianBlur(gray_img, (3, 3), 0) #高斯平滑,模糊,不会棱角分明
    # Sobel_img = cv2.Sobel(GaussianBlur_img, -1, 1, 0, ksize=3) #用来提取边界
    Sobel_img = cv2.Canny(GaussianBlur_img, 150,255) #也可以用来提取边界,阈值,最大值阈值,提取轮廓效果比sobel 好
    ret, binary_img = cv2.threshold(Sobel_img, 127, 255, cv2.THRESH_BINARY) #二值化操作,如果Sobel_img[i,j] 大于127,Sobel_img[i,j] 就变成255,否则为0

    # 二值化操作 THRESH_BINARY 等同于一下for 循环操作,得到的效果完全一样
    # h,w=Sobel_img.shape
    # for i in range(h):
    #     for j in range(w):
    #         if(Sobel_img[i,j])>127:
    #             Sobel_img[i,j]=255
    #         else:
    #             Sobel_img[i,j]=0



    cv2.imshow('img',img)
    cv2.imshow('gray_img',gray_img)
    cv2.imshow('GaussianBlur_img',GaussianBlur_img)
    cv2.imshow('Sobel_img',Sobel_img)
    cv2.imshow('binary_img',binary_img)

    # 形态学运算
    kernel = np.ones((16, 15), np.uint8)
    # 先闭运算将车牌数字部分连接，再开运算将不是块状的或是较小的部分去掉
    close_img = cv2.morphologyEx(binary_img, cv2.MORPH_CLOSE, kernel)
    open_img = cv2.morphologyEx(close_img, cv2.MORPH_OPEN, kernel)
    # kernel2 = np.ones((10, 10), np.uint8)
    # open_img2 = cv2.morphologyEx(open_img, cv2.MORPH_OPEN, kernel2)
    # 由于部分图像得到的轮廓边缘不整齐，因此再进行一次膨胀操作
    # element = cv2.getStructuringElement(cv2.MORPH_RECT, (5, 5))
    # 膨胀操作
    dilation_img = cv2.dilate(open_img, np.ones((5, 5), np.uint8), iterations=3)

    # 获取轮廓
    contours, hierarchy = cv2.findContours(dilation_img, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    # 测试边框识别结果
    # cv2.drawContours(img, contours, -1, (0, 0, 255), 3)
    # cv2.imshow("lpr", img)
    # cv2.waitKey(0)

    # 将轮廓规整为长方形
    rectangles = []
    mask=np.zeros(shape=img.shape,dtype=np.uint8)
    for c in contours:
        x = []
        y = []
        for point in c:
            y.append(point[0][0])
            x.append(point[0][1])
        r = [min(y), min(x), max(y), max(x)]
        rectangles.append(r)
        # 显示获取到的所有轮廓
        # cv2.rectangle(mask,pt1=(min(y),min(x)),pt2=(max(y),max(x)),color=[0,0,255],thickness=2)
        # cv2.imshow('mask',mask)
    # 用颜色识别出车牌区域
    # 需要注意的是这里设置颜色识别下限low时，可根据识别结果自行调整
    dist_r = []
    max_mean = 0
    for r in rectangles:
        block = img[r[1]:r[3], r[0]:r[2]]
        hsv = cv2.cvtColor(block, cv2.COLOR_BGR2HSV)
        low = np.array([100, 60, 60])
        up = np.array([140, 255, 255]) #蓝颜色范围,蓝色车牌

        # low = np.array([70,200,200])
        # up = np.array([77, 255, 255]) #绿颜色范围,蓝色车牌
        result = cv2.inRange(hsv, low, up)
        # 用计算均值的方式找蓝色最多的区块
        # mean = cv2.mean(result)  #返回rgba 4个值
        mean = np.mean(result) #返回1个值
        if mean > max_mean:
            max_mean = mean
            dist_r = r
            # dist_r.append(r)
    print(dist_r)
    # 画出识别结果，由于之前多做了一次膨胀操作，导致矩形框稍大了一些，因此这里对于框架+3-3可以使框架更贴合车牌
    cv2.rectangle(img, (dist_r[0]+3, dist_r[1]), (dist_r[2]-3, dist_r[3]), (0, 255, 0), 2)
    # cv2.rectangle(img, (dist_r[0][0]+3, dist_r[0][1]), (dist_r[0][2]-3, dist_r[0][3]), (0, 255, 0), 2)
    # cv2.rectangle(img, (dist_r[1][0]+3, dist_r[1][1]), (dist_r[1][2]-3, dist_r[1][3]), (0, 255, 0), 2)
    cv2.imshow("lpr", img)
    cv2.waitKey(0)

# 主程序
# for i in range(5):
lpr("./img/29-1.png")
