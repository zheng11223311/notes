// 初始化opencv
runtime.images.initOpenCvIfNeeded();
// 导入类
importClass(org.opencv.core.CvType);
importClass(org.opencv.core.Scalar);
importClass(org.opencv.core.Point);
importClass(java.util.LinkedList);
importClass(org.opencv.imgproc.Imgproc);
importClass(org.opencv.imgcodecs.Imgcodecs);
importClass(org.opencv.core.Core);
importClass(org.opencv.core.Mat);
importClass(org.opencv.core.MatOfDMatch);
importClass(org.opencv.core.MatOfKeyPoint);
importClass(org.opencv.core.MatOfRect);
importClass(org.opencv.core.Size);
importClass(org.opencv.features2d.DescriptorMatcher);
importClass(org.opencv.features2d.Features2d);
importClass(android.graphics.Matrix);
importClass(org.opencv.android.Utils);
importClass(android.graphics.Bitmap);

// 可设置的参数
let thickness = 2; //绘制轮廓的线的粗细
let kSize = 30; // 高斯内核的大小, 必须为整数或者奇数
let numberOfLayerOverlays = 3; // 高斯模糊叠加的图层数量, 用于制造发光效果
let color = "#ff0000";

// 读取图片
let imgPath = files.path("./img/1.jpg");
var img = Imgcodecs.imread(imgPath);

// 读取灰度图
var imgGray = Imgcodecs.imread(imgPath, 0);
// 降噪
let imgBlur = imgGray.clone();
Imgproc.GaussianBlur(imgGray, imgBlur, Size(3, 3), 0);
// 边缘检测
var imgCanny = imgBlur.clone();
Imgproc.Canny(imgBlur, imgCanny, 120, 200, 3, false);
// 创建Mat实例
let rows = img.rows();
let cols = img.cols();
let imgContour = Mat(rows, cols, CvType.CV_8UC3);
// 绘制轮廓
let red = colors.red(color);
let green = colors.green(color);
let blue = colors.blue(color);
let alpha = colors.alpha(color);
// cv::Scalar(v1, v2, v3, v4), 前面的三个参数是依次设置BGR的，和RGB相反，第四个参数设置图片的透明度
Imgproc.drawContours(imgContour, contours, -1, Scalar(blue, green, red, alpha), thickness, 8);
// 查看图片
function viewMat(mat) {
    let tempFilePath = files.join(files.getSdcardPath(), "脚本", "mat.png");
    Imgcodecs.imwrite(tempFilePath, mat);
    app.viewFile(tempFilePath);
  }