// HelloPint2.js (c) 2012 matsuda
// Vertex shader program
// 顶点着色器
var VSHADER_SOURCE = 
// 我们的目标是，将位置信息从JavaScript程序中传给顶点着色器。
// 有两种方式可以做到这点:attribute变量和uniform 变量，
// 使用哪一个变量取决于需传输的数据本身，
// attribute变量传输的是那些与顶点相关的数据，
// 而uniform变量传输的是那些对于所有顶点都相同(或与顶点无关）的数据。
// 本例将使用attribute变量来传输顶点坐标，显然不同的顶点通常具有不同的坐标。

// attribute 变量是一种GLSL ES 变量，被用来从外部顶点着色器向内传输数据，
// 只有顶点着色器能使用它

// 使用attribute 变量
  // 1.在顶点着色器中,声明attribute 变量
  // 2.将 attribute 变量赋值给四维vec4的 a_Position 变量
  // 3.向attribute 变量传输数据

  // 关键词attribute 被称为 存储限定符， 
  // 他表示接下来的变量 a_Position 是一个attribute 变量
  // attribute 变量必须声明成全局变量，数据将从着色器外部传递给该变量
  // 变量的声明必须按照以下的格式
  //  <存储限定符> <类型> <变量名>; 比如: attribute vec4 a_Position; 
  // 注意:每个代码语句结尾都需要;

  // attribute 变量 a_Position 的类型是vec4,
  // a_Position 为自定义变量,可以为任意值
  // 他将被赋值给gl_Position,gl_Position 的类型也是vec4
  // 习惯的, attribute 都以a_ 前缀开头,uniform 变量都以u_ 开始

  'attribute vec4 a_Position;\n' + // attribute variable
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
  // 获取WebGL 上下文
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

  // Get the storage location of a_Position
  // 获取attribute 变量的存储位置 ，即获取顶点着色器中的a_Position
  // a_Position 记录地址,要想向a_Position 传递数据时,
  // 需要先向WebGL 请求该变量的存储地址

  // getAttribLocation 方法的第一个参数是一个 程序对象,在initShaders 之中定义好了
  // 它包括了顶点着色器和片元着色器
  // 第二个参数 是想要获取存储地址的 attribute 变量的名称
  // 返回attribute 变量的存储地址(值大于等于0),-1 不存在
  var a_Position = gl.getAttribLocation(gl.program, 'a_Position');
  if (a_Position < 0) {
    console.log('Failed to get the storage location of a_Position');
    return;
  }

  // Pass vertex position to attribute variable
  // 将顶点位置0.0, 0.0, 0.0 传输给attribute 变量,attribute 传递给 a_Position 变量
  // vertexAttrib3f(location,v0,v1,v2)
  // location 指定要修改的attribute 变量的存储位置
  // v0 指定填充的attribute 变量第一个分量x 的值,以下都为浮点型
  // v1 指定填充的attribute 变量第二个分量y 的值
  // v2 指定填充的attribute 变量第三个分量z 的值
  // a_Position 是vec4 四维,而我们只传递了3个值,这个方法默认会将第四个值设置为1
  gl.vertexAttrib3f(a_Position, 0.0, 0.0, 0.0);

  // 也可以使用类型化数组,即矢量版
  // var position=new Float32Array([1.0,2.0,3.0,1.0]);
  // gl.vertexAttrib4fv(a_Position,position);

  // vertexAttrib3f 的同族函数
  // vertexAttrib1f() 传输一个单精度值(v0) , v1,v2 填充为0.0, v3 填充为1.0
  // vertexAttri2f() 传输两个单精度值(v0 和v1) ,v3 填充为0.0 ,v3 填充为1.0
  // vertexAttrib4f() 传输四个单精度值(v0 v1 v2 v3 ) 填充了所有4个分量


  // webgl 命名规范,继承至底层opengl 的规范
  // gl.vertexAttrib   3         f     (a_Position,position);
  // 基础函数名       参数个数   表示浮点类型,i 表示整型类型
  // 这是opengl 中的glVertexAttrb3f() 的webgl 版

  // 函数后面跟着一个,表示可以接收数组作为参数
  // var position=new Float32Array([1.0,2.0,3.0,1.0]);
  // gl.vertexAttrib4fv(a_Position,position);





  // Specify the color for clearing <canvas>
  // 设置canvas 背景色
  gl.clearColor(0.0, 0.0, 0.0, 1.0);

  // Clear <canvas>
  // 清除canvas，执行绘制背景色
  gl.clear(gl.COLOR_BUFFER_BIT);
    
  // Draw
  // 绘制一个点
  gl.drawArrays(gl.POINTS, 0, 1);
}
