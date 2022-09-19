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


# 高通滤波,表示高频可以通过的波,过滤低频波,低频同理

img=cv2.imread('./img/18-1.png',flags=0)
dft=cv2.dft(img/255,flags=cv2.DFT_COMPLEX_OUTPUT) #经过傅里叶变换的频率
dft_shift=np.fft.fftshift(dft)   #移动0频率的数据到中心,中心会比没有移动过的更加亮,低通滤波,将低频移动到中心
# print(dft_shift)
print(dft_shift.shape)

# 低通滤波示范:过滤高频波
# h,w=img.shape
# h2,w2=h//2,w//2 #中心点
# mask=np.zeros((h,w,2),dtype=np.uint8)
# mask[h2-50:h2+50,w2-50:w2+50]=1 #中心低频为1
# dft_shift2=dft_shift*mask #乘以1 为原来的本身,乘以0 为0 ,变成黑色,即高频为0,被过滤掉


# 高通滤波示范:过滤低频波(细节),保留高频波(噪声,突兀,变化明显的地方)
h,w=img.shape
h2,w2=h//2,w//2 #中心点
dft_shift[h2-500:h2+500,w2-500:w2+500]=0 #不在菱角分明,低频波被过滤了
dft_shift2=dft_shift



#移动回来
ifft_shift=np.fft.ifftshift(dft_shift2)
result=cv2.idft(ifft_shift) #反傅里叶变换

# 显示图片
plt.figure(figsize=(12,9))
plt.subplot(121)
plt.imshow(img,cmap='gray') #原图如果粗糙模糊更容易对比,使用gray 黑白显示
plt.subplot(122)
plt.imshow(result[:,:,0],cmap='gray') #result[:,:,0] 取出实数部分

plt.show()  #中心部分更亮,说明低频分量更多



# cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
cv2.waitKey(0)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失

cv2.destroyAllWindows()  # 销毁内存,释放内存
