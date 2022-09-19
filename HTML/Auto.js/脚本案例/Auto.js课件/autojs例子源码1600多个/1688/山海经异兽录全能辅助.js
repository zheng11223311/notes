var window = floaty.window(
    <frame><linear>
        <button id="action" text="助" w="40" h="40" color="#ffffff" bg="#77000000"/>
   </linear> </frame>
);


var execution = null;

//记录按键被按下时的触摸坐标
var x = 0, y = 0;
//记录按键被按下时的悬浮窗位置
var windowX, windowY;
//记录按键被按下的时间以便判断长按等动作
var downTime;
window.action.setOnTouchListener(function(view, event){
    switch(event.getAction()){
        case event.ACTION_DOWN:
            x = event.getRawX();
            y = event.getRawY();
            windowX = window.getX();
            windowY = window.getY();
            downTime = new Date().getTime();
            return true;
        case event.ACTION_MOVE:
            //移动手指时调整悬浮窗位置
            window.setPosition(windowX + (event.getRawX() - x),
                windowY + (event.getRawY() - y));
            //如果按下的时间超过1.5秒判断为长按，退出脚本
            //if(new Date().getTime() - downTime > 1500){
                //exit();
            //}
            return true;
        case event.ACTION_UP:
            //手指弹起时如果偏移很小则判断为点击
            if(Math.abs(event.getRawY() - y) < 5 && Math.abs(event.getRawX() - x) < 5){
                onClick();
            }
            return true;
    }
    return true;
});
bkz=0;
function onClick(){
   /* if(bkz==0){
        bkz=1;
        window.action.text("..");*/
    threads.start(function(){
        选择();
       /* bkz=0;
       ui.run(function(){
        window.action.text("CA");
       });*/
    });}
//}

var jb=["换ip","单计时","多计时","web搜索"];
var nr=[b64("6Lev55Sx5ZmoaXAgPSAiMTkyLjE2OC4zMS4xIjsK6LSm5Y+3ID0gImFkbWluIjsK5a+G56CBID0gIjkzNzUzMTIxNyI7Ci8v5LuF5LuF6YCC55So5LqO5bCP57Gz6Lev55Sx5Zmo77yM6ZyA6KaB6Lev55Sx5Zmo55So5oi35ZCN5ZKM5a+G56CBCgpjb25zb2xlLnNob3coKTsKY29uc29sZS5zZXRQb3NpdGlvbigxMDAsODAwKTsKdmFyIOeZu+W9leWcsOWdgCA9ICJodHRwOi8vIiArIOi3r+eUseWZqGlwICsgIi9jZ2ktYmluL2x1Y2kvYXBpL3hxc3lzdGVtL2xvZ2luIjsKdmFyIHN0b2sgPSBodHRwLnBvc3Qo55m75b2V5Zyw5Z2ALCB7CiAgICAidXNlcm5hbWUiOiDotKblj7csCiAgICAicGFzc3dvcmQiOiDlr4bnoIEKfSkuYm9keS5qc29uKCkudG9rZW47Ci8vbG9nKCLlr4bpkqU6IiArIHN0b2spOwoKZnVuY3Rpb24gbWFpbigpIHsKICAgIHZhciBhID0geHgoKTsKICAgIHZhciB0ZXh0ID0gImlwOiIgKyBhLmlwLmFkZHJlc3M7CiAgICBsb2codGV4dCk7CiAgICB1bmxpbmsoKTsKICAgIGxvZygi6YeN6IGU5LitIik7CiAgICBsaW5rKCk7CiAgICAvL2NvbnNvbGUuaGlkZSgpOwogICAgd2hpbGUgKHRydWUpIHsKICAgICAgICBhID0geHgoKTsKICAgICAgICBpZiAoYS5pcC5hZGRyZXNzID09ICIiKSB7CiAgICAgICAgICAgIHNsZWVwKDEwMCk7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgdmFyIHRleHQgPSAiaXA6IiArIGEuaXAuYWRkcmVzczsKICAgICAgICAgICAgbG9nKHRleHQpOwogICAgICAgICAgICBicmVhazsKICAgICAgICB9OwogICAgfQp9CgpmdW5jdGlvbiB1bmxpbmsoKSB7CiAgICB2YXIgdXJsID0gImh0dHA6Ly8iICsg6Lev55Sx5ZmoaXAgKyAiL2NnaS1iaW4vbHVjaS87c3Rvaz0iICsgc3RvayArICIvYXBpL3hxbmV0d29yay9wcHBvZV9zdG9wIjsKICAgIHZhciBhID0gaHR0cC5nZXQodXJsKTsKfQoKZnVuY3Rpb24gbGluaygpIHsKICAgIHZhciB1cmwgPSAiaHR0cDovLyIgKyDot6/nlLHlmahpcCArICIvY2dpLWJpbi9sdWNpLztzdG9rPSIgKyBzdG9rICsgIi9hcGkveHFuZXR3b3JrL3BwcG9lX3N0YXJ0IjsKICAgIHZhciBhID0gaHR0cC5nZXQodXJsKS5ib2R5LnN0cmluZygpOwp9CgpmdW5jdGlvbiB4eCgpIHsKICAgIHZhciB1cmwgPSAiaHR0cDovLyIgKyDot6/nlLHlmahpcCArICIvY2dpLWJpbi9sdWNpLztzdG9rPSIgKyBzdG9rICsgIi9hcGkveHFuZXR3b3JrL3BwcG9lX3N0YXR1cyI7CiAgICB2YXIgYSA9IGh0dHAuZ2V0KHVybCkuYm9keS5qc29uKCk7CiAgICByZXR1cm4gYQp9Cm1haW4oKTsKc2xlZXAoMzAwMCk7CmNvbnNvbGUuaGlkZSgpOwogCg=="),
b64("dmFyIHdpbmRvdyA9IGZsb2F0eS53aW5kb3coCiAgIDxmcmFtZT4KICAgPHZlcnRpY2FsPgogICA8bGluZWFyPgogICAgICAgIDxidXR0b24gaWQ9ImFjdGlvbiIgdGV4dD0iKzAwOjAwOjAwIiBncmF2aXR5PSJsZWZ0IiB3PSI3MCIgaD0iNDAiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzc3MDAwMDAwIi8+CiAgIDwvbGluZWFyPiAgCgogICA8L3ZlcnRpY2FsPgogICA8L2ZyYW1lPgopOwp2YXIgd2luZG93MiA9IGZsb2F0eS53aW5kb3coCiAgICA8ZnJhbWU+CiAgICA8dmVydGljYWw+CjxsaW5lYXI+CiAgIDxidXR0b24gaWQ9Im4xIiB0ZXh0PSIxIiB3PSI0MCIgaD0iNDAiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzc3MDAwMDAwIiBtYXJnaW49IjAgMSAxIDAiLz4KICAgPGJ1dHRvbiBpZD0ibjIiIHRleHQ9IjIiIHc9IjQwIiBoPSI0MCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjNzcwMDAwMDAiIG1hcmdpbj0iMCAxIDAgMCIvPgogICA8YnV0dG9uIGlkPSJuMyIgdGV4dD0iMyIgdz0iNDAiIGg9IjQwIiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM3NzAwMDAwMCIgbWFyZ2luPSIwIDEgMCAwIi8+CiAgIDxidXR0b24gaWQ9Im5zdGFyIiB0ZXh0PSLilrIiIHc9IjQwIiBoPSI0MCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjNzcwMDAwMDAiLz4KICAgPC9saW5lYXI+IAogICAKICAgPGxpbmVhcj4KICAgPGJ1dHRvbiBpZD0ibjQiIHRleHQ9IjQiIHc9IjQwIiBoPSI0MCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjNzcwMDAwMDAiIG1hcmdpbj0iMCAxIDEgMCIvPgogICA8YnV0dG9uIGlkPSJuNSIgdGV4dD0iNSIgdz0iNDAiIGg9IjQwIiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM3NzAwMDAwMCIgbWFyZ2luPSIwIDEgMCAwIi8+CiAgIDxidXR0b24gaWQ9Im42IiB0ZXh0PSI2IiB3PSI0MCIgaD0iNDAiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzc3MDAwMDAwIiBtYXJnaW49IjAgMSAwIDAiLz4KICAgPGJ1dHRvbiBpZD0ibnN0b3AiIHRleHQ9IuKWoCIgdz0iNDAiIGg9IjQwIiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM3NzAwMDAwMCIvPgogICA8L2xpbmVhcj4gCiAgIDxsaW5lYXI+CiAgIDxidXR0b24gaWQ9Im43IiB0ZXh0PSI3IiB3PSI0MCIgaD0iNDAiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzc3MDAwMDAwIiBtYXJnaW49IjAgMSAxIDAiLz4KICAgPGJ1dHRvbiBpZD0ibjgiIHRleHQ9IjgiIHc9IjQwIiBoPSI0MCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjNzcwMDAwMDAiIG1hcmdpbj0iMCAxIDAgMCIvPgogICA8YnV0dG9uIGlkPSJuOSIgdGV4dD0iOSIgdz0iNDAiIGg9IjQwIiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM3NzAwMDAwMCIgbWFyZ2luPSIwIDEgMCAwIi8+CiAgIDxidXR0b24gaWQ9Im5iNSIgdGV4dD0i4pGkIiB3PSI0MCIgaD0iNDAiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzc3MDAwMDAwIi8+CiAgIDwvbGluZWFyPiAKICAgCiAgIDxsaW5lYXI+CiAgIDxidXR0b24gaWQ9Im53ZW4iIHRleHQ9IuW4riIgdz0iNDAiIGg9IjQwIiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM3NzAwMDAwMCIgbWFyZ2luPSIwIDEgMCAwIi8+CiAgIDxidXR0b24gaWQ9Im4wIiB0ZXh0PSIwIiB3PSI0MCIgaD0iNDAiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzc3MDAwMDAwIiBtYXJnaW49IjAgMSAwIDAiLz4KICAgPGJ1dHRvbiBpZD0ibnQiIHRleHQ9IumAgCIgdz0iNDAiIGg9IjQwIiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM3NzAwMDAwMCIgbWFyZ2luPSIwIDEgMCAwIi8+CiAgIDxidXR0b24gaWQ9Im5iMTAiIHRleHQ9IuKRqSIgdz0iNDAiIGg9IjQwIiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM3NzAwMDAwMCIvPgogICA8L2xpbmVhcj4gCiAgIDwvdmVydGljYWw+CiAgICAgIDwvZnJhbWU+Cik7CndpbmRvdzIuc2V0UG9zaXRpb24oMTAwMDAsMTAwMDApOwpsb2coT2JqZWN0LmtleXMod2luZG93MikpOwp2YXIgeHM9MjsKdmFyIHN6PTA7CnZhciBkaj0wOwp2YXIgcHA9WzAsMCwwLDAsMCwwXTsKdmFyIHNqPW5ldyBEYXRlKCkuZ2V0VGltZSgpOwp2YXIga2o9MDsKdmFyIGV4ZWN1dGlvbiA9IG51bGw7CgovL+iusOW9leaMiemUruiiq+aMieS4i+aXtueahOinpuaRuOWdkOaghwp2YXIgeCA9IDAsCiAgICB5ID0gMDsKLy/orrDlvZXmjInplK7ooqvmjInkuIvml7bnmoTmgqzmta7nqpfkvY3nva4KdmFyIHdpbmRvd1gsIHdpbmRvd1k7Ci8v6K6w5b2V5oyJ6ZSu6KKr5oyJ5LiL55qE5pe26Ze05Lul5L6/5Yik5pat6ZW/5oyJ562J5Yqo5L2cCnZhciBkb3duVGltZTsKd2luZG93LmFjdGlvbi5zZXRPblRvdWNoTGlzdGVuZXIoZnVuY3Rpb24odmlldywgZXZlbnQpIHsKICAgIHN3aXRjaCAoZXZlbnQuZ2V0QWN0aW9uKCkpIHsKICAgICAgICBjYXNlIGV2ZW50LkFDVElPTl9ET1dOOgogICAgICAgICAgICB4ID0gZXZlbnQuZ2V0UmF3WCgpOwogICAgICAgICAgICB5ID0gZXZlbnQuZ2V0UmF3WSgpOwogICAgICAgICAgICB3aW5kb3dYID0gd2luZG93LmdldFgoKTsKICAgICAgICAgICAgd2luZG93WSA9IHdpbmRvdy5nZXRZKCk7CiAgICAgICAgICAgIGRvd25UaW1lID0gbmV3IERhdGUoKS5nZXRUaW1lKCk7CiAgICAgICAgICAgIHJldHVybiB0cnVlOwogICAgICAgIGNhc2UgZXZlbnQuQUNUSU9OX01PVkU6CiAgICAgICAgICAgIC8v56e75Yqo5omL5oyH5pe26LCD5pW05oKs5rWu56qX5L2N572uCiAgICAgICAgICAgIGlmKHhzIT0xKXt3aW5kb3cuc2V0UG9zaXRpb24od2luZG93WCArIChldmVudC5nZXRSYXdYKCkgLSB4KSwKICAgICAgICAgICAgICAgIHdpbmRvd1kgKyAoZXZlbnQuZ2V0UmF3WSgpIC0geSkpOwogICAgICAgICAgICAgIH0gLy8gaWYoeHM9PTEpeyAKICAgICAgICAgICAgIC8vICAgd2luZG93Mi5zZXRQb3NpdGlvbih3aW5kb3dYICsgKGV2ZW50LmdldFJhd1goKSAtIHgpLAogICAgICAgICAgICAvLyAgICB3aW5kb3dZICsgKGV2ZW50LmdldFJhd1koKSAtIHkpKzgyKTsKICAgICAgICAgIC8vIH0KICAgICAgICAgICAgLy/lpoLmnpzmjInkuIvnmoTml7bpl7TotoXov4cxLjXnp5LliKTmlq3kuLrplb/mjInvvIzpgIDlh7rohJrmnKwKICAgICAgICAgICAgaWYobmV3IERhdGUoKS5nZXRUaW1lKCkgLSBkb3duVGltZSA+IDE1MDApewogICAgICAgICAgICBleGl0KCk7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgcmV0dXJuIHRydWU7CiAgICAgICAgY2FzZSBldmVudC5BQ1RJT05fVVA6CiAgICAgICAgICAgIC8v5omL5oyH5by56LW35pe25aaC5p6c5YGP56e75b6I5bCP5YiZ5Yik5pat5Li654K55Ye7CiAgICAgICAgICAgIGlmIChNYXRoLmFicyhldmVudC5nZXRSYXdZKCkgLSB5KSA8IDUgJiYgTWF0aC5hYnMoZXZlbnQuZ2V0UmF3WCgpIC0geCkgPCA1KSB7CiAgICAgICAgICAgICAgICB0aHJlYWRzLnN0YXJ0KGZ1bmN0aW9uKCkgewogICAgICAgICAgICAgICAgICAgIG9uQ2xpY2soKTsKICAgICAgICAgICAgICAgIH0pOwogICAgICAgICAgICB9CiAgICAgICAgICAgIHJldHVybiB0cnVlOwogICAgfQogICAgcmV0dXJuIHRydWU7Cn0pOwoKZnVuY3Rpb24gb25DbGljaygpIHsKICAgIGlmICh4cz09MSkgewogICAgICB4cz0yOwogICAgICB3aW5kb3cyLnNldFBvc2l0aW9uKDEwMDAwLDEwMDAwKTsKICAgICAgICAKICAgIH0gZWxzZSB7CiAgICAgICAgeHM9MTsKICAgICAgICBzej0wOwogICAgICAgIGtqPTA7CiAgICAgICAgd2luZG93Mi5zZXRQb3NpdGlvbih3aW5kb3cuZ2V0WCgpLHdpbmRvdy5nZXRZKCkrODIpOwogICAgICAgIGZvcihpIGluIHBwKXtwcFtpXT0iXyJ9CiAgICB9Cn0Kd2luZG93Mi5uMC5jbGljaygoKT0+e3BwW3N6XT0wO3N6Kys7aWYoc3o9PTYpe3N6PTA7fX0pOwp3aW5kb3cyLm4xLmNsaWNrKCgpPT57cHBbc3pdPTE7c3orKztpZihzej09Nil7c3o9MDt9fSk7CndpbmRvdzIubjIuY2xpY2soKCk9PntwcFtzel09MjtzeisrO2lmKHN6PT02KXtzej0wO319KTsKd2luZG93Mi5uMy5jbGljaygoKT0+e3BwW3N6XT0zO3N6Kys7aWYoc3o9PTYpe3N6PTA7fX0pOwp3aW5kb3cyLm40LmNsaWNrKCgpPT57cHBbc3pdPTQ7c3orKztpZihzej09Nil7c3o9MDt9fSk7CndpbmRvdzIubjUuY2xpY2soKCk9PntwcFtzel09NTtzeisrO2lmKHN6PT02KXtzej0wO319KTsKd2luZG93Mi5uNi5jbGljaygoKT0+e3BwW3N6XT02O3N6Kys7aWYoc3o9PTYpe3N6PTA7fX0pOwp3aW5kb3cyLm43LmNsaWNrKCgpPT57cHBbc3pdPTc7c3orKztpZihzej09Nil7c3o9MDt9fSk7CndpbmRvdzIubjguY2xpY2soKCk9PntwcFtzel09ODtzeisrO2lmKHN6PT02KXtzej0wO319KTsKd2luZG93Mi5uOS5jbGljaygoKT0+e3BwW3N6XT05O3N6Kys7aWYoc3o9PTYpe3N6PTA7fX0pOwp3aW5kb3cyLm5zdG9wLmNsaWNrKCgpPT57IHNqPW5ldyBEYXRlKCkuZ2V0VGltZSgpOwp4cz0yO2RqPTA7CiAgICAgIHdpbmRvdzIuc2V0UG9zaXRpb24oMTAwMDAsMTAwMDApO30pOwp3aW5kb3cyLm5zdGFyLmNsaWNrKCgpPT57CiAgICBmb3IoaSBpbiBwcCl7aWYocHBbaV09PSJfIil7cHBbaV09MDt9fQogICAgcz0oKChwcFswXSoxMCtwcFsxXSkqNjArKHBwWzJdKjEwK3BwWzNdKSkqNjArKHBwWzRdKjEwK3BwWzVdKSkqMTAwMDsKICAgIHNqPXMrbmV3IERhdGUoKS5nZXRUaW1lKCk7CiAgICB4cz0yO2RqPTE7CiAgICAgIHdpbmRvdzIuc2V0UG9zaXRpb24oMTAwMDAsMTAwMDApO30pOwogICAKd2luZG93Mi5ud2VuLmNsaWNrKCgpPT57CmFsZXJ0KCLlgZzmraLlgaXmmK/pobrorqHml7bvvIzmkq3mlL7plK7mmK/lgJLorqHml7bvvIzlgJLorqHml7bnu5PmnZ/kvJrpnIfliqjmj5DphpLvvIzlgJLorqHml7blv4XpobvovpPlhaXorqHml7bml7bpl7TvvIzpobrorqHml7bku44wMDowMDowMOW8gOWni++8m+KRpOOAgeKRqeaYr+W/q+aNt+WAkuiuoeaXtjXliIbpkp/lkowxMOWIhumSnyIpOwogICAgfSk7CndpbmRvdzIubnQuY2xpY2soKCk9PnsKICAgIHRocmVhZHMuc3RhcnQoZnVuY3Rpb24oKXsKICAgIHZhciBoYW5kc29tZSA9IGNvbmZpcm0oIuehruiupOmAgOWHuu+8nyIpOwogICAgaWYoaGFuZHNvbWUpe2V4aXQoKTt9Cn0pOwogICAgfSk7CndpbmRvdzIubmI1LmNsaWNrKCgpPT57CiAgICBrais9NSo2MDAwMDsKICAgIHZhciBzdD1ncyhraikuc3BsaXQoIiIpOwogICAgZm9yKGkgaW4gcHApewogICAgcHBbaV09cGFyc2VJbnQoc3RbcGFyc2VJbnQoaSooMy8yKSldKTsKICAgIH0KICAgIHN6PTA7CiAgICB9KTsKd2luZG93Mi5uYjEwLmNsaWNrKCgpPT57CiAgICBrais9MTAqNjAwMDA7CiAgICB2YXIgc3Q9Z3Moa2opLnNwbGl0KCIiKTsKICAgIGZvcihpIGluIHBwKXsKICAgIHBwW2ldPXBhcnNlSW50KHN0W3BhcnNlSW50KGkqKDMvMikpXSk7CiAgICB9CiAgICBzej0wOwogICAgfSk7CmZ1bmN0aW9uIGdzKG51bSkgewogICAgdmFyIOaAu+enkiA9IHBhcnNlSW50KG51bSAvIDEwMDApOwogICAgdmFyIOenkiA9IOaAu+enkiAlIDYwOwogICAgdmFyIOaAu+WIhiA9IHBhcnNlSW50KOaAu+enkiAvIDYwKTsKICAgIHZhciDliIYgPSDmgLvliIYgJSA2MDsKICAgIHZhciDmgLvml7YgPSBwYXJzZUludCjmgLvliIYgLyA2MCk7CiAgICB2YXIg5pe2ID0g5oC75pe2ICUgMjQ7CiAgICB2YXIg5oC75aSpID0gcGFyc2VJbnQo5oC75pe2IC8gMjQpOwogICAgcmV0dXJuIHBmKOaXtiwgMikgKyAiOiIgKyBwZijliIYsIDIpICsgIjoiICsgcGYo56eSLCAyKTsKCiAgICBmdW5jdGlvbiBwZihudW0sIGxlbmd0aCkgewogICAgICAgIHJldHVybiAoQXJyYXkobGVuZ3RoKS5qb2luKCcwJykgKyBudW0pLnNsaWNlKC1sZW5ndGgpOwogICAgfQp9Cgp2YXIgczsNCnZhciBwOwoKd2hpbGUodHJ1ZSl7CnNsZWVwKDEwMCk7CmlmKHhzPT0yKXsKcz1zai0obmV3IERhdGUoKS5nZXRUaW1lKCkpOwppZihzPjApe3A9Ii0iK2dzKHMpO31lbHNle3A9IisiK2dzKDAtcyk7aWYoZGo9PTEpe2RldmljZS52aWJyYXRlKDMwMDApO3NsZWVwKDQwMDApO319CnVpLnJ1bihmdW5jdGlvbigpIHsKICAgICAgICAgICAgICAgIHdpbmRvdy5hY3Rpb24uc2V0VGV4dChwKTsKICAgICAgICAgICAgfSk7Cn1lbHNlewpwPSItIitwcFswXStwcFsxXSsiOiIrcHBbMl0rcHBbM10rIjoiK3BwWzRdK3BwWzVdOzsKICAgIHVpLnJ1bihmdW5jdGlvbigpIHsKICAgICAgICAgICAgICAgIHdpbmRvdy5hY3Rpb24uc2V0VGV4dChwKTsKICAgICAgICAgICAgfSk7Cgp9Cn0KCgoK"),
b64("dmFyIHdpbmRvdyA9IGZsb2F0eS53aW5kb3coCiAgICAgICAgPGZyYW1lIGJnPSIjNTUwMDAwMDAiPgogICAgICAgIDx2ZXJ0aWNhbCBoPSJhdXRvIiBhbGlnbj0idG9wIiBtYXJnaW49IjAgMCI+CiAgICAgCiAgICAgICAKCjxsaW5lYXIgbWFyZ2luPSIwIDAgMCAwIj4gICAgICAgICAgPHRleHQgdz0iNDAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjMDAwMGZmIiBiZz0iIzU1ZmZmZmZmIiBzaXplPSIxNiIgdGV4dD0i57yW5Y+3Ii8+ICAgICAgICAgIDx0ZXh0IHc9IjIwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmYwMCIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjAiLz4gICAgICAgICAgPHRleHQgdz0iMTEwIiBpZD0ianMwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjAwMDo6MDA6MDA6MDAiLz48L2xpbmVhcj4KPGxpbmVhciBtYXJnaW49IjEgMCAwIDAiPiAgICAgICAgICA8dGV4dCB3PSI0MCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiMwMDAwZmYiIGJnPSIjNTVmZmZmZmYiIHNpemU9IjE2IiB0ZXh0PSLnvJblj7ciLz4gICAgICAgICAgPHRleHQgdz0iMjAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjZmZmZjAwIiBiZz0iIzk5MTExMTExIiBzaXplPSIxNiIgdGV4dD0iMSIvPiAgICAgICAgICA8dGV4dCB3PSIxMTAiIGlkPSJqczEiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzk5MTExMTExIiBzaXplPSIxNiIgdGV4dD0iMDAwOjowMDowMDowMCIvPjwvbGluZWFyPgo8bGluZWFyIG1hcmdpbj0iMSAwIDAgMCI+ICAgICAgICAgIDx0ZXh0IHc9IjQwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iIzAwMDBmZiIgYmc9IiM1NWZmZmZmZiIgc2l6ZT0iMTYiIHRleHQ9Iue8luWPtyIvPiAgICAgICAgICA8dGV4dCB3PSIyMCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiNmZmZmMDAiIGJnPSIjOTkxMTExMTEiIHNpemU9IjE2IiB0ZXh0PSIyIi8+ICAgICAgICAgIDx0ZXh0IHc9IjExMCIgaWQ9ImpzMiIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjOTkxMTExMTEiIHNpemU9IjE2IiB0ZXh0PSIwMDA6OjAwOjAwOjAwIi8+PC9saW5lYXI+CjxsaW5lYXIgbWFyZ2luPSIxIDAgMCAwIj4gICAgICAgICAgPHRleHQgdz0iNDAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjMDAwMGZmIiBiZz0iIzU1ZmZmZmZmIiBzaXplPSIxNiIgdGV4dD0i57yW5Y+3Ii8+ICAgICAgICAgIDx0ZXh0IHc9IjIwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmYwMCIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjMiLz4gICAgICAgICAgPHRleHQgdz0iMTEwIiBpZD0ianMzIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjAwMDo6MDA6MDA6MDAiLz48L2xpbmVhcj4KPGxpbmVhciBtYXJnaW49IjEgMCAwIDAiPiAgICAgICAgICA8dGV4dCB3PSI0MCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiMwMDAwZmYiIGJnPSIjNTVmZmZmZmYiIHNpemU9IjE2IiB0ZXh0PSLnvJblj7ciLz4gICAgICAgICAgPHRleHQgdz0iMjAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjZmZmZjAwIiBiZz0iIzk5MTExMTExIiBzaXplPSIxNiIgdGV4dD0iNCIvPiAgICAgICAgICA8dGV4dCB3PSIxMTAiIGlkPSJqczQiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzk5MTExMTExIiBzaXplPSIxNiIgdGV4dD0iMDAwOjowMDowMDowMCIvPjwvbGluZWFyPgo8bGluZWFyIG1hcmdpbj0iMSAwIDAgMCI+ICAgICAgICAgIDx0ZXh0IHc9IjQwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iIzAwMDBmZiIgYmc9IiM1NWZmZmZmZiIgc2l6ZT0iMTYiIHRleHQ9Iue8luWPtyIvPiAgICAgICAgICA8dGV4dCB3PSIyMCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiNmZmZmMDAiIGJnPSIjOTkxMTExMTEiIHNpemU9IjE2IiB0ZXh0PSI1Ii8+ICAgICAgICAgIDx0ZXh0IHc9IjExMCIgaWQ9ImpzNSIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjOTkxMTExMTEiIHNpemU9IjE2IiB0ZXh0PSIwMDA6OjAwOjAwOjAwIi8+PC9saW5lYXI+CjxsaW5lYXIgbWFyZ2luPSIxIDAgMCAwIj4gICAgICAgICAgPHRleHQgdz0iNDAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjMDAwMGZmIiBiZz0iIzU1ZmZmZmZmIiBzaXplPSIxNiIgdGV4dD0i57yW5Y+3Ii8+ICAgICAgICAgIDx0ZXh0IHc9IjIwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmYwMCIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjYiLz4gICAgICAgICAgPHRleHQgdz0iMTEwIiBpZD0ianM2IiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjAwMDo6MDA6MDA6MDAiLz48L2xpbmVhcj4KPGxpbmVhciBtYXJnaW49IjEgMCAwIDAiPiAgICAgICAgICA8dGV4dCB3PSI0MCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiMwMDAwZmYiIGJnPSIjNTVmZmZmZmYiIHNpemU9IjE2IiB0ZXh0PSLnvJblj7ciLz4gICAgICAgICAgPHRleHQgdz0iMjAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjZmZmZjAwIiBiZz0iIzk5MTExMTExIiBzaXplPSIxNiIgdGV4dD0iNyIvPiAgICAgICAgICA8dGV4dCB3PSIxMTAiIGlkPSJqczciIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzk5MTExMTExIiBzaXplPSIxNiIgdGV4dD0iMDAwOjowMDowMDowMCIvPjwvbGluZWFyPgo8bGluZWFyIG1hcmdpbj0iMSAwIDAgMCI+ICAgICAgICAgIDx0ZXh0IHc9IjQwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iIzAwMDBmZiIgYmc9IiM1NWZmZmZmZiIgc2l6ZT0iMTYiIHRleHQ9Iue8luWPtyIvPiAgICAgICAgICA8dGV4dCB3PSIyMCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiNmZmZmMDAiIGJnPSIjOTkxMTExMTEiIHNpemU9IjE2IiB0ZXh0PSI4Ii8+ICAgICAgICAgIDx0ZXh0IHc9IjExMCIgaWQ9ImpzOCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjOTkxMTExMTEiIHNpemU9IjE2IiB0ZXh0PSIwMDA6OjAwOjAwOjAwIi8+PC9saW5lYXI+CjxsaW5lYXIgbWFyZ2luPSIxIDAgMCAwIj4gICAgICAgICAgPHRleHQgdz0iNDAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjMDAwMGZmIiBiZz0iIzU1ZmZmZmZmIiBzaXplPSIxNiIgdGV4dD0i57yW5Y+3Ii8+ICAgICAgICAgIDx0ZXh0IHc9IjIwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmYwMCIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjkiLz4gICAgICAgICAgPHRleHQgdz0iMTEwIiBpZD0ianM5IiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjAwMDo6MDA6MDA6MDAiLz48L2xpbmVhcj4KPGxpbmVhciBtYXJnaW49IjEgMCAwIDAiPiAgICAgICAgICA8dGV4dCB3PSI0MCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiMwMDAwZmYiIGJnPSIjNTVmZmZmZmYiIHNpemU9IjE2IiB0ZXh0PSLnvJblj7ciLz4gICAgICAgICAgPHRleHQgdz0iMjAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjZmZmZjAwIiBiZz0iIzk5MTExMTExIiBzaXplPSIxNiIgdGV4dD0iMTAiLz4gICAgICAgICAgPHRleHQgdz0iMTEwIiBpZD0ianMxMCIgZ3Jhdml0eT0ibGVmdCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjOTkxMTExMTEiIHNpemU9IjE2IiB0ZXh0PSIwMDA6OjAwOjAwOjAwIi8+PC9saW5lYXI+CjxsaW5lYXIgbWFyZ2luPSIxIDAgMCAwIj4gICAgICAgICAgPHRleHQgdz0iNDAiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjMDAwMGZmIiBiZz0iIzU1ZmZmZmZmIiBzaXplPSIxNiIgdGV4dD0i57yW5Y+3Ii8+ICAgICAgICAgIDx0ZXh0IHc9IjIwIiBncmF2aXR5PSJsZWZ0IiBjb2xvcj0iI2ZmZmYwMCIgYmc9IiM5OTExMTExMSIgc2l6ZT0iMTYiIHRleHQ9IjExIi8+ICAgICAgICAgIDx0ZXh0IHc9IjExMCIgaWQ9ImpzMTEiIGdyYXZpdHk9ImxlZnQiIGNvbG9yPSIjZmZmZmZmIiBiZz0iIzk5MTExMTExIiBzaXplPSIxNiIgdGV4dD0iMDAwOjowMDowMDowMCIvPjwvbGluZWFyPgogICAgICAgICAgCiAgICAgICAgPC92ZXJ0aWNhbD4KICAgICAgICA8dmVydGljYWwgIG1hcmdpbj0iMCAwIDAgMTcwIj4KICAgICAgICAgPGJ1dHRvbiBpZD0idWIiIHRleHQ9IuW4riIgc2l6ZT0iMzAiIGdyYXZpdHk9ImNlbnRlciIgdz0iNDAiIGg9IjEyOCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjNTUwMDAwNTUiICBtYXJnaW49IjAgMCAxIDAiLz4KICA8YnV0dG9uIGlkPSJ1dCIgdGV4dD0i6YCAIiBzaXplPSIzMCIgZ3Jhdml0eT0iY2VudGVyIiB3PSI0MCIgaD0iMTI4IiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM1NTAwMDA1NSIvPgogIDwvdmVydGljYWw+CiAgICAgIDwvZnJhbWU+CiAgICApOwogICAgd2luZG93LnViLmNsaWNrKCgpPT57CmFsZXJ0KCLpnIDopoHlrZjlgqjmnYPpmZDvvIzmiYDku6XljbPkvb/miYvmnLrph43lkK/vvIzorqHml7blmajkvp3ml6fnu6fnu63ov5DooYzvvIzov5DooYzohJrmnKzlsLHog73nnIvliLDorqHml7bmlbDmja7vvIzngrnlh7vljbPkvb/ml7bpl7Tlj6/ku6Xph43nva7kuLowMDowMDowMCIpOwogICAgfSk7CndpbmRvdy51dC5jbGljaygoKT0+ewogICAgdGhyZWFkcy5zdGFydChmdW5jdGlvbigpewogICAgaWYoY29uZmlybSgi56Gu6K6k6YCA5Ye677yfIikpe3RjPTE7fQogICAgfSk7CiAgICB9KTsKdmFyIHRjPTA7CnZhciB0eHQxID0gbmV3IEFycmF5KCk7CnZhciBzZHBhdGggPSBhbmRyb2lkLm9zLkVudmlyb25tZW50LmdldEV4dGVybmFsU3RvcmFnZURpcmVjdG9yeSgpOyAvL+iOt+WPlui3n+ebruW9lQp2YXIgcGF0aCA9IHNkcGF0aCArICIv6ISa5pysL+iuoeaXtuWGheWuuS50eHQiOwoKZnVuY3Rpb24g5q+r56eS5qC85byP5YyWKG51bSkgewogICAgdmFyIOaAu+enkiA9IHBhcnNlSW50KG51bSAvIDEwMDApOwogICAgdmFyIOenkiA9IOaAu+enkiAlIDYwOwogICAgdmFyIOaAu+WIhiA9IHBhcnNlSW50KOaAu+enkiAvIDYwKTsKICAgIHZhciDliIYgPSDmgLvliIYgJSA2MDsKICAgIHZhciDmgLvml7YgPSBwYXJzZUludCjmgLvliIYgLyA2MCk7CiAgICB2YXIg5pe2ID0g5oC75pe2ICUgMjQ7CiAgICB2YXIg5oC75aSpID0gcGFyc2VJbnQo5oC75pe2IC8gMjQpOwogICAgcmV0dXJuIHBmKOaAu+WkqSwgMykgKyAiOjoiICsgcGYo5pe2LCAyKSArICI6IiArIHBmKOWIhiwgMikgKyAiOiIgKyBwZijnp5IsIDIpOwoKICAgIGZ1bmN0aW9uIHBmKG51bSwgbGVuZ3RoKSB7CiAgICAgICAgcmV0dXJuIChBcnJheShsZW5ndGgpLmpvaW4oJzAnKSArIG51bSkuc2xpY2UoLWxlbmd0aCk7CiAgICB9Cn0KCnRocmVhZHMuc3RhcnQoZnVuY3Rpb24oKSB7CiAgICB4ID0gMTE7CiAgICBmaWxlcy5jcmVhdGUocGF0aCk7CiAgICB2YXIgdHh0ID0gZmlsZXMucmVhZChwYXRoKTsKICAgIHZhciB0eHQwID0gdHh0LnNwbGl0KCJcbiIpOwoKICAgIHZhciDml7bpl7QgPSBuZXcgRGF0ZSgpLmdldFRpbWUoKTsKICAgIGZvciAoaSA9IDA7IGkgPD0geDsgaSsrKSB7CiAgICAgICAgaWYgKHR4dFtpXSkgewogICAgICAgICAgICB0eHQxW2ldID0gcGFyc2VJbnQodHh0MFtpXSk7CiAgICAgICAgICAgIGxvZygibnVsbCIpCiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgdHh0MVtpXSA9IOaXtumXtDsKICAgICAgICAgICAgbG9nKCJvayIpOwogICAgICAgIH0KICAgIH0KICAgIHZhciB0eHQyID0gdHh0MS5qb2luKCJcbiIpOwogICAgZmlsZXMud3JpdGUocGF0aCwgdHh0Mik7CiAgICB3aGlsZSAodHJ1ZSkgewogICAgICAgIHNsZWVwKDEwMCk7CiAgICAgICAgaWYodGM9PTEpe2V4aXQoKTt9CiAgICAgICAgdmFyIOaXtumXtCA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpOwogICAgICAgIHVpLnJ1bihmdW5jdGlvbigpIHsKICAgICAgICAgICAgCndpbmRvdy5qczAudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVswXSkgKyAiIik7CndpbmRvdy5qczEudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVsxXSkgKyAiIik7CndpbmRvdy5qczIudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVsyXSkgKyAiIik7CndpbmRvdy5qczMudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVszXSkgKyAiIik7CndpbmRvdy5qczQudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVs0XSkgKyAiIik7CndpbmRvdy5qczUudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVs1XSkgKyAiIik7CndpbmRvdy5qczYudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVs2XSkgKyAiIik7CndpbmRvdy5qczcudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVs3XSkgKyAiIik7CndpbmRvdy5qczgudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVs4XSkgKyAiIik7CndpbmRvdy5qczkudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVs5XSkgKyAiIik7CndpbmRvdy5qczEwLnRleHQo5q+r56eS5qC85byP5YyWKOaXtumXtCAtIHR4dDFbMTBdKSArICIiKTsKd2luZG93LmpzMTEudGV4dCjmr6vnp5LmoLzlvI/ljJYo5pe26Ze0IC0gdHh0MVsxMV0pICsgIiIpOyB9KTsKICAgIH0KfSk7Cgp3aW5kb3cuanMwLmNsaWNrKCgpID0+IHsgICAgdGhyZWFkcy5zdGFydChmdW5jdGlvbigpIHsgICAgICAgdmFyIG9rID0gY29uZmlybSgi56Gu5a6a57uZMOmHjeaWsOiuoeaXtu+8nyIpOyAgICAgICBpZiAob2spIHsgICAgICAgICAgICBsb2coIm9rIik7ICAgICAgICAgICB0eHQxWzBdID0gbmV3IERhdGUoKS5nZXRUaW1lKCk7ICAgICAgICAgdmFyIHR4dDIgPSB0eHQxLmpvaW4oIlxuIik7ICAgICAgZmlsZXMud3JpdGUocGF0aCwgdHh0Mik7ICAgICAgIH0gZWxzZSB7ICAgICAgICAgICAgbG9nKCJubyIpOyAgICAgICB9ICAgfSk7fSk7CndpbmRvdy5qczEuY2xpY2soKCkgPT4geyAgICB0aHJlYWRzLnN0YXJ0KGZ1bmN0aW9uKCkgeyAgICAgICB2YXIgb2sgPSBjb25maXJtKCLnoa7lrprnu5kx6YeN5paw6K6h5pe277yfIik7ICAgICAgIGlmIChvaykgeyAgICAgICAgICAgIGxvZygib2siKTsgICAgICAgICAgIHR4dDFbMV0gPSBuZXcgRGF0ZSgpLmdldFRpbWUoKTsgICAgICAgICB2YXIgdHh0MiA9IHR4dDEuam9pbigiXG4iKTsgICAgICBmaWxlcy53cml0ZShwYXRoLCB0eHQyKTsgICAgICAgfSBlbHNlIHsgICAgICAgICAgICBsb2coIm5vIik7ICAgICAgIH0gICB9KTt9KTsKd2luZG93LmpzMi5jbGljaygoKSA9PiB7ICAgIHRocmVhZHMuc3RhcnQoZnVuY3Rpb24oKSB7ICAgICAgIHZhciBvayA9IGNvbmZpcm0oIuehruWumue7mTLph43mlrDorqHml7bvvJ8iKTsgICAgICAgaWYgKG9rKSB7ICAgICAgICAgICAgbG9nKCJvayIpOyAgICAgICAgICAgdHh0MVsyXSA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpOyAgICAgICAgIHZhciB0eHQyID0gdHh0MS5qb2luKCJcbiIpOyAgICAgIGZpbGVzLndyaXRlKHBhdGgsIHR4dDIpOyAgICAgICB9IGVsc2UgeyAgICAgICAgICAgIGxvZygibm8iKTsgICAgICAgfSAgIH0pO30pOwp3aW5kb3cuanMzLmNsaWNrKCgpID0+IHsgICAgdGhyZWFkcy5zdGFydChmdW5jdGlvbigpIHsgICAgICAgdmFyIG9rID0gY29uZmlybSgi56Gu5a6a57uZM+mHjeaWsOiuoeaXtu+8nyIpOyAgICAgICBpZiAob2spIHsgICAgICAgICAgICBsb2coIm9rIik7ICAgICAgICAgICB0eHQxWzNdID0gbmV3IERhdGUoKS5nZXRUaW1lKCk7ICAgICAgICAgdmFyIHR4dDIgPSB0eHQxLmpvaW4oIlxuIik7ICAgICAgZmlsZXMud3JpdGUocGF0aCwgdHh0Mik7ICAgICAgIH0gZWxzZSB7ICAgICAgICAgICAgbG9nKCJubyIpOyAgICAgICB9ICAgfSk7fSk7CndpbmRvdy5qczQuY2xpY2soKCkgPT4geyAgICB0aHJlYWRzLnN0YXJ0KGZ1bmN0aW9uKCkgeyAgICAgICB2YXIgb2sgPSBjb25maXJtKCLnoa7lrprnu5k06YeN5paw6K6h5pe277yfIik7ICAgICAgIGlmIChvaykgeyAgICAgICAgICAgIGxvZygib2siKTsgICAgICAgICAgIHR4dDFbNF0gPSBuZXcgRGF0ZSgpLmdldFRpbWUoKTsgICAgICAgICB2YXIgdHh0MiA9IHR4dDEuam9pbigiXG4iKTsgICAgICBmaWxlcy53cml0ZShwYXRoLCB0eHQyKTsgICAgICAgfSBlbHNlIHsgICAgICAgICAgICBsb2coIm5vIik7ICAgICAgIH0gICB9KTt9KTsKd2luZG93LmpzNS5jbGljaygoKSA9PiB7ICAgIHRocmVhZHMuc3RhcnQoZnVuY3Rpb24oKSB7ICAgICAgIHZhciBvayA9IGNvbmZpcm0oIuehruWumue7mTXph43mlrDorqHml7bvvJ8iKTsgICAgICAgaWYgKG9rKSB7ICAgICAgICAgICAgbG9nKCJvayIpOyAgICAgICAgICAgdHh0MVs1XSA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpOyAgICAgICAgIHZhciB0eHQyID0gdHh0MS5qb2luKCJcbiIpOyAgICAgIGZpbGVzLndyaXRlKHBhdGgsIHR4dDIpOyAgICAgICB9IGVsc2UgeyAgICAgICAgICAgIGxvZygibm8iKTsgICAgICAgfSAgIH0pO30pOwp3aW5kb3cuanM2LmNsaWNrKCgpID0+IHsgICAgdGhyZWFkcy5zdGFydChmdW5jdGlvbigpIHsgICAgICAgdmFyIG9rID0gY29uZmlybSgi56Gu5a6a57uZNumHjeaWsOiuoeaXtu+8nyIpOyAgICAgICBpZiAob2spIHsgICAgICAgICAgICBsb2coIm9rIik7ICAgICAgICAgICB0eHQxWzZdID0gbmV3IERhdGUoKS5nZXRUaW1lKCk7ICAgICAgICAgdmFyIHR4dDIgPSB0eHQxLmpvaW4oIlxuIik7ICAgICAgZmlsZXMud3JpdGUocGF0aCwgdHh0Mik7ICAgICAgIH0gZWxzZSB7ICAgICAgICAgICAgbG9nKCJubyIpOyAgICAgICB9ICAgfSk7fSk7CndpbmRvdy5qczcuY2xpY2soKCkgPT4geyAgICB0aHJlYWRzLnN0YXJ0KGZ1bmN0aW9uKCkgeyAgICAgICB2YXIgb2sgPSBjb25maXJtKCLnoa7lrprnu5k36YeN5paw6K6h5pe277yfIik7ICAgICAgIGlmIChvaykgeyAgICAgICAgICAgIGxvZygib2siKTsgICAgICAgICAgIHR4dDFbN10gPSBuZXcgRGF0ZSgpLmdldFRpbWUoKTsgICAgICAgICB2YXIgdHh0MiA9IHR4dDEuam9pbigiXG4iKTsgICAgICBmaWxlcy53cml0ZShwYXRoLCB0eHQyKTsgICAgICAgfSBlbHNlIHsgICAgICAgICAgICBsb2coIm5vIik7ICAgICAgIH0gICB9KTt9KTsKd2luZG93LmpzOC5jbGljaygoKSA9PiB7ICAgIHRocmVhZHMuc3RhcnQoZnVuY3Rpb24oKSB7ICAgICAgIHZhciBvayA9IGNvbmZpcm0oIuehruWumue7mTjph43mlrDorqHml7bvvJ8iKTsgICAgICAgaWYgKG9rKSB7ICAgICAgICAgICAgbG9nKCJvayIpOyAgICAgICAgICAgdHh0MVs4XSA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpOyAgICAgICAgIHZhciB0eHQyID0gdHh0MS5qb2luKCJcbiIpOyAgICAgIGZpbGVzLndyaXRlKHBhdGgsIHR4dDIpOyAgICAgICB9IGVsc2UgeyAgICAgICAgICAgIGxvZygibm8iKTsgICAgICAgfSAgIH0pO30pOwp3aW5kb3cuanM5LmNsaWNrKCgpID0+IHsgICAgdGhyZWFkcy5zdGFydChmdW5jdGlvbigpIHsgICAgICAgdmFyIG9rID0gY29uZmlybSgi56Gu5a6a57uZOemHjeaWsOiuoeaXtu+8nyIpOyAgICAgICBpZiAob2spIHsgICAgICAgICAgICBsb2coIm9rIik7ICAgICAgICAgICB0eHQxWzldID0gbmV3IERhdGUoKS5nZXRUaW1lKCk7ICAgICAgICAgdmFyIHR4dDIgPSB0eHQxLmpvaW4oIlxuIik7ICAgICAgZmlsZXMud3JpdGUocGF0aCwgdHh0Mik7ICAgICAgIH0gZWxzZSB7ICAgICAgICAgICAgbG9nKCJubyIpOyAgICAgICB9ICAgfSk7fSk7CndpbmRvdy5qczEwLmNsaWNrKCgpID0+IHsgICAgdGhyZWFkcy5zdGFydChmdW5jdGlvbigpIHsgICAgICAgdmFyIG9rID0gY29uZmlybSgi56Gu5a6a57uZMTDph43mlrDorqHml7bvvJ8iKTsgICAgICAgaWYgKG9rKSB7ICAgICAgICAgICAgbG9nKCJvayIpOyAgICAgICAgICAgdHh0MVsxMF0gPSBuZXcgRGF0ZSgpLmdldFRpbWUoKTsgICAgICAgICB2YXIgdHh0MiA9IHR4dDEuam9pbigiXG4iKTsgICAgICBmaWxlcy53cml0ZShwYXRoLCB0eHQyKTsgICAgICAgfSBlbHNlIHsgICAgICAgICAgICBsb2coIm5vIik7ICAgICAgIH0gICB9KTt9KTsKd2luZG93LmpzMTEuY2xpY2soKCkgPT4geyAgICB0aHJlYWRzLnN0YXJ0KGZ1bmN0aW9uKCkgeyAgICAgICB2YXIgb2sgPSBjb25maXJtKCLnoa7lrprnu5kxMemHjeaWsOiuoeaXtu+8nyIpOyAgICAgICBpZiAob2spIHsgICAgICAgICAgICBsb2coIm9rIik7ICAgICAgICAgICB0eHQxWzExXSA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpOyAgICAgICAgIHZhciB0eHQyID0gdHh0MS5qb2luKCJcbiIpOyAgICAgIGZpbGVzLndyaXRlKHBhdGgsIHR4dDIpOyAgICAgICB9IGVsc2UgeyAgICAgICAgICAgIGxvZygibm8iKTsgICAgICAgfSAgIH0pO30pOw=="),
b64("dmFyIHdpbmRvdyA9IGZsb2F0eS53aW5kb3coCiAgIDxmcmFtZT4KICAgPHZlcnRpY2FsPgogICA8bGluZWFyPgogICA8aW5wdXQgaWQ9InNjIiB3PSIyMDAiIHRleHQ9IiIgdGV4dFNpemU9IjE2c3AiIGZvY3VzYWJsZT0idHJ1ZSIvPg0KICAgIDxidXR0b24gaWQ9ImJzIiB0ZXh0PSLihpIiIGdyYXZpdHk9ImNlbnRlciIgdz0iNDAiIGg9IjQwIiBjb2xvcj0iI2ZmZmZmZiIgYmc9IiM1NTAwMDAwMCIvPgogICAgPGJ1dHRvbiBpZD0iYnQiIHRleHQ9IumAgCIgbWFyZ2luPSIwIDAgMCAxIiBncmF2aXR5PSJjZW50ZXIiIHc9IjQwIiBoPSI0MCIgY29sb3I9IiNmZmZmZmYiIGJnPSIjNTUwMDAwMDAiLz4KICAgICAgICAKICAgPC9saW5lYXI+ICAKPHdlYnZpZXcgaWQ9IndlYnZpZXciIGg9IioiIG1hcmdpbj0iMCAxNiIvPg0KICAgICAgICAgICAgICAgIAogICA8L3ZlcnRpY2FsPgogICA8L2ZyYW1lPgopOwp3aW5kb3cuc2Mub24oImtleSIsIGZ1bmN0aW9uKGtleUNvZGUsIGV2ZW50KXsNCiAgICBpZihldmVudC5nZXRBY3Rpb24oKSA9PSBldmVudC5BQ1RJT05fRE9XTiAmJiBrZXlDb2RlID09IGtleXMuYmFjayl7DQogICAgICAgIHdpbmRvdy5kaXNhYmxlRm9jdXMoKTsNCiAgICAgICAgZXZlbnQuY29uc3VtZWQgPSB0cnVlOw0KICAgIH0NCn0pOw0KDQp3aW5kb3cuc2Mub24oInRvdWNoX2Rvd24iLCAoKT0+ew0KICAgIHdpbmRvdy5yZXF1ZXN0Rm9jdXMoKTsNCiAgICB3aW5kb3cuc2MucmVxdWVzdEZvY3VzKCk7DQp9KTsNCgp2YXIgZXhlY3V0aW9uID0gbnVsbDsKCi8v6K6w5b2V5oyJ6ZSu6KKr5oyJ5LiL5pe255qE6Kem5pG45Z2Q5qCHCnZhciB4ID0gMCwKICAgIHkgPSAwOwovL+iusOW9leaMiemUruiiq+aMieS4i+aXtueahOaCrOa1rueql+S9jee9rgp2YXIgd2luZG93WCwgd2luZG93WTsKLy/orrDlvZXmjInplK7ooqvmjInkuIvnmoTml7bpl7Tku6Xkvr/liKTmlq3plb/mjInnrYnliqjkvZwKdmFyIGRvd25UaW1lOwp3aW5kb3cuYnMuc2V0T25Ub3VjaExpc3RlbmVyKGZ1bmN0aW9uKHZpZXcsIGV2ZW50KSB7CiAgICBzd2l0Y2ggKGV2ZW50LmdldEFjdGlvbigpKSB7CiAgICAgICAgY2FzZSBldmVudC5BQ1RJT05fRE9XTjoKICAgICAgICAgICAgeCA9IGV2ZW50LmdldFJhd1goKTsKICAgICAgICAgICAgeSA9IGV2ZW50LmdldFJhd1koKTsKICAgICAgICAgICAgd2luZG93WCA9IHdpbmRvdy5nZXRYKCk7CiAgICAgICAgICAgIHdpbmRvd1kgPSB3aW5kb3cuZ2V0WSgpOwogICAgICAgICAgICBkb3duVGltZSA9IG5ldyBEYXRlKCkuZ2V0VGltZSgpOwogICAgICAgICAgICByZXR1cm4gdHJ1ZTsKICAgICAgICBjYXNlIGV2ZW50LkFDVElPTl9NT1ZFOgogICAgICAgICAgICAvL+enu+WKqOaJi+aMh+aXtuiwg+aVtOaCrOa1rueql+S9jee9rgogICAgICAgICAgICB3aW5kb3cuc2V0UG9zaXRpb24od2luZG93WCArIChldmVudC5nZXRSYXdYKCkgLSB4KSwKICAgICAgICAgICAgICAgIHdpbmRvd1kgKyAoZXZlbnQuZ2V0UmF3WSgpIC0geSkpOwogICAgICAgICAgICAgIAogICAgICAgICAgICAvL+WmguaenOaMieS4i+eahOaXtumXtOi2hei/hzEuNeenkuWIpOaWreS4uumVv+aMie+8jOmAgOWHuuiEmuacrAogICAgICAgICAgICBpZihuZXcgRGF0ZSgpLmdldFRpbWUoKSAtIGRvd25UaW1lID4gMTUwMCl7CiAgICAgICAgICAgIGV4aXQoKTsKICAgICAgICAgICAgfQogICAgICAgICAgICByZXR1cm4gdHJ1ZTsKICAgICAgICBjYXNlIGV2ZW50LkFDVElPTl9VUDoKICAgICAgICAgICAgLy/miYvmjIflvLnotbfml7blpoLmnpzlgY/np7vlvojlsI/liJnliKTmlq3kuLrngrnlh7sKICAgICAgICAgICAgaWYgKE1hdGguYWJzKGV2ZW50LmdldFJhd1koKSAtIHkpIDwgNSAmJiBNYXRoLmFicyhldmVudC5nZXRSYXdYKCkgLSB4KSA8IDUpIHsKICAgICAgICAgICAgICAgIHRocmVhZHMuc3RhcnQoZnVuY3Rpb24oKSB7CiAgICAgICAgICAgICAgICAgICAgb25DbGljaygpOwogICAgICAgICAgICAgICAgfSk7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgcmV0dXJuIHRydWU7CiAgICB9CiAgICByZXR1cm4gdHJ1ZTsKfSk7CgpmdW5jdGlvbiBvbkNsaWNrKCkgewp0aHJlYWRzLnN0YXJ0KGZ1bmN0aW9uKCl7CiB1aS5ydW4oZnVuY3Rpb24oKSB7CiAgICB3aW5kb3cud2Vidmlldy5sb2FkVXJsKCJodHRwczovL20uYmFpZHUuY29tL3M/ZnJvbT0xMDEzODQzYSZ3b3JkPSIrd2luZG93LnNjLnRleHQoKSk7Cn0pOwp9KTsKfQp3aW5kb3cuYnQuY2xpY2soKCk9PnsKICAgIHRocmVhZHMuc3RhcnQoZnVuY3Rpb24oKXsKICAgIHZhciBoYW5kc29tZSA9IGNvbmZpcm0oIuehruiupOmAgOWHuu+8nyIpOwogICAgaWYoaGFuZHNvbWUpe2V4aXQoKTt9Cn0pOwogICAgfSk7Cgp3aGlsZSh0cnVlKXsKICAgIHNsZWVwKDEwMCk7CiAgICAKICAgIAogICAgfQ=="),

];
function 选择(){
var i = dialogs.select("请选择一个选项",jb);
if(i >= 0){
   engines.execScript("tp",nr[i]);
}else{
    toast("您取消了选择");
}
}
function b64(str){
return java.lang.String(android.util.Base64.decode(java.lang.String(str).getBytes(),0));
}



while(true){
    sleep(111);
}











