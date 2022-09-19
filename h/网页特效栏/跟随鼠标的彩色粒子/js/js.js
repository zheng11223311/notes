var canvas=document.getElementById('canvas')
var ctx=canvas.getContext('2d')
canvas.width=window.innerWidth
canvas.height=window.innerHeight
var points=[];
var live=50
var colors=[
    '236 204 104',
    '255,71,87',
    '112,161,255',
    '123,237,159'
]
window.addEventListener('mousemove',function(eve){
    for(var i=0;i<5;i++){
        points.push({
            sx:eve.x,
            sy:eve.y,
            vx:0.5-Math.random(),
            vy:0.5-Math.random(),
            life:live,
            color:colors[parseInt(Math.random()*colors.length)],
            size:Math.random()*5
        })
    }
});
function drawpoints(){
    ctx.clearRect(0,0,canvas.width,canvas.height)
    for(var i=0;i<points.length;i++){
         point=points[i]
        ctx.beginPath()
        ctx.arc(point.sx,point.sy,point.size,Math.PI*2,false)
        ctx.fillStyle="rgba("+point.color+","+point.life/live+")"
        ctx.fill()
        point.life--
        if(point.life<=0){
            points.splice(i,1)
        }
        point.sx+=point.vx*5
        point.sy+=point.vy*5
    }
}

setInterval(drawpoints,10)