import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np # 安装 pip install numpy
import matplotlib.pyplot as plt #安装 pip install matplotlib


# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了





# 所有的函数,所有的数据,都有一个规律,可以使用最最基本的函数 进行表示,基本函数就是正弦波,正弦波的叠加
# 傅里叶变换经常用来分析不同滤波器的频率特性


# 高通滤波,表示过滤高频的波,低频同理

img=cv2.imread('./img/15-1.png',flags=0)
dft=cv2.dft(img/255,flags=cv2.DFT_COMPLEX_OUTPUT)
dft_shift=np.fft.fftshift(dft)   #移动0频率的数据到中心,中心会比没有移动过的更加亮,低通滤波,将低频移动到中心
# print(dft_shift)
# print(dft_shift.shape)

magnitude_spectrum=20*np.log(cv2.magnitude(dft_shift[:,:,0],dft_shift[:,:,1]))

plt.subplot(121)
plt.imshow(img,cmap='gray') #原图如果粗糙模糊更容易对比
plt.subplot(122)
plt.imshow(magnitude_spectrum,cmap='gray')

plt.show()  #中心部分更亮,说明低频分量更多



# cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
cv2.waitKey(0)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失

cv2.destroyAllWindows()  # 销毁内存,释放内存
