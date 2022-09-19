import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
import numpy as np

# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

if __name__ == '__main__':
    img = cv2.imread('./img/2-2.jpg')  # 图片是一个数组数据,加载图片不能是中文,否则无法加载
    img1 = cv2.cvtColor(img, code=cv2.COLOR_BGR2HSV)  # 黑白图片 COLOR_BGR2HSV brg 转HSV ,h色彩,s饱和度,v亮度

    # 定义在HSV 颜色空间中蓝色的范围,即颜色的上下限
    lower_blue = np.array([110,50,50]) #浅蓝色,[110,50,50] 为 hsv 值
    upper_blue = np.array([130,255,255]) #深蓝色
    # 更具蓝色的范围,标记图片中哪些位置是蓝色
    # inRange 是否在这个范围内, lower_blue~upper_blue :蓝色
    # 如果颜色在所给区域的范围内,值不变(1-255的颜色范围),不在那么就是0
    mask=cv2.inRange(img1,lower_blue,upper_blue) #标记蓝色的区域
    # print(mask) # 输出中有0 代表不是标记的蓝色,1 以上代表是蓝色(表示被标记的区域,输出mask时, 0 显示黑色,1显示白色,),相当于选择抠图的范围,后期将为1 的地方进行抠出来,即提取出来为1的部分区域
    # print(mask.max()) #输出其中的最大值

    # cv2.imshow('img1', img)
    # cv2.imshow('img1', img1)
    # cv2.imshow('img1', mask) #显示遮罩层

    res=cv2.bitwise_and(img,img,mask=mask)  #bitwise_and 二进制与运算 将图片使用遮罩,将img 和img 进行求并集,使用mask 遮罩处理(如果mask 中是1的,将会进行并集处理,否者不处理,直接填充为0)
    # res=cv2.bitwise_and(img,img1)  #bitwise_and 二进制与运算(例 110与100 =100) 将图片使用遮罩,将img 和img1 进行求并集

    #将黑色的也变成白色
    cond=res==0
    print(cond)
    for i in range(res.shape[0]): #高度
        for j in range(res.shape[1]): #宽度
            if(res[i,j]==0).all(): #判定像素是否为黑色,all 表示i,j 都为0
                res[i,j]=255    #设置成255 白色

    cv2.imshow('img1', res)  # 显示遮罩层

    cv2.waitKey()  # 等待键盘输入,任意输入,触发这个代码,窗口消失
    # cv2.waitKey(0) #等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失
    cv2.destroyAllWindows()  # 销毁内存,释放内存
