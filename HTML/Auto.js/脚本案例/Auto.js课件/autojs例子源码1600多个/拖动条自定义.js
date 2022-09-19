"ui";
ui.layout(
    <frame>
    <View marginTop="79"h="5"w="auto" bg="#00ff00" />
         <View marginTop="79"h="5"w="auto" bg="#00ff00" />
    <View marginTop="79"h="5"w="auto" bg="#00ff00" />

     
     
     
        <text id="t"marginTop="51"textColor="red"textSize="30"text="❤️"/>

    </frame>
    
);
ui.t.setOnTouchListener(function(view, event){
    switch(event.getAction()){
        case event.ACTION_DOWN:
          x = event.getRawX();
           y = event.getRawY();
           var view=ui.t
           var rect=new android.graphics.Rect
   view.getBoundsOnScreen(rect,true)//布尔值可省略
   bx=rect.left
   by=rect.top
       //     windowX = window.getX();
        //    windowY = window.getY();
            downTime = new Date().getTime();
           log("点击");
         //  log(x+","+y)
            return true;
        case event.ACTION_MOVE:
        
    
          //移动手指时调整悬浮窗位置
          ui.t.x=bx + (event.getRawX() - x)
       //    ui.t.y=by + (event.getRawY() - y);
       
       
       
        
            return true;
        case event.ACTION_UP:
          
        log("弹起");
            log(x+","+y) 
        
            return true;
    }
    return true;
});
