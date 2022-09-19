import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np # 安装 pip install numpy
import matplotlib.pyplot as plt #安装 pip install matplotlib


# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了


img = cv2.imread('./img/28-1.png',flags=cv2.IMREAD_GRAYSCALE)  # IMREAD_GRAYSCALE 黑白图片,要求字白色,背景黑色,效果明显

# 闭运算
# kernel=np.ones(shape=[20,20],dtype=np.uint8) #壳 [5,5] 越大 腐蚀越多
# result=cv2.morphologyEx(img,op=cv2.MORPH_CLOSE,kernel=kernel,iterations=1)  #闭运算 MORPH_CLOSE

# 形态学梯度
# kernel=np.ones(shape=[5,5],dtype=np.uint8) #壳 [5,5] 越大 腐蚀越多
# result=cv2.morphologyEx(img,op=cv2.MORPH_GRADIENT,kernel=kernel,iterations=1)  #形态学梯度,其实就是一张图的膨胀与腐蚀的差别


# 形态学礼帽
# 原始图像与进行开运算之后得到的图像的差
kernel=np.ones(shape=[9,9],dtype=np.uint8) #壳 [5,5] 越大 腐蚀越多
result=cv2.morphologyEx(img,op=cv2.MORPH_TOPHAT,kernel=kernel,iterations=1)

# 形态学黑帽 等...

cv2.imshow( 'lena' , img )
cv2.imshow( 'img3' , result ) #闭运算后的图片


# 闭运算:先膨胀在腐蚀,经常被用来填充前景物体中的小洞或小黑点
# 开运算:清除物体外的点,闭运算:清除物体内的点





# cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
key = cv2.waitKey(0 )  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失


cv2.destroyAllWindows()  # 销毁内存,释放内存
