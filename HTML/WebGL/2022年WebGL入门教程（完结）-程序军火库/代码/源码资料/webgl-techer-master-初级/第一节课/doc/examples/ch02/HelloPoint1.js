// HelloPoint1.js (c) 2012 matsuda
// Vertex shader program
//  顶点着色器程序,为GLSL 强类型语言
var VSHADER_SOURCE = 
// 着色器必须包含一个入口函数main,viod 表示这个函数不会有返回值
// main() 中不能指定参数
  'void main() {\n' +  // 将长字符换行显示有助于报错时显示错误的行数
  // vec4 gl_Position, float  gl_PointSize 是顶点着色其的内置变量
  // vec4 四维向量,其中的值都是为浮点型 float, (float,float,float,float) 为 x,y,z,w, w 暂时用不到
  '  gl_Position = vec4(0.0, 0.0, 0.0, 1.0);\n' + // 设置坐标,必须被赋值
  '  gl_PointSize = 10.0;\n' +                    // 设置点的尺寸10像素,默认为1
  '}\n';

  // 齐次坐标使用如下的符号描述:(x, y,z,w)。
  // 齐次坐标(x, y,z,w)等价于三维坐标(x/w, y/w, z/w)。
  // 所以如果齐次坐标的第4个分量是1,你就可以将它当做三维坐标来使用
  // w的值必须是大于等于0的。如果w趋近于0，那么它所表示的点将趋近无穷远，
  // 所以在齐次坐标系中可以有无穷的概念。
  // 齐次坐标的存在，使得用矩阵乘法(下一章介绍)来描述顶点变换成为可能，
  // 三维图形系统在计算过程中,通常使用齐次坐标来表示顶点的三维坐标。
  





// Fragment shader program
// 片元着色器程序
var FSHADER_SOURCE =
  'void main() {\n' +
  // 片元着色器将点的颜色赋值给gl_FragColor 变量,
  // gl_FragColor 是片元着色器唯一的内置变量
  // 他控制着像素在屏幕上的最终颜色
  // vec4 gl_FragColor rgba 格式
  '  gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);\n' + // Set the point color  设置点的颜色
  '}\n';

function main() {
  // Retrieve <canvas> element
  var canvas = document.getElementById('webgl');

  // Get the rendering context for WebGL
  // 获取webgl 绘图上下文
  var gl = getWebGLContext(canvas); 
  if (!gl) {
    console.log('Failed to get the rendering context for WebGL');
    return;
  }

  // Initialize shaders
  // 初始化着色器
  // initShaders 为coun-utils.js 封装好的函数
  if (!initShaders(gl, VSHADER_SOURCE, FSHADER_SOURCE)) {
    console.log('Failed to intialize shaders.');
    return;
  }

  // Specify the color for clearing <canvas>
  // 设置canvas 背景颜色
  gl.clearColor(0.0, 0.0, 0.0, 1.0);

  // Clear <canvas>
  // 执行清空缓冲区
  gl.clear(gl.COLOR_BUFFER_BIT);

  // Draw a point
  // 绘制一个点
  // drawArrays是一个强大的函数,可以绘制各种图形
  // gl.drawArrays(mode,first,count);
  // 执行顶点着色器,按照mode 参数指定的方式绘制图形
  // mode  :
    // gl.POINTS 绘制一个点,
    // gl.LINES 绘制线段
    // gl.POINTS_STRIP 绘制 所有线段相连,最前一条线段的头部和最后一条线段的尾部不相连
    // gl.POINTS_LOOP 绘制 所有线段相连,最前一条线段的头部和最后一条线段的尾部相连,形成一个环
    // ....
  // first : 指定从哪个顶点开始绘制(整形数),0 表示从1开始
  // count : 指定绘制需要用到多少个顶点(整形数)
  gl.drawArrays(gl.POINTS, 0, 1);

  // 当程序执行  gl.drawArrays 时,顶点着色器将被执行count 次,每次处理一个顶点
  // 在着色器执行的时候,将调用并逐行执行内部的main 函数
  // 一旦顶点着色器执行完后,片元着色器就会开始执行,调用其中的mian 函数
}


//  webgl 执行流程
// 1.获取canvas 元素
// 2.获取webgl 绘图上下文
// 3.初始化着色器
// 4.设置canvas 背景色
// 5.清除canvas
// 6.绘图