// MultiPoint.js (c) 2012 matsuda
// 顶点着色器
var VSHADER_SOURCE =
  'attribute vec4 a_Position;\n' +
  'void main() {\n' +
  '  gl_Position = a_Position;\n' +
  '  gl_PointSize = 10.0;\n' +
  '}\n';

// 片元着色器
var FSHADER_SOURCE =
  'void main() {\n' +
  '  gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);\n' +
  '}\n';

function main() {
  // 获取canvas
  var canvas = document.getElementById('webgl');

  // 获取webgl 上下文
  var gl = getWebGLContext(canvas);
  if (!gl) {
    console.log('Failed to get the rendering context for WebGL');
    return;
  }

  // 初始化着色器
  if (!initShaders(gl, VSHADER_SOURCE, FSHADER_SOURCE)) {
    console.log('Failed to intialize shaders.');
    return;
  }

  // Write the positions of vertices to a vertex shader
  // 设置顶点的位置
  var n = initVertexBuffers(gl);
  if (n < 0) {
    console.log('Failed to set the positions of the vertices');
    return;
  }

  //设置背景色
  gl.clearColor(0, 0, 0, 1);

  // 清空canvas
  gl.clear(gl.COLOR_BUFFER_BIT);

  // Draw three points
  // 绘制3个点
  // 从第1 个开始绘制,即下标0
  // webgl 系统并不知道缓冲区有多少个顶点的数据(即使知道也不确定是否要全部绘制出来)
  // 所以我们应该显式的告诉他要绘制多少个顶点
  gl.drawArrays(gl.POINTS, 0, n); // n 为 3
}

function initVertexBuffers(gl) {
  // 使用类型化数组Float32Array,
  // 不使用通用类型数组 Array
  // 因为 Array 可以存数字 ,也可以存储字符
  // 而我们需要"大量元素都是同一种类型",即只需要float 数字,不需要字符
  // 类型化数组不支持push() 和pop()
  // 类型化数组只能使用new 创建,使用[] 创建出来的是通用数组

  // 类型化数组的方法/属性/常量值
    // get(index) 获取第index 个元素的值
    // set(index,value) 设置第index 个元素的值为value
    // set(array,offset) 从第offset 个元素开始将数组array 中的值填充进去
    // length 数组的长度
    // BYTES_PER_ELEMENT 数组中每个元素所占的字节数
  var vertices = new Float32Array([
    0.0, 0.5,   -0.5, -0.5,   0.5, -0.5
  ]);

  // new Float32Array(4)  也可以指定数组长度的空数组
  var n = 3; // The number of vertices  点的个数

  // 缓冲区对象Buffer
  // 可以一次性的向着色器传入多个顶点的数据,即可以一次性绘制多个点,比如绘制三角形
  // 而 vertexAttrib3f() 只能绘制一个点

  // 缓冲区对象是webgl 系统中的一块内存区域,
  // 我们可以一次性的向缓冲区对象中填充大量的顶点数据,
  // 然后将这些数据保存在其中,供顶点着色器使用


  // Create a buffer object
  // 创建缓冲区对象
  var vertexBuffer = gl.createBuffer();
  // 删除缓冲区
  // gl.deleteBuffer(vertexBuffer)
  if (!vertexBuffer) {
    console.log('Failed to create the buffer object');
    return -1;
  }

  // Bind the buffer object to target
  // 将缓冲区对象绑定到目标
  // ARRAY_BUFFER 等关键词下一节讲
  gl.bindBuffer(gl.ARRAY_BUFFER, vertexBuffer); //缓冲区对象中存储了顶点的数据(顶点的位置坐标)

  // bindBuffer(target,buffer)
  // 允许使用buffer 表示的缓冲区对象并将其绑定到target 表示的目标上
  // target 可以是以下中的一个
    // gl.ARRAY_BUFFER    表示缓冲区对象中包含了顶点的数据
    // gl.ELEMENT_ARRAY_BUFFER        表示缓冲区对象中包含了顶点的索引值(第6章见)
  // buffer 指定之前由gl.createBuffer() 返回的待绑定的缓冲区对象








  // Write date into the buffer object
  // 向缓冲区对象写入数据
  gl.bufferData(gl.ARRAY_BUFFER, vertices, gl.STATIC_DRAW); // 开辟空间并向缓冲区对象写入数据
  // 将第二个参数vertices 中的数据写入了绑定到gl.ARRAY_BUFFER 上的缓冲区对象,
  // 因为我们不能直接向缓冲区对象中写入数据,只能向绑定缓冲区的 target(gl.ARRAY_BUFFER) 中写入
  
  //  gl.bufferData(target,data,usage)
  // 开辟存储空间,向绑定在target 上的缓冲区对象中写入数据data
  // target   gl.ARRAY_BUFFER  或 gl.ELEMENT_ARRAY_BUFFER    
  // data     写入缓冲区对象的数据(类型化数组,参阅下一节)
  // usage    表示程序将如何使用存储在缓冲区对象中的数据,该参数将帮助webgl 优化操作,
  // 但是就算你传了错误的参数,也不会终止程序(仅仅是降低程序的效率)
    // gl.STATIC_DRAW   只向缓冲区对象中写入一次数据,但需要绘制很多次
    // gl.STREAM_DRAW   只向缓冲区对象中写入一次数据,然后绘制若干次
    // gl.DYNAMIC_DRAW   会向缓冲区对象中多次写入数据,并绘制很多次


  var a_Position = gl.getAttribLocation(gl.program, 'a_Position');
  if (a_Position < 0) {
    console.log('Failed to get the storage location of a_Position');
    return -1;
  }
  // Assign the buffer object to a_Position variable
  // 将缓冲区对象分配给 a_Position 变量
  gl.vertexAttribPointer(a_Position, 2, gl.FLOAT, false, 0, 0);
  // stride 步幅 normalized 正常化
  // vertexAttribPointer(location,size,type,normalized,stride,offset)
  // 将绑定到gl.ARRAY_BUFFER 的缓冲区对象分配给由location 指定的attribute 变量
  // location 指定待分配 attribute 变量的存储位置
  // size 指定缓冲区中每个顶点的分量个数(1-4),若size 比attribute 变量需要的分量数小,
  // 缺失的分量将按照与gl.vertexAttrib[1234]f() 相同的规则补齐,
  // 比如,如果size 为1,那么第2,3 分量自动摄设置为0,第4分量设置为1
  // type 用以以下类型之一来指定数据格式:
    // gl.UNSIGNED_BYTE 无符号字节,Uint8Array
    // gl.SHORT 短整型,Int16Array
    // gl.UNSIGNED_SHORT 无符号短整型,Uint16Array
    // gl.INT 整型,Int32Array
    // gl.UNSIGNED_INT 无符号整型 Uint32Array
    // gl.FLOAT 浮点型,Float32Array
  // noramlized   传入true 或false 表明是否将非浮点型的数据归一化到[0,1]或[-1,1] 区间
  // stride 指定相邻两个顶点间的字节数,默认为0(参见第四章)
  // offset 指定缓冲区对象中的偏移量(以字节为单位),
  // 即attribute 变量从缓冲区中的何处开始存储,
  // 如果是从起始位置开始的,offset 设置为0

  // Enable the assignment to a_Position variable
  // 链接 a_Position 变量与分配给他的缓冲区对象
  gl.enableVertexAttribArray(a_Position);

  return n;  //返回待绘制顶点的数量
}


// 使用缓冲区对象向顶点着色器传入多个顶点的数据,
// 需要遵循以下的五个步骤: (处理其他对象,如纹理对象,帧缓冲区对象 也类似)
// 1.创建缓冲区对象 gl.createBuffer()
// 2.绑定缓冲区对象 gl.bindBuffer()
// 3.将数据写入缓冲区对象 gl.bufferData()
// 4.将缓冲区对象分配给一个attribute 变量 gl.vertexAttribPointer()
// 5.开启attribute 变量 gl.enableVertexAttribArray()