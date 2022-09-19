// 创建顶点着色器
var vertexShader = `
attribute vec4 a_Position;
attribute vec4 a_Color;
varying vec4 v_Color;
void main(){
    v_Color=a_Color;
    gl_Position=a_Position;
}
`

// 创建片元着色器
var fragmentShader = `
#ifdef GL_ES
precision mediump float;
#endif
varying vec4 v_Color;
void main() {
  gl_FragColor =vec4(1,1,1,1);
}
`
// 执行程序
function main() {
    // 获取canvas
    var canvas = document.getElementById('canvas');
    // 获取webgl 上下文
    var gl = getWebGLContext(canvas);
    if (!gl) {
        console.log('获取webgl 上下文失败！');
        return;
    }

    // 初始化着色器
    if (!initShaders(gl, vertexShader, fragmentShader)) {
        console.log('初始化着色器失败!');
        return;
    }

    // 创建顶点着色器顶点数据
    var n = initVertexBuffers(gl);
    if (n < 0) {
        console.log('创建顶点数据失败!');
        return;
    }

      // Specify the color for clearing <canvas>
  gl.clearColor(0, 0, 0, 1);

  // Clear <canvas>
  gl.clear(gl.COLOR_BUFFER_BIT);

  // Draw the rectangle
//   gl.drawArrays(gl.TRIANGLES, 0, n);
  gl.drawArrays(gl.LINES, 0, n);
}

var unitSize=0.05; //画布高度的5% 大小
// console.log(unitSize);
function seGridSize(size=1){
    // 总顶点数
    var totall=size*size*4
    grid=[]

    var vertices = new Float32Array([
        -1,1,
        1,1,

        1,1,
        1,-1,

        1,-1,
        -1,-1,

        -1,-1,
        -1,1

    ]);
    var vertices1=vertices.map((item,index,array)=>{
        return item*unitSize
    })
    console.log(vertices1);
    return vertices1
}

function initVertexBuffers(gl) {
    vertices=seGridSize()
    // var vertices = new Float32Array([
    //     0.1,0.1,
    //     0.3,0.1,

    //     0.3,0.1,
    //     0.3,-0.1,

    //     0.3,-0.1,
    //     0.1,-0.1,

    //     0.1,-0.1,
    //     0.1,0.1,
    // ]);
    var n = vertices.length; // 顶点个数

    //创建缓冲区
    var vertexBuffer = gl.createBuffer();
    if (!vertexBuffer) {
        console.log('缓冲区创建失败!');
        return false;
    }

  // 绑定缓冲区到目标
  gl.bindBuffer(gl.ARRAY_BUFFER, vertexBuffer);
  // 绑定数据到缓冲区
  gl.bufferData(gl.ARRAY_BUFFER, vertices, gl.STATIC_DRAW);

    // 获取属性
  var a_Position = gl.getAttribLocation(gl.program, 'a_Position');
  if (a_Position < 0) {
    console.log('获取属性 a_Position 失败!');
    return -1;
  }
  // 将数据传递给属性 a_Position
  gl.vertexAttribPointer(a_Position, 2, gl.FLOAT, false, 0, 0);

  // 开启属性
  gl.enableVertexAttribArray(a_Position);

  return n;
}

