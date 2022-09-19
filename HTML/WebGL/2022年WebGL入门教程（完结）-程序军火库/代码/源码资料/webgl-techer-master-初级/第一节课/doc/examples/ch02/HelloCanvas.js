// HelloCanvas.js (c) 2012 matsuda
function main() {
  // Retrieve <canvas> element
  var canvas = document.getElementById('webgl');

  // Get the rendering context for WebGL
  // getContext  在浏览器上会有不同的差异，使用getWebGLContext 替代
  // getWebGLContext 来自cuon-utils.js 中
  var gl = getWebGLContext(canvas);
  if (!gl) {
    console.log('Failed to get the rendering context for WebGL');
    return;
  }

  // Set clear color
  // 指定清空画布的颜色为黑色
  // 由于webgl 继承opengl 所以颜色取值范围遵循opengl 的取值范围0-1，即黑到白/暗到明
  gl.clearColor(0.0, 0.0, 0.0, 1.0);

  // Clear <canvas>
  // 执行清空
  // 由于继承opengl，清除颜色要指明opengl 清除颜色缓冲区 COLOR_BUFFER_BIT
  // 清除深度缓冲区 DEPTH_BUFFER_BIT
  // 清除模板缓冲区 STENCIL_BUFFER_BIT

  // 如果没有调用  gl.clearColor 默认清除颜色缓冲区为(0.0, 0.0, 0.0, 1.0);
  //gl.clearDepth(depth)  清除深度缓冲区 1.0
  // gl.clearStencil(s) 清除模板缓冲区 1
  gl.clear(gl.COLOR_BUFFER_BIT);
}
