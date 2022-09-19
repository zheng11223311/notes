import cv2
import numpy as np

img = cv2.imread( './img/29-1.png' )
# 预处理，包括灰度处理，高斯滤波平滑处理，Sobel提取边界，图像二值化
# 对于高斯滤波函数的参数设置，第四个参数设为零，表示不计算y方向的梯度，原因是车牌上的数字在竖方向较长，重点在于得到竖方向的边界
gray = cv2.cvtColor( img , cv2.COLOR_RGB2GRAY )  # 灰度化处理
# 去除噪声,并且边界依然锋利清晰
gray1=cv2.bilateralFilter(gray,11,17,17)

cv2.imshow( 'img' , img )
cv2.imshow( 'gray' , gray )
cv2.imshow( 'gray1' , gray1 )

# 获取轮廓
edged=cv2.Canny(gray,170,200)
# 找到轮廓
cnts,new =cv2.findContours(edged.copy(),cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)

# 排序,按照面积大小排序,翻转,选取30个
cnts=sorted(cnts,key = cv2.contourArea,reverse = True)[:30]
NumberPlateCnt=None


# 绘制轮廓
# img1=img.copy()
# cv2.drawContours(img1, cnts, -1, (0, 255, 0), 3)

idx=7
# 循环找到最有可能是车牌的轮廓
for c in cnts:
    peri=cv2.arcLength(c,True)
    approx=cv2.approxPolyDP(c,0.02*peri,True)
    if len(approx)==4: #选择4个角的轮廓,最有可能是车牌
        NumberPlateCnt=approx   #这就是车牌的索引

        x,y,w,h=cv2.boundingRect(c) #矩形边界
        new_img=gray[y:y+h,x:x+w]
        cv2.imwrite('./img/31-'+str(idx)+'.png',new_img)
        idx+=1
        break
cv2.drawContours(img, [NumberPlateCnt], -1, (0, 255, 0), 3)
cv2.imshow( "lpr" , img )
cv2.waitKey( 0 )
