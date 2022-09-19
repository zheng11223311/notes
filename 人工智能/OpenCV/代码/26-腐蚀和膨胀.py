import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np # 安装 pip install numpy
import matplotlib.pyplot as plt #安装 pip install matplotlib


# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了



img = cv2.imread('./img/26-2.png',flags=cv2.IMREAD_GRAYSCALE)  # IMREAD_GRAYSCALE 黑白图片,要求字白色,背景黑色,效果明显
kernel=np.ones(shape=[5,5],dtype=np.uint8) #壳 [5,5] 越大 腐蚀越多
# erode 腐蚀,由多变少,向硫酸腐蚀,越是外边,越容易被腐蚀,去除噪声,图像变小,变细
img2=cv2.erode(img,kernel=kernel,iterations=1)


# 膨胀,图像变粗,变大,与腐蚀相反,一般先腐蚀去噪声,然后膨胀回来
img3=cv2.dilate(img2,kernel,iterations=1)

cv2.imshow( 'lena' , img )
cv2.imshow( 'lena1' , img2 )
cv2.imshow( 'img3' , img3 ) #噪声去掉后的还原

# cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
key = cv2.waitKey(0 )  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失


cv2.destroyAllWindows()  # 销毁内存,释放内存
