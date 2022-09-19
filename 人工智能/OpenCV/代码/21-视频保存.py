import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np # 安装 pip install numpy
import matplotlib.pyplot as plt #安装 pip install matplotlib


# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

# https://github.com/opencv/opencv  opencv 地址
# https://github.com/opencv/opencv/tree/4.x/data/haarcascades  人脸特征地址
# https://raw.iqiq.io/opencv/opencv/4.x/data/haarcascades/haarcascade_frontalface_alt.xml 人脸特征下载地址,人脸特征有很多种,下载一个测试就可以了




video=cv2.VideoCapture('./video/20-3.mp4') #读取视频文件,视频流,占内存,需要释放内存
# write=cv2.VideoWriter(filename="./video/21-2.mp4", #文件名
#                 # fourcc(c1,c2,c3,c4)  *'MP4V' 将'MP4V' 每个单词分配给每个c1,c2..参数各一个
#                 fourcc=cv2.VideoWriter.fourcc(*'MP4V'),#视频编码格式
#                 fps=24, #帧率,每秒多少帧
#                 frameSize=(360, 320)) #尺寸大小宽高
# 使用avi 格式
write=cv2.VideoWriter(filename="./video/21-2-1.avi", #文件名
                # fourcc(c1,c2,c3,c4)  *'MP4V' 将'MP4V' 每个单词分配给每个c1,c2..参数各一个
                # fourcc=cv2.VideoWriter.fourcc('I','4','2','0'),#视频编码格式
                fourcc=cv2.VideoWriter.fourcc(*'MP42'),#视频编码格式,avi下此格式视频最小
                fps=24, #帧率,每秒多少帧
                frameSize=(360, 320)) #尺寸大小宽高
print(*'MP4V')
# 视频 由一张张图片组成,顺序进行播放 人眼识别的帧率为24帧
# 超过24帧,肉眼反应不过来,就形成了视频

# 加载人脸特征,人脸特征是通过训练得到的
face_detector = cv2.CascadeClassifier('./face_feature/haarcascade_frontalface_alt.xml')  # 路径不能使用中文

while True:
    retval,image=video.read()   #retval boolean 表明是否获取了到了图片
    # print(image.shape) #(360, 320, 3)
    if not retval: #取到了最后一张,为false
        print('视频读取完成')
        break
    image = cv2.resize(image , (360, 320))  # 缩小图片尺寸,减少人脸扫描的耗时
    gray=cv2.cvtColor(image , code=cv2.COLOR_RGB2GRAY) #颜色空间,适合计算
    # 检测人脸,耗时操作,扫描整张图片,会使视频图片循环播放变得很慢
    # 解决方法:将图片二值化,去除颜色维度;减少图片尺寸
    # print(gray)
    gray2=np.repeat(gray.reshape(320,360,1),3,axis=2) #将二维转换为三维,使灰度图片可以被写入视频,360, 320,需要与原视频大小一致
    cv2.imshow('img1',gray)
    faces=face_detector.detectMultiScale(gray)
    for x,y,w,h in faces:
        # cv2.rectangle(image,pt1=(x,y),pt2=(x+w,y+h),color=[0,0,255],thickness=2) #绘制矩形,pt1 左上角,pt2 右下角,color 矩形的颜色,thickness 线条粗细
        face=image[y:y+h,x:x+w]
        face=face[::10,::10]
        face=np.repeat(np.repeat(face,10,axis=0) ,10,axis=1)
        image[y:y + h , x:x + w]=face[:h,:w] #切片,尺寸一致
    # write.write(gray2) #将三维彩色图片写入视频,写入灰白二维的照片,需要将二位转化为三维
    write.write(image) #将三维彩色图片写入视频
    cv2.imshow('img',image)
    # cv2.waitKey(0)  # 等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失
    key=cv2.waitKey(1)
    if key==ord(' '): #如果按下键盘空格,退出,ord 返回ascii码,因为key 是一个ascii 码
        print('退出')
        break
    # print(image.shape)
    # print( video.get(propId=cv2.CAP_PROP_FPS))  #获取视频的帧率
    # print( video.get(propId=cv2.CAP_PROP_FRAME_WIDTH))  #获取视频的宽度,等同image.shape 获取到的
    # print( video.get(propId=cv2.CAP_PROP_FRAME_HEIGHT))  #获取视频的高度,等同image.shape 获取到的
    # print( video.get(propId=cv2.CAP_PROP_FRAME_COUNT))  #获取视频一共有几张图片

cv2.destroyAllWindows()  # 销毁内存,释放内存
video.release() #释放视频内存
write.release() #释放内存
