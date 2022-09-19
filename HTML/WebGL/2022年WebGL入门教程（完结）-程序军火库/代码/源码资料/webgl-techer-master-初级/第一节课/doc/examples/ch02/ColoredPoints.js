// ColoredPoint.js (c) 2012 matsuda
// Vertex shader program
var VSHADER_SOURCE =
  'attribute vec4 a_Position;\n' +
  'void main() {\n' +
  '  gl_Position = a_Position;\n' +
  '  gl_PointSize = 10.0;\n' +
  '}\n';

// Fragment shader program
// 片元着色器
// 可以使用 uniform 变量将颜色值传给着色器，其步骤与用 attribute 变量传递相似
// 不同的是：uniform 是向片元着色器传递，attribute 是向顶点着色器传递
var FSHADER_SOURCE =
// 精度限定词,以后讲
// 表明所有未声明的精度的变量的精度为此默认精度，以及指定变量的范围（最大值和最小值）
// mediump 中等精度
  'precision mediump float;\n' +
  // <存储限定符> <类型> <变量名> 
  //  uniform 习惯以u_ 开头
  // uniform 可以指定任意类型,而attribute 只能指定float 类型
  'uniform vec4 u_FragColor;\n' +  // uniform変量
  'void main() {\n' +
  '  gl_FragColor = u_FragColor;\n' +
  '}\n';

function main() {
  // Retrieve <canvas> element
  // 获取canvas
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
  //  获取a_Position 的存储位置
  var a_Position = gl.getAttribLocation(gl.program, 'a_Position');
  if (a_Position < 0) {
    console.log('Failed to get the storage location of a_Position');
    return;
  }

  // Get the storage location of u_FragColor
  // 获取u_FragColor 的存储位置
  var u_FragColor = gl.getUniformLocation(gl.program, 'u_FragColor');
  if (!u_FragColor) {
    console.log('Failed to get the storage location of u_FragColor');
    return;
  }

  // Register function (event handler) to be called on a mouse press
  // 注册鼠标点击按下的事件
  canvas.onmousedown = function(ev){ click(ev, gl, canvas, a_Position, u_FragColor) };

  // Specify the color for clearing <canvas>
  gl.clearColor(0.0, 0.0, 0.0, 1.0);

  // Clear <canvas>
  gl.clear(gl.COLOR_BUFFER_BIT);
}

var g_points = [];  // The array for the position of a mouse press 鼠标点击位置数组
var g_colors = [];  // The array to store the color of a point 存储点颜色的数组
function click(ev, gl, canvas, a_Position, u_FragColor) {
  var x = ev.clientX; // x coordinate of a mouse pointer 鼠标点击处的x 轴坐标
  var y = ev.clientY; // y coordinate of a mouse pointer 鼠标点击处的y 轴坐标
  var rect = ev.target.getBoundingClientRect();

  x = ((x - rect.left) - canvas.width/2)/(canvas.width/2);
  y = (canvas.height/2 - (y - rect.top))/(canvas.height/2);

  // Store the coordinates to g_points array
  g_points.push([x, y]);
  // Store the coordinates to g_points array
  if (x >= 0.0 && y >= 0.0) {      // First quadrant 第一象限
    g_colors.push([1.0, 0.0, 0.0, 1.0]);  // Red 红色
  } else if (x < 0.0 && y < 0.0) { // Third quadrant 第三象限
    g_colors.push([0.0, 1.0, 0.0, 1.0]);  // Green 绿
  } else {                         // Others 其他象限
    g_colors.push([1.0, 1.0, 1.0, 1.0]);  // White 白
  }

  // Clear <canvas>
  gl.clear(gl.COLOR_BUFFER_BIT);

  var len = g_points.length;
  for(var i = 0; i < len; i++) {
    var xy = g_points[i];
    var rgba = g_colors[i];

    // Pass the position of a point to a_Position variable
    // 将点的位置传输到a_Position 中
    gl.vertexAttrib3f(a_Position, xy[0], xy[1], 0.0);
    // Pass the color of a point to u_FragColor variable
    // 将点的颜色传输到 u_FragColor 中
    gl.uniform4f(u_FragColor, rgba[0], rgba[1], rgba[2], rgba[3]);


    // gl.uniform4f(v0,v1,v2,v3) 同族函数
    // gl.uniform1f(v0)         仅传递一个值,v1,v2 为0.0  v3 为1.0
    // gl.uniform2f(v0,v1)      v2 为0.0  v3 为1.0
    // gl.uniform3f(v0,v1,v2)   v3 为1.0



    // Draw
    gl.drawArrays(gl.POINTS, 0, 1);
  }
}
