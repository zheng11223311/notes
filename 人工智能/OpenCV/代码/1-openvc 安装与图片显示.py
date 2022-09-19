import cv2  # 安装 pip install opencv-contrib-python   大小:42.5M1-openvc 安装与图片显示.py 中文名 计算机视觉
# pypi 下载地址 https://pypi.org/project/opencv-contrib-python/#files
# 文档地址 https://opencv.apachecn.org/#/

if __name__ == '__main__':
    img=cv2.imread('./img/1-1.jpg') # 图片是一个数组数据,加载图片不能是中文,否则无法加载
    print(img.shape) #(610,610,3) 数组形状,610 像素,3 代表蓝绿红颜色,蓝0 绿1 红2
    print(type(img)) #numpy 数组
    print(img) # 三维数组(彩色图片:高度,宽度,像素)

    # cv2.imshow('img1',img) #弹出窗口展示img 图片,窗口名为img1,窗口名中文会乱码,必须使用英文
    # cv2.imshow('img1',img[:,:,::-1]) #此时图片颜色会改变,颜色反转,蓝绿红变成红绿蓝,::-1 代表翻转,最后一个表示颜色值
    # cv2.imshow('img1',img[:,:,[0,2,1]]) #按照指定颜色进行排序,蓝0 绿1 红2
    # 白色翻转后还是白色,因为 255,255,255 颠倒后还是255,255,255

    print(img.dtype) #数据类型 uint8 类型
    print(img-246) #图片白色的部分变成黑色

    # cv2.imshow('img1',img[::-1,:,:]) # 高度翻转,图片上下左右颠倒

    # 改变尺寸
    img=cv2.resize(img,(305,305)) #610 像素 改变为原来的一半,图片缩小

    # 颜色改变
    # img=cv2.cvtColor(img,code=cv2.COLOR_BGR2GRAY) #黑白图片 COLOR_BGR2GRAY brg 转gray ,灰度化处理
    img=cv2.cvtColor(img,code=cv2.COLOR_BGR2HSV) #黑白图片 COLOR_BGR2HSV brg 转HSV ,h色彩,s饱和度,v亮度

    cv2.waitKey() #等待键盘输入,任意输入,触发这个代码,窗口消失
    # cv2.waitKey(0) #等待键盘输入,0 表示无限等待,1000ms=1s 后自动消失
    cv2.destroyAllWindows() #销毁内存,释放内存
