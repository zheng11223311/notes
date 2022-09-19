



var ra = new RootAutomator();

events.on('exit', function(){
  ra.exit();
});


ra.touchDown(100, 400,1);

ra.touchMove(600, 800,1);

ra.touchUp(1)


toast('阿涛QQ/微信：656206105')