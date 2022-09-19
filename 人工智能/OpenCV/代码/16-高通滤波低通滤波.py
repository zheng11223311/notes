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

img=cv2.imread('./img/15-1.png',0)
f=np.fft.fft2(img)  #傅里叶变换,时域到频域
# print(f) #j 代表虚数
# cond=f<0
# print(cond)
# f_abs=np.abs(f) #绝对值
# print(f_abs.mean()) #平均值 高频波,噪声大,与周围不协调,醒目,显眼,波动大
# print(np.median(f_abs)) #中位数
# print(f_abs.min())  #最小值
# print(np.quantile(f_abs,[0.25,0.5,0.75,0.9])) #几等分位,数组中 25% 50% 75% 90% 对应的值
# f_abs2=np.where(f_abs>528,0,f_abs) #高通滤波,高频过滤,大于528 的变成0

# img2=np.fft.ifft2(f_abs2) #反傅里叶变换 频域到时域
# img2=np.real(img2) #去除虚数部分,保留实部
# print(img2)

# plt.subplot(121)
# plt.imshow(img,cmap='gray')
# plt.subplot(122)
# plt.imshow(img2,cmap='gray')





fshift=np.fft.fftshift(f)   #移动0频率的数据到中心,中心会比没有移动过的更加亮,低通滤波,将低频移动到中心
# print(fshift)

#60*60 范围定义为低频波
row,col=img.shape[0]//2,img.shape[1]//2
fshift[row-30:row+30,col-30:col+30]=0

img2=np.fft.ifft2(f) #反傅里叶变换, 频域-->时域
img2=np.real(img2)  #去除虚数,保留实部
plt.subplot(121)
plt.imshow(img,cmap='gray') #原图如果粗糙模糊更容易对比
plt.subplot(122)
plt.imshow(img2,cmap='gray')



# magnitude_spectrum=20*np.log(np.abs(fshift)) #对数,绝对值计算, 大幅度缩小数据,不让差异太明显
# magnitude_spectrum1=20*np.log(np.abs(f)) #对数,绝对值计算, 大幅度缩小数据,不让差异太明显
#
# # 振幅谱图 图片越光滑(不模糊),即噪声越小,谱图亮点越少,明暗交错越少
# plt.figure(figsize=(12,4)) #调整显示的窗口大小
# # 131 表示1行3列第一个视图
# plt.subplot(131),plt.imshow(img,cmap='gray')
# plt.title('input image')
# # plt.xticks([]),plt.yticks([])  #使坐标轴不显示
# plt.subplot(132),plt.imshow(magnitude_spectrum,cmap='gray')
# plt.title('magnitude_spectrum-shift')   #移动后的谱图
# plt.subplot(133),plt.imshow(magnitude_spectrum1,cmap='gray')
# plt.title('magnitude_spectrum') #没有移动的谱图
# # plt.xticks([]),plt.yticks([])
plt.show()  #中心部分更亮,说明低频分量更多




# cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
cv2.waitKey(0)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失

cv2.destroyAllWindows()  # 销毁内存,释放内存
