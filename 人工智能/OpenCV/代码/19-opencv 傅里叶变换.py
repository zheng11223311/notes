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

img=cv2.imread('./img/19-1-lena.png',flags=cv2.IMREAD_GRAYSCALE)
# print(img.shape)  #(512, 512, 3) 三维的彩色图片,但是看起来是黑白图片,
# 看起来是灰色的,是因为它的红绿蓝值都一模一样,三个通道的值都相同,通道叠加后没有效果,没有颜色波动,彩色是因为三通道不同的值叠加后有颜色变化
# gray=cv2.cvtColor(img,code=cv2.COLOR_RGB2GRAY) #颜色空间,适合计算

# 傅里叶变换,时域-->频域
# dft=cv2.dft(img/255,flags=cv2.DFT_COMPLEX_OUTPUT)
dft=cv2.dft(np.float32(img),flags=cv2.DFT_COMPLEX_OUTPUT) #等同 gray/255 都是32位
# print(dft) #既有实部,又有虚部
dft_shift=np.fft.fftshift(dft)   #移动0频率的数据到中心,中心会比没有移动过的更加亮,低通滤波,将低频移动到中心
# print(dft_shift)
# print(dft_shift.shape)
cv2.imshow('lena',img)

# 低通滤波,低频滤波,保留低频
h , w = img.shape
h1,w1=h//2,w//2 #图片中心点
mask=np.zeros(shape=(h,w,2),dtype=np.uint8)
mask[w1-50:w1+50,h1-50:h1+50]=1 #中心位置是1,边界是0
dft_shift=dft_shift*mask #中心不变,边界*0变成了0,高频被过滤掉
dft_ishift=np.fft.ifftshift(dft_shift) #移动回去
result=cv2.idft(dft_ishift) #反傅里叶
res=result[:,:,0] #归一化
res=(res-res.min())/(res.max()-res.min())
cv2.imshow('HPF',res)

# 高通滤波,高频滤波,保留高频
# print(img.shape)
# h,w=img.shape
# h1,w1=h//2,w//2 #图片中心点
# # dft_shift[w1-20:w1+20,h1-20:h1+20]=0  #如果没有高频滤波,还原回去的图片和原来的一模一样,但是在cv2 中显示会不一样,plt 中显示的是一模一样
# dft_ishift=np.fft.ifftshift(dft_shift) #移动回去
# result=cv2.idft(dft_ishift) #反傅里叶
# # print(result)
# print(result[:,:,0])
# # cv2.imshow('HPF',result[:,:,0])
# # cv2 显示的图片和plt 显示的色彩差异大
#
# # 解决在cv2 中显示会不一样
# # 数组- 最小值/(max-min) -->0~1 的数据,表示颜色 归一化处理
# res=result[:,:,0]
# res=(res-res.min())/(res.max()-res.min())
# cv2.imshow('HPF',res)

# magnitude_spectrum=20*np.log(cv2.magnitude(dft_shift[:,:,0],dft_shift[:,:,1]))
#
# plt.subplot(121) #添加子视图,1行2列第一个图片
# plt.imshow(img,cmap='gray') #原图如果粗糙模糊更容易对比
# plt.subplot(122)
# plt.imshow(result[:,:,0],cmap='gray')

plt.show()  #中心部分更亮,说明低频分量更多



# cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
cv2.waitKey(0)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失

cv2.destroyAllWindows()  # 销毁内存,释放内存
