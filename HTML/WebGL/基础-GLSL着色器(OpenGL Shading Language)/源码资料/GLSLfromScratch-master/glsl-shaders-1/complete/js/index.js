const vshader = `
void main() {	
  // viewMatrix:视图矩阵：将顶点从世界空间移动到摄像机视图。
// projectionMatrix:投影矩阵：将顶点移动到屏幕坐标
// modelViewMatrix:模型视图矩阵：将模型矩阵和视图矩阵两者结合起来。

// 需要将位置乘以模型矩阵和投影矩阵的位置坐标
// 得到的是三维矩阵,自己填补上1,作为四维矩阵
  gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
}
`
const fshader = `
uniform vec3 u_color; //uniform 中属性u_color

void main (void)
{
  // 颜色为四维矩阵,rgba
  // 颜色的通道值介于0-1 之间
  gl_FragColor = vec4(u_color, 1.0); 
}
`


const scene = new THREE.Scene();
const camera = new THREE.OrthographicCamera( -1, 1, 1, -1, 0.1, 10 );

const renderer = new THREE.WebGLRenderer();
renderer.setSize( window.innerWidth, window.innerHeight );
document.body.appendChild( renderer.domElement );

const clock = new THREE.Clock();

//uniforms 用于将数据从控制程序传递到着色器
const uniforms = { //用js 控制shader,而不是shader 本身的语言
  u_color: { value: new THREE.Color(0xff0000) }, //js 控制其颜色
  u_time: { value: 0.0 }, //启动时间,记录时间
  u_mouse: { value:{ x:0.0, y:0.0 }},  //存储鼠标x,y 值
  u_resolution: { value:{ x:0, y:0 }} //resolution 分辨率,存储宽度和高度
}

const geometry = new THREE.PlaneGeometry( 2, 2 );
const material = new THREE.ShaderMaterial( {
  uniforms: uniforms, // 使用js 控制shader
  vertexShader: vshader, // 顶点着色器
  fragmentShader: fshader //片元着色器
} );

const plane = new THREE.Mesh( geometry, material );
scene.add( plane );

camera.position.z = 1;

onWindowResize();
if ('ontouchstart' in window){
  document.addEventListener('touchmove', move);
}else{
  window.addEventListener( 'resize', onWindowResize, false );
  document.addEventListener('mousemove', move);
}

function move(evt){
console.log(material.uniforms.u_color.value);
  uniforms.u_mouse.value.x = (evt.touches) ? evt.touches[0].clientX : evt.clientX;
  uniforms.u_mouse.value.y = (evt.touches) ? evt.touches[0].clientY : evt.clientY;
}

animate();

function onWindowResize( event ) {
  const aspectRatio = window.innerWidth/window.innerHeight;
  let width, height;
  if (aspectRatio>=1){
    width = 1;
    height = (window.innerHeight/window.innerWidth) * width;
  }else{
    width = aspectRatio;
    height = 1;
  }
  camera.left = -width;
  camera.right = width;
  camera.top = height;
  camera.bottom = -height;
  camera.updateProjectionMatrix();
  renderer.setSize( window.innerWidth, window.innerHeight );
  uniforms.u_resolution.value.x = window.innerWidth;
  uniforms.u_resolution.value.y = window.innerHeight;
}

function animate() {
  requestAnimationFrame( animate );
  uniforms.u_time.value += clock.getDelta();
  renderer.render( scene, camera );
}