import { flooer, water } from './TTexture';
import { BoxBufferGeometry, BufferAttribute, BufferGeometry, CircleGeometry, DoubleSide, EllipseCurve, Group, Line, LineBasicMaterial, Mesh, MeshBasicMaterial, PlaneBufferGeometry, RingBufferGeometry, Shape, ShapeGeometry, WireframeGeometry } from 'three';
import { SphereBufferGeometry } from 'three';
import { MeshStandardMaterial } from 'three';
// 基础物体
const sphereG: SphereBufferGeometry = new SphereBufferGeometry(2, 20, 20)

const sphereM: MeshStandardMaterial = new MeshStandardMaterial({
    color: 'red',
    wireframe: true
})

export const sphere: Mesh = new Mesh(sphereG, sphereM)



// 创建地板
const planeG: PlaneBufferGeometry = new PlaneBufferGeometry()
const planeM: MeshBasicMaterial = new MeshBasicMaterial({
    // color:0xffffff,
    map: water,
})
const plane: Mesh = new Mesh(planeG, planeM)
// 创建立方体 参数 长宽高
const stoneG: BoxBufferGeometry = new BoxBufferGeometry(2, 2, 2)
const stoneM: MeshBasicMaterial = new MeshBasicMaterial({
    map: flooer,
    // color:'red'
})

const stone: Mesh = new Mesh(stoneG, stoneM)
// 创建圆环
// innerRadius — 内部半径，默认值为0.5。
// outerRadius — 外部半径，默认值为1。
// thetaSegments — 圆环的分段数。这个值越大，圆环就越圆。最小值为3，默认值为8。
// phiSegments —  圆环的垂直方向分段数,最小值为1，默认值为8。
// thetaStart — 起始角度，默认值为0。
// thetaLength — 圆心角，默认值为Math.PI * 2。
const ringG: RingBufferGeometry = new RingBufferGeometry(4, 5, 32, 8, 0, Math.PI / 3);
const ringM = new MeshBasicMaterial({ color: "#cccccc", side: DoubleSide,opacity:0.7,transparent:true });
const ring = new Mesh(ringG, ringM);


const ringG1: RingBufferGeometry = new RingBufferGeometry(2.2, 3, 32, 8, 0, Math.PI / 3);
export const ringMesh1 = new Mesh(ringG1, ringM);
const ringG2: RingBufferGeometry = new RingBufferGeometry(2.2, 3, 32, 8, 0, Math.PI / 3);
export const ringMesh2 = new Mesh(ringG2, ringM);
ringMesh2.rotation.z=Math.PI/180*110
const ringG3: RingBufferGeometry = new RingBufferGeometry(2.2, 3, 32, 8, 0, Math.PI / 2);
export const ringMesh3 = new Mesh(ringG3, ringM);
ringMesh3.rotation.z=Math.PI/180*190
const ringM1 = new MeshBasicMaterial({ color: "#1e89e1", side: DoubleSide,opacity:0.7,transparent:true });
const ringG4: RingBufferGeometry = new RingBufferGeometry(3.2, 3.4, 32, 8, 0, Math.PI / 1.6);
export const ringMesh4 = new Mesh(ringG4, ringM1);
const ringG5: RingBufferGeometry = new RingBufferGeometry(3.2, 3.4, 32, 8, 0, Math.PI / 1.6);
export const ringMesh5 = new Mesh(ringG5, ringM1);
ringMesh5.rotation.z = Math.PI/180*125
const ringG6: RingBufferGeometry = new RingBufferGeometry(3.2, 3.4, 32, 8, 0, Math.PI / 1.6);
export const ringMesh6 = new Mesh(ringG6, ringM1);
ringMesh6.rotation.z =  Math.PI/180*240
const ringM7 = new MeshBasicMaterial({ color: "#ffffff", side: DoubleSide,opacity:0.7,transparent:true });
const ringG7: RingBufferGeometry = new RingBufferGeometry(6, 6.1, 100, 8, 0, Math.PI*2);
export const ringMesh7 = new Mesh(ringG7, ringM1);
const ringG8: RingBufferGeometry = new RingBufferGeometry(4.6, 4.9, 32, 8, 0, Math.PI*2);
export const ringMesh8 = new Mesh(ringG8, ringM1);
ringMesh8.rotation.z =  Math.PI/180*240

// 获取顶点位置
console.log(ringG.attributes.position);
// 获取顶点索引
// console.log(ringG.index);

// 创建双曲面圆环骨架
function createshape(aRadius:number,bRadius:number,aStartAngle:number,aEndAngle:number):BufferGeometry {
    const triangleShape = new Shape();
    triangleShape.moveTo(0, 0);
    // triangleShape.lineTo(2,0)
    // aX – 椭圆的中心的X坐标，默认值为0。
    // aY – 椭圆的中心的Y坐标，默认值为0。
    // xRadius – X轴向上椭圆的半径，默认值为1。
    // yRadius – Y轴向上椭圆的半径，默认值为1。
    // aStartAngle – 以弧度来表示，从正X轴算起曲线开始的角度，默认值为0。
    // aEndAngle – 以弧度来表示，从正X轴算起曲线终止的角度，默认值为2 x Math.PI。
    // aClockwise – 椭圆是否按照顺时针方向来绘制，默认值为false。
    // aRotation – 以弧度表示，椭圆从X轴正方向逆时针的旋转角度（可选），默认值为0。

    triangleShape.absarc(
        0, 0,
        // 2,
        // (Math.PI / 180 * 30), -(Math.PI / 180 * 30),
        aRadius,
        aStartAngle,aEndAngle,
        true,
    )
    // 根号
    // triangleShape.lineTo(Math.sqrt(3)/2,-1)
    triangleShape.absarc(
        0, 0,
        // 1.5,
        bRadius,
        aEndAngle,aStartAngle,
        false,
    )
    triangleShape.lineTo(Math.sqrt(3)/2*aRadius, aRadius/2)
    // const geometry1 = new ShapeGeometry( triangleShape );
    var points = triangleShape.getPoints();		//获取组成shape 的顶点
    const geometry = new BufferGeometry().setFromPoints(points) //使用顶点,得到一模一样的几何体

    return geometry
}
// 线两面都可以看到
var material = new LineBasicMaterial({ linewidth: 20, color: "#1e89e1" });
const geometry=createshape(2,1.5,(Math.PI / 180 * 30),-(Math.PI / 180 * 30))
export const ring1 = new Line(geometry, material);
// console.log(ring1.material.linewidth);

export const ring2 = ring1.clone()
ring2.rotation.z = Math.PI

export const ring3 = ring1.clone()
ring3.rotation.z = Math.PI / 2

export const ring4 = ring1.clone()
ring4.rotation.z = -Math.PI / 2

const geometry1=createshape(5,4,(Math.PI / 180 * 30),-(Math.PI / 180 * 30))
export const ring5 = new Line(geometry1, material);
ring5.rotation.z=Math.PI/180*60
export const ring6 = new Line(geometry1, material);
ring6.rotation.z=Math.PI/180*60*3
export const ring7 = new Line(geometry1, material);
ring7.rotation.z=Math.PI/180*60*5
const geometry8=createshape(3.6,3.4,(Math.PI / 180 * 30),-(Math.PI / 180 * 30))
export const ring8 = new Line(geometry8, material);
export const ring9 = new Line(geometry8, material);
ring9.rotation.z=Math.PI/180*90
export const ring10 = new Line(geometry8, material);
ring10.rotation.z=Math.PI/180*180
export const ring11 = new Line(geometry8, material);
ring11.rotation.z=Math.PI/180*270

// 圆圈面
const circleG = new CircleGeometry(1.3, 50);
const circleM = new MeshBasicMaterial({ color: 0x55ffff, side: DoubleSide });
export const circle = new Mesh(circleG, circleM);



// 圆圈
function circleStrokefunc(aRadius:number,aStartAngle:number,aEndAngle:number):BufferGeometry{
    const circleStroke = new Shape();
    circleStroke.moveTo(0, 0);
    circleStroke.absarc(
        0, 0,
        // 1.7,
        // 0, Math.PI * 2,
        aRadius,
        aStartAngle,aEndAngle,
        true
    )
    
    var points = circleStroke.getPoints();
    const circleStrokeG = new BufferGeometry().setFromPoints(points)
    return circleStrokeG
}
const circleStrokeG=circleStrokefunc(1.7,0,Math.PI * 2)
export const circleStrokeMesh = new Line(circleStrokeG, material);
const circleStrokeG1=circleStrokefunc(2.7,0,Math.PI * 2)
export const circleStrokeMesh1 = new Line(circleStrokeG1, material);
const circleStrokeG2=circleStrokefunc(2.5,0,Math.PI * 2)
export const circleStrokeMesh2 = new Line(circleStrokeG2, material);
const circleStrokeG3=circleStrokefunc(3.5,0,Math.PI * 2)
export const circleStrokeMesh3 = new Line(circleStrokeG3, material);
const circleStrokeG4=circleStrokefunc(4,0,Math.PI * 2)
export const circleStrokeMesh4 = new Line(circleStrokeG4, material);

















export const objectList: Mesh[] = [
    // ring
   
]










