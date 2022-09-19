// ClickedPints.js (c) 2012 matsuda
// Vertex shader program
// 顶点着色器
var VSHADER_SOURCE =
  'attribute vec4 a_Position;\n' +
  'void main() {\n' +
  '  gl_Position = a_Position;\n' +
  '  gl_PointSize = 10.0;\n' +
  '}\n';

// Fragment shader program
// 片元着色器
var FSHADER_SOURCE =
  'void main() {\n' +
  '  gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);\n' +
  '}\n';

function main() {
  // Retrieve <canvas> element
  // 获取canvas 元素
  var canvas = document.getElementById('webgl');

  // Get the rendering context for WebGL
  // 获取webgl 上下文
  var gl = getWebGLContext(canvas);
  if (!gl) {
    console.log('Failed to get the rendering context for WebGL');
    return;
  }

  // Initialize shaders
  // 初始化着色器
  if (!initShaders(gl, VSHADER_SOURCE, FSHADER_SOURCE)) {
    console.log('Failed to intialize shaders.');
    return;
  }

  // // Get the storage location of a_Position
  // 获取a_Position  变量的存储位置
  var a_Position = gl.getAttribLocation(gl.program, 'a_Position');
  if (a_Position < 0) {
    console.log('Failed to get the storage location of a_Position');
    return;
  }

  // Register function (event handler) to be called on a mouse press
  // 注册鼠标点击事件响应函数
  canvas.onmousedown = function(ev){ click(ev, gl, canvas, a_Position); };

  // Specify the color for clearing <canvas>
  gl.clearColor(0.0, 0.0, 0.0, 1.0);

  // Clear <canvas>
  gl.clear(gl.COLOR_BUFFER_BIT);
}

// 鼠标点击位置数组
var g_points = []; // The array for the position of a mouse press
function click(ev, gl, canvas, a_Position) {
  var x = ev.clientX; // x coordinate of a mouse pointer
  var y = ev.clientY; // y coordinate of a mouse pointer
  // 获取画布的矩形边框
  var rect = ev.target.getBoundingClientRect() ;


  // webgl 以中心点为原点0,0, [-1,1]
  // canvas 以左上角为原点0,0, [width,height] 而且canvas 与可视窗口大小还有一定的距离,需要计算,所以需要转换

  x = ((x - rect.left) - canvas.width/2)/(canvas.width/2); //鼠标点击处的x 坐标
  y = (canvas.height/2 - (y - rect.top))/(canvas.height/2); //鼠标点击处的y 坐标
  // Store the coordinates to g_points array
  // 将坐标存储到 g_points 数组中
  // 需要把所有点击位置记录下来,而不是仅仅记录最近的一次点击的位置
  // 因为webgl 使用的是颜色缓冲区,系统操作绘制实际上是在颜色缓冲区中绘制,
  // 绘制结束后,将缓冲区中的内容显示在屏幕上,然后颜色缓冲区的颜色就会被重置为0,0,0,0
  // 鼠标点击之后,就会重新绘制,所以需要保留之前点击的位置
  g_points.push(x); g_points.push(y);

  // Clear <canvas>
  // 清除canvas
  gl.clear(gl.COLOR_BUFFER_BIT);

  // 算法优化,提取出来,防止for循环重复计算
  var len = g_points.length;
  for(var i = 0; i < len; i += 2) {
    // Pass the position of a point to a_Position variable
    // 将点的位置传递到变量 a_Position 中
    gl.vertexAttrib3f(a_Position, g_points[i], g_points[i+1], 0.0);

    // Draw
    // 绘制点
    gl.drawArrays(gl.POINTS, 0, 1);
  }
}
