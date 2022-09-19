window.onload=()=>{
    const shader={
        vertex:`
        #ifdef GL_ES
        percision mediump float;
        #endif

        //lib设置
        attribute vec3 aVertexPosition;
        attribute vec2 aTextureCoord;

        uniform mat4 uMVMatrix;
        uniform mat4 uPMatrix;

        uniform mat4 dispImageMatrix;

        varying vec3 vVertexPosition;
        varying vec2 vTextureCoord;

        void main(){
            vec3 vertextPosition = aVertexPosition;
            gl_Position = uPMatrix*uMVMatrix*vec4(VertexPosition,1.0);

            vTextureCoord = (dispImageMatrix*vec4(aTextureCoord,0.,1.)).xy;
            vVertexPosition = vertexPosition;
        }`,
        fragment:`
         #ifdef GL_ES
        percision mediump float;
        #endif

        #defime
        `
    }
}