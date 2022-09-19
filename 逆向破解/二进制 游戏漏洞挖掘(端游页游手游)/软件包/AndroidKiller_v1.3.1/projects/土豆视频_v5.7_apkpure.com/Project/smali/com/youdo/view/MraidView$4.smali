.class Lcom/youdo/view/MraidView$4;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidView;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MraidView-WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "MraidView-WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$800(Lcom/youdo/view/MraidView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$900(Lcom/youdo/view/MraidView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0, v3}, Lcom/youdo/view/MraidView;->access$1002(Lcom/youdo/view/MraidView;Z)Z

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onReady()Z

    :cond_2
    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$600(Lcom/youdo/view/MraidView;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    iget-object v1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v2}, Lcom/youdo/view/MraidView;->access$200(Lcom/youdo/view/MraidView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/youdo/view/MraidView;->access$1102(Lcom/youdo/view/MraidView;I)I

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    iget-object v1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v2}, Lcom/youdo/view/MraidView;->access$200(Lcom/youdo/view/MraidView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/youdo/view/MraidView;->access$1202(Lcom/youdo/view/MraidView;I)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    const-string v1, "(function(){var mraidview=window.mraidview={};var expandProperties={width:-1,height:-1,useBackground:false,backgroundColor:\'#ffffff\',backgroundOpacity:\'1.0\',lockOrientation:false,useCustomClose:false,isModal:true};var orientationProperties={allowOrientationChange:true,forceOrientation:\'none\'};var resizeProperties={width:0,height:0,offsetX:0,offsetY:0,customClosePosition:\'top-right\',allowOffscreen:true};var listeners={};dimensions:{};var nativeCallQueue=[];var nativeCallInFlight=false;var timer;var totalTime;mraidview.fireAssetReadyEvent=function(alias,URL){var handlers=listeners[\'assetReady\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias,URL)}};return\'OK\'};mraidview.fireAssetRemovedEvent=function(alias){var handlers=listeners[\'assetRemoved\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias)}};return\'OK\'};mraidview.fireAssetRetiredEvent=function(alias){var handlers=listeners[\'assetRetired\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](alias)}};return\'OK\'};mraidview.fireChangeEvent=function(properties){var handlers=listeners[\'change\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](properties)}};return\'OK\'};mraidview.fireErrorEvent=function(message,action){var handlers=listeners[\'error\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](message,action)}};return\'OK\'};mraidview.fireShakeEvent=function(){var handlers=listeners[\'shake\'];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i]()}};return\'OK\'};mraidview.showAlert=function(message){MRAIDUtilityControllerBridge.showAlert(message)};mraidview.zeroPad=function(number){var text=\'\';if(number<10){text+=\'0\'};text+=number;return text};mraidview.activate=function(event){MRAIDUtilityControllerBridge.activate(event)};mraidview.addEventListener=function(event,listener){var handlers=listeners[event];if(handlers==null){listeners[event]=[];handlers=listeners[event]};for(var handler in handlers){if(listener==handler){return}};handlers.push(listener)};mraidview.deactivate=function(event){MRAIDUtilityControllerBridge.deactivate(event)};mraidview.removeEventListener=function(event,listener){var handlers=listeners[event];if(handlers!=null){handlers.remove(listener)}};mraidview.close=function(){try{MRAIDDisplayControllerBridge.close()}catch(e){mraidview.showAlert(\'close: \'+e)}};mraidview.share=function(message){try{MRAIDUtilityControllerBridge.share(message)}catch(e){mraidview.showAlert(\'share: \'+e)}};mraidview.expand=function(dimensions,URL){try{}catch(e){mraidview.showAlert(\'executeNativeExpand: \'+e+\', dimensions = \'+dimensions+\', URL = \'+URL+\', expandProperties = \'+mraidview.getExpandProperties())}};mraidview.hide=function(){try{MRAIDDisplayControllerBridge.hide()}catch(e){mraidview.showAlert(\'hide: \'+e)}};mraidview.open=function(URL,controls){var back=false;var forward=false;var refresh=false;if(controls==null){back=true;forward=true;refresh=true}else{for(var i=0;i<controls.length;i++){if((controls[i]==\'none\')&&(i>0)){self.fireErrorEvent(\'none must be the only navigation element present.\',\'open\');return}else if(controls[i]==\'all\'){if(i>0){self.fireErrorEvent(\'none must be the only navigation element present.\',\'open\');return};back=true;forward=true;refresh=true}else if(controls[i]==\'back\'){back=true}else if(controls[i]==\'forward\'){forward=true}else if(controls[i]==\'refresh\'){refresh=true}}};try{MRAIDDisplayControllerBridge.open(URL,back,forward,refresh)}catch(e){mraidview.showAlert(\'open: \'+e)}};mraidview.openMap=function(POI,fullscreen){try{MRAIDDisplayControllerBridge.openMap(POI,fullscreen)}catch(e){mraidview.showAlert(\'openMap: \'+e)}};mraidview.playAudio=function(URL,properties){var autoPlay=false,controls=false,loop=false,position=false,startStyle=\'normal\',stopStyle=\'normal\';if(properties!=null){if((typeof properties.autoplay!=\'undefined\')&&(properties.autoplay!=null)){autoPlay=true};if((typeof properties.controls!=\'undefined\')&&(properties.controls!=null)){controls=true};if((typeof properties.loop!=\'undefined\')&&(properties.loop!=null)){loop=true};if((typeof properties.position!=\'undefined\')&&(properties.position!=null)){position=true};if((typeof properties.startStyle!=\'undefined\')&&(properties.startStyle!=null)){startStyle=properties.startStyle};if((typeof properties.stopStyle!=\'undefined\')&&(properties.stopStyle!=null)){stopStyle=properties.stopStyle};if(startStyle==\'normal\'){position=true};if(position){autoPlay=true;controls=false;loop=false;stopStyle=\'exit\'};if(loop){stopStyle=\'normal\';controls=true};if(!autoPlay){controls=true};if(!controls){stopStyle=\'exit\'}};try{MRAIDDisplayControllerBridge.playAudio(URL,autoPlay,controls,loop,position,startStyle,stopStyle)}catch(e){mraidview.showAlert(\'playAudio: \'+e)}};mraidview.playVideo=function(URL,properties){var audioMuted=false,autoPlay=false,controls=false,loop=false,position=[-1,-1,-1,-1],startStyle=\'normal\',stopStyle=\'normal\';if(properties!=null){if((typeof properties.audio!=\'undefined\')&&(properties.audio!=null)){audioMuted=true};if((typeof properties.autoplay!=\'undefined\')&&(properties.autoplay!=null)){autoPlay=true};if((typeof properties.controls!=\'undefined\')&&(properties.controls!=null)){controls=true};if((typeof properties.loop!=\'undefined\')&&(properties.loop!=null)){loop=true};if((typeof properties.position!=\'undefined\')&&(properties.position!=null)){inline=new Array(4);inline[0]=properties.position.top;inline[1]=properties.position.left;if((typeof properties.width!=\'undefined\')&&(properties.width!=null)){inline[2]=properties.width}else{};if((typeof properties.height!=\'undefined\')&&(properties.height!=null)){inline[3]=properties.height}else{}};if((typeof properties.startStyle!=\'undefined\')&&(properties.startStyle!=null)){startStyle=properties.startStyle};if((typeof properties.stopStyle!=\'undefined\')&&(properties.stopStyle!=null)){stopStyle=properties.stopStyle};if(loop){stopStyle=\'normal\';controls=true};if(!autoPlay)controls=true;if(!controls){stopStyle=\'exit\'};if(position[0]==-1||position[1]==-1){startStyle=\'fullscreen\'}};try{MRAIDDisplayControllerBridge.playVideo(URL,audioMuted,autoPlay,controls,loop,position,startStyle,stopStyle)}catch(e){mraidview.showAlert(\'playVideo: \'+e)}};mraidview.resize=function(width,height){try{var p=mraidview.getResizeProperties();MRAIDDisplayControllerBridge.resize(width,height,p.offsetX,p.offsetY,p.customClosePosition,p.allowOffscreen)}catch(e){mraidview.showAlert(\'resize: \'+e)}};mraidview.useCustomClose=function(flag){MRAIDDisplayControllerBridge.useCustomClose(flag)};mraidview.getExpandProperties=function(){return expandProperties};mraidview.setExpandProperties=function(properties){expandProperties=properties};mraidview.getOrientationProperties=function(){return orientationProperties};mraidview.setOrientationProperties=function(properties){orientationProperties=properties};mraidview.getResizeProperties=function(){return resizeProperties};mraidview.setResizeProperties=function(properties){resizeProperties=properties};mraidview.show=function(){try{MRAIDDisplayControllerBridge.show()}catch(e){mraidview.showAlert(\'show: \'+e)}};mraidview.createEvent=function(date,title,body){var msecs=(date.getTime()-date.getMilliseconds());try{MRAIDUtilityControllerBridge.createEvent(msecs.toString(),title,body)}catch(e){mraidview.showAlert(\'createEvent: \'+e)}};mraidview.getSDKProfile=function(){var s=\'\';try{s=MRAIDUtilityControllerBridge.getSDKProfile()}catch(e){s=\'getSDKProfile\'+e};return s};mraidview.makeCall=function(phoneNumber){try{MRAIDUtilityControllerBridge.makeCall(phoneNumber)}catch(e){mraidview.showAlert(\'makeCall: \'+e)}};mraidview.sendMail=function(recipient,subject,body){try{MRAIDUtilityControllerBridge.sendMail(recipient,subject,body)}catch(e){mraidview.showAlert(\'sendMail: \'+e)}};mraidview.sendSMS=function(recipient,body){try{MRAIDUtilityControllerBridge.sendSMS(recipient,body)}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.setShakeProperties=function(properties){};mraidview.pauseVideoAd=function(){try{MRAIDDisplayControllerBridge.pauseVideoAd()}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.resumeVideoAd=function(){try{MRAIDDisplayControllerBridge.resumeVideoAd()}catch(e){mraidview.showAlert(\'sendSMS: \'+e)}};mraidview.getVideoAdPlayheadTime=function(){try{return MRAIDUtilityControllerBridge.getVideoAdPlayheadTime()}catch(e){return 0}};mraidview.getVideoAdDuration=function(){try{return MRAIDUtilityControllerBridge.getVideoAdDuration()}catch(e){return 0}};mraidview.addAsset=function(URL,alias){};mraidview.request=function(URI,display){console.log(\'mraidview.request \'+URI+\', \'+display);mraidview.executeNativeCall(\'request\',\'uri\',URI,\'display\',display)};mraidview.removeAsset=function(alias){};mraidview.stringify=function(args){return\'\';};mraidview.stringifyArg=function(arg){return\'\';};mraidview.executeNativeCall=function(command){var bridgeCall=\'mraid://\'+command;var value;var firstArg=true;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null){continue};if(firstArg){bridgeCall+=\'?\';firstArg=false}else{bridgeCall+=\'&\'};bridgeCall+=arguments[i]+\'=\'+escape(value)};console.log(\'executeNativeCall nativeCallInFlight=\'+nativeCallInFlight+\', bridgeCall=\'+bridgeCall);if(nativeCallInFlight){nativeCallQueue.push(bridgeCall)}else{nativeCallInFlight=true;window.location=bridgeCall}};var mraid=window.mraid={};var ormma=window.ormma={};var STATES=ormma.STATES=mraid.STATES={UNKNOWN:\'unknown\',LOADING:\'loading\',DEFAULT:\'default\',RESIZED:\'resized\',EXPANDED:\'expanded\',HIDDEN:\'hidden\'};var EVENTS=ormma.EVENTS=mraid.EVENTS={READY:\'ready\',ASSETREADY:\'assetReady\',ASSETREMOVED:\'assetRemoved\',ASSETRETIRED:\'assetRetired\',ERROR:\'error\',INFO:\'info\',HEADINGCHANGE:\'headingChange\',KEYBOARDCHANGE:\'keyboardChange\',LOCATIONCHANGE:\'locationChange\',NETWORKCHANGE:\'networkChange\',ORIENTATIONCHANGE:\'orientationChange\',RESPONSE:\'response\',SCREENCHANGE:\'screenChange\',SHAKE:\'shake\',SIZECHANGE:\'sizeChange\',STATECHANGE:\'stateChange\',TILTCHANGE:\'tiltChange\',VIEWABLECHANGE:\'viewableChange\',XADSDKVIEWABLECHANGE:\'xadsdkviewableChange\'};var CONTROLS=mraid.CONTROLS={BACK:\'back\',FORWARD:\'forward\',REFRESH:\'refresh\',ALL:\'all\'};var FEATURES=mraid.FEATURES={LEVEL1:\'level-1\',LEVEL2:\'level-2\',LEVEL3:\'level-3\',SCREEN:\'screen\',ORIENTATION:\'orientation\',HEADING:\'heading\',LOCATION:\'location\',SHAKE:\'shake\',TILT:\'tilt\',NETWORK:\'network\',SMS:\'sms\',PHONE:\'phone\',EMAIL:\'email\',CALENDAR:\'calendar\',CAMERA:\'camera\',AUDIO:\'audio\',VIDEO:\'video\',MAP:\'map\'};var NETWORK=mraid.NETWORK={OFFLINE:\'offline\',WIFI:\'wifi\',CELL:\'cell\',UNKNOWN:\'unknown\'};var state=STATES.UNKNOWN;var size={width:0,height:0};var defaultPosition={x:0,y:0,width:0,height:0};var maxSize={width:0,height:0};var supports={\'level-1\':true,\'level-2\':true,\'level-3\':true,\'screen\':true,\'orientation\':true,\'heading\':true,\'location\':true,\'shake\':true,\'tilt\':true,\'network\':true,\'sms\':true,\'phone\':true,\'email\':true,\'calendar\':true,\'camera\':true,\'audio\':true,\'video\':true,\'map\':true};var viewable=true;var xadsdkviewable=true;var heading=-1;var keyboardState=false;var deviceProperties={};var location=null;var network=NETWORK.UNKNOWN;var orientation=-1;var screenSize=null;var shakeProperties=null;var tilt=null;var assets={};var cacheRemaining=-1;var intervalID=null;var readyTimeout=10000;var readyDuration=0;var dimensionValidators={x:function(value){return!isNaN(value)&&value>=0},y:function(value){return!isNaN(value)&&value>=0},width:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.width},height:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.height}};var expandPropertyValidators={width:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.width},height:function(value){return!isNaN(value)&&value>=0&&value<=screenSize.height},useBackground:function(value){return(value===true||value===false)},backgroundColor:function(value){return(typeof value==\'string\'&&value.substr(0,1)==\'#\'&&!isNaN(parseInt(value.substr(1),16)))},backgroundOpacity:function(value){return!isNaN(value)&&value>=0&&value<=1},lockOrientation:function(value){return(value===true||value===false)}};var orientationPropertyValidators={allowOrientationChange:function(value){return(value===true||value===false)},forceOrientation:function(value){return(typeof value==\'string\'&&(value===\'portrait\'||value===\'landscape\'||value===\'none\'))}};var shakePropertyValidators={intensity:function(value){return!isNaN(value)},interval:function(value){return!isNaN(value)}};var changeHandlers={state:function(val){if(state==STATES.UNKNOWN){intervalID=window.setInterval(window.mraid.signalReady,20);broadcastEvent(EVENTS.INFO,\'controller initialized, attempting callback\');console.log(\'controller initialized, attempting callback\')};broadcastEvent(EVENTS.INFO,\'setting state to \'+stringify(val));state=val;broadcastEvent(EVENTS.STATECHANGE,state)},size:function(val){broadcastEvent(EVENTS.INFO,\'setting size to \'+stringify(val));size=val;broadcastEvent(EVENTS.SIZECHANGE,size.width,size.height)},defaultPosition:function(val){broadcastEvent(EVENTS.INFO,\'setting default position to \'+stringify(val));defaultPosition=val},maxSize:function(val){broadcastEvent(EVENTS.INFO,\'setting maxSize to \'+stringify(val));maxSize=val},expandProperties:function(val){broadcastEvent(EVENTS.INFO,\'merging expandProperties with \'+stringify(val));for(var i in val){expandProperties[i]=val[i]}},orientationProperties:function(val){broadcastEvent(EVENTS.INFO,\'merging orientationProperties with \'+stringify(val));for(var i in val){orientationProperties[i]=val[i]}},supports:function(val){broadcastEvent(EVENTS.INFO,\'setting supports to \'+stringify(val));supports={};for(var key in FEATURES){supports[FEATURES[key]]=contains(FEATURES[key],val)}},heading:function(val){broadcastEvent(EVENTS.INFO,\'setting heading to \'+stringify(val));heading=val;broadcastEvent(EVENTS.HEADINGCHANGE,heading)},keyboardState:function(val){broadcastEvent(EVENTS.INFO,\'setting keyboardState to \'+stringify(val));keyboardState=val;broadcastEvent(EVENTS.KEYBOARDCHANGE,keyboardState)},deviceProperties:function(val){deviceProperties=val},location:function(val){broadcastEvent(EVENTS.INFO,\'setting location to \'+stringify(val));location=val;broadcastEvent(EVENTS.LOCATIONCHANGE,location.lat,location.lon,location.acc)},network:function(val){broadcastEvent(EVENTS.INFO,\'setting network to \'+stringify(val));network=val;broadcastEvent(EVENTS.NETWORKCHANGE,(network!=NETWORK.OFFLINE&&network!=NETWORK.UNKNOWN),network)},orientation:function(val){broadcastEvent(EVENTS.INFO,\'setting orientation to \'+stringify(val));orientation=val;broadcastEvent(EVENTS.ORIENTATIONCHANGE,orientation)},screenSize:function(val){broadcastEvent(EVENTS.INFO,\'setting screenSize to \'+stringify(val));screenSize=val;broadcastEvent(EVENTS.SCREENCHANGE,screenSize.width,screenSize.height)},shakeProperties:function(val){broadcastEvent(EVENTS.INFO,\'setting shakeProperties to \'+stringify(val));shakeProperties=val},tilt:function(val){broadcastEvent(EVENTS.INFO,\'setting tilt to \'+stringify(val));tilt=val;broadcastEvent(EVENTS.TILTCHANGE,tilt.x,tilt.y,tilt.z)},cacheRemaining:function(val){broadcastEvent(EVENTS.INFO,\'setting cacheRemaining to \'+stringify(val));cacheRemaining=val},viewable:function(val){viewable=(val===\'true\')||(val===\'1\')||(val===\'yes\');broadcastEvent(EVENTS.VIEWABLECHANGE,viewable)},xadsdkviewable:function(val){xadsdkviewable=(val===\'true\')||(val===\'1\')||(val===\'yes\');broadcastEvent(EVENTS.XADSDKVIEWABLECHANGE,xadsdkviewable)}};var listeners={};var EventListeners=function(event){this.event=event;this.count=0;var listeners={};this.add=function(func){var id=String(func);if(!listeners[id]){listeners[id]=func;this.count++;if(this.count==1)mraidview.activate(event)}};this.remove=function(func){var id=String(func);if(listeners[id]){listeners[id]=null;delete listeners[id];this.count--;if(this.count==0)mraidview.deactivate(event);return true}else{return false}};this.removeAll=function(){for(var id in listeners)this.remove(listeners[id])};this.broadcast=function(args){for(var id in listeners)listeners[id].apply({},args)};this.toString=function(){var out=[event,\':\'];for(var id in listeners)out.push(\'|\',id,\'|\');return out.join(\'\')}};mraidview.addEventListener(\'change\',function(properties){for(var property in properties){var handler=changeHandlers[property];handler(properties[property])}});mraidview.addEventListener(\'shake\',function(){broadcastEvent(EVENTS.SHAKE)});mraidview.addEventListener(\'error\',function(message,action){broadcastEvent(EVENTS.ERROR,message,action)});mraidview.addEventListener(\'response\',function(uri,response){broadcastEvent(EVENTS.RESPONSE,uri,response)});mraidview.addEventListener(\'assetReady\',function(alias,URL){assets[alias]=URL;broadcastEvent(EVENTS.ASSETREADY,alias)});mraidview.addEventListener(\'assetRemoved\',function(alias){assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETREMOVED,alias)});mraidview.addEventListener(\'assetRetired\',function(alias){assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETRETIRED,alias)});var clone=function(obj){var f=function(){};f.prototype=obj;return new f()};var stringify=function(obj){return\'\';};var valid=function(obj,validators,action,full){if(full){if(obj===undefined){broadcastEvent(EVENTS.ERROR,\'Required object missing.\',action);return false}else{for(var i in validators){if(obj[i]===undefined){broadcastEvent(EVENTS.ERROR,\'Object missing required property \'+i,action);return false}}}};for(var i in obj){if(!validators[i]){broadcastEvent(EVENTS.ERROR,\'Invalid property specified - \'+i+\'.\',action);return false}else if(!validators[i](obj[i])){broadcastEvent(EVENTS.ERROR,\'Value of property \'+i+\'<\'+obj[i]+\'>\'+\' is not valid type.\',action);return false}};return true};var contains=function(value,array){for(var i in array){if(array[i]==value){return true}};return false};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++){args[i]=arguments[i]};var event=args.shift();try{if(listeners[event]){listeners[event].broadcast(args)};console.log(\'broadcastEvent:\'+event+\':args:\'+args)}catch(e){}};var trim=function(s){var l=0;var r=s.length-1;while(l<s.length&&s[l]==\' \'){l++}while(r>l&&s[r]==\' \'){r-=1};return s.substring(l,r+1)};function mraidReadyEvent(){};function handleStateChangeEvent(){};mraid.signalReady=function(){state=STATES.DEFAULT;mraid.addEventListener(\'stateChange\',handleStateChangeEvent);window.clearInterval(intervalID);broadcastEvent(EVENTS.INFO,\'ready eventListener triggered\');broadcastEvent(mraid.EVENTS.READY,\'mraid ready event triggered\');try{ORMMAReady();mraid.addEventListener(\'ready\',mraidReadyEvent);broadcastEvent(EVENTS.INFO,\'MRAID callback invoked\')}catch(e){console.log(\'ignore errors, will try again soon and then timeout\'+e)}};mraid.addEventListener=function(event,listener){if(!event||!listener){broadcastEvent(EVENTS.ERROR,\'Both event and listener are required.\',\'addEventListener\')}else if(!contains(event,EVENTS)){broadcastEvent(EVENTS.ERROR,\'Unknown event: \'+event,\'addEventListener\')}else{if(!listeners[event]){listeners[event]=new EventListeners(event)};listeners[event].add(listener)}};mraid.close=function(){mraidview.close()};mraid.share=function(message){mraidview.share(message)};mraid.expand=function(URL){var p=mraid.getExpandProperties();var pos=mraid.getDefaultPosition();var d={x:pos.x,y:pos.y,width:p.width,height:p.height};broadcastEvent(EVENTS.INFO,\'expanding to \'+stringify(d)+\', URL=\'+URL);broadcastEvent(EVENTS.INFO,\'expanding to new: \'+stringify(d));if(valid(d,dimensionValidators,\'expand\',true)&&mraid.getState()!=STATES.EXPANDED){mraidview.expand(d,URL);console.log(\'state:\'+mraid.getState())}};mraid.getDefaultPosition=function(){return clone(defaultPosition)};mraid.getCurrentPosition=function(){return mraid.getDefaultPosition()};mraid.getExpandProperties=function(){var p=clone(mraidview.getExpandProperties());var s=clone(mraid.getScreenSize());var obj={x:p.x,y:p.y,width:p.width,height:p.height,useCustomClose:p.useCustomClose,isModal:p.isModal};if(p[\'width\']<=0)obj[\'width\']=s[\'width\'];if(p[\'height\']<=0)obj[\'height\']=s[\'height\'];return obj};mraid.getOrientationProperties=function(){return clone(mraidview.getOrientationProperties())};mraid.getMaxSize=function(){return clone(maxSize)};mraid.getSize=function(){return clone(size)};mraid.getState=function(){return state};mraid.getDeviceProperties=function(){return deviceProperties};mraid.isViewable=function(){return viewable};mraid.getPlacementType=function(){return\'interstitial\'};mraid.getVersion=function(){return\'yd_mraid 1.0\'};mraid.hide=function(){if(state==STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,\'Ad is currently hidden.\',\'hide\')}else{mraidview.hide()}};mraid.open=function(URL,controls){if(!URL){broadcastEvent(EVENTS.ERROR,\'URL is required.\',\'open\')}else{mraidview.open(URL,controls)}};mraid.openMap=function(POI,fullscreen){};mraid.removeEventListener=function(event,listener){if(!event){broadcastEvent(EVENTS.ERROR,\'Must specify an event.\',\'removeEventListener\')}else{if(listener&&(!listeners[event]||!listeners[event].remove(listener))){broadcastEvent(EVENTS.ERROR,\'Listener not currently registered for event\',\'removeEventListener\');return}else if(listeners[event]){listeners[event].removeAll()};if(listeners[event]&&listeners[event].count==0){listeners[event]=null;delete listeners[event]}}};mraid.resize=function(width,height){var w;var h;if(width==null&&height==null){var p=mraid.getResizeProperties();w=p.width;h=p.height;}else{w=width;h=height;};if(mraid.isValidResizeProperties(w,h)){mraidview.resize(w,h)}};mraid.isValidResizeProperties=function(width,height){var b=true;if(width==null||height==null||isNaN(width)||isNaN(height)||width<0||height<0){b=false;broadcastEvent(EVENTS.ERROR,\'Requested size must be numeric values between 0 and maxSize.\',\'resize\')}else if(width>maxSize.width||height>maxSize.height){b=false;broadcastEvent(EVENTS.ERROR,\'Request (\'+width+\' x \'+height+\') exceeds maximum allowable size of (\'+maxSize.width+\' x \'+maxSize.height+\')\',\'resize\')}else if(width==size.width&&height==size.height){};return b};mraid.setExpandProperties=function(properties){mraidview.setExpandProperties(properties);};mraid.setOrientationProperties=function(properties){if(valid(properties,orientationPropertyValidators,\'setOrientationProperties\')){mraidview.setOrientationProperties(properties)}};var isMraidResizePropertiesUpdated=false;mraid.setResizeProperties=function(properties){isMraidResizePropertiesUpdated=true;mraidview.setResizeProperties(properties);};mraid.getResizeProperties=function(){var o=clone(mraidview.getResizeProperties());if(!isMraidResizePropertiesUpdated){var s=mraid.getSize();o[\'width\']=s[\'width\'];o[\'height\']=s[\'height\']};return o};mraid.show=function(){if(state!=STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,\'Ad is currently visible.\',\'show\')}else{mraidview.show()}};mraid.playAudio=function(URL,properties){if(!supports[FEATURES.AUDIO]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'playAudio\')}else if(!URL||typeof URL!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Request must specify a URL\',\'playAudio\')}else{mraidview.playAudio(URL,properties)}};mraid.playVideo=function(URL,properties){if(!supports[FEATURES.VIDEO]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'playVideo\')}else if(!URL||typeof URL!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Request must specify a URL\',\'playVideo\')}else{mraidview.playVideo(URL,properties)}};mraid.createEvent=function(date,title,body){if(!supports[FEATURES.CALENDAR]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'createEvent\')}else if(!date||typeof date!=\'object\'||!date.getDate){broadcastEvent(EVENTS.ERROR,\'Valid date required.\',\'createEvent\')}else if(!title||typeof title!=\'string\'||trim(title).length==0){broadcastEvent(EVENTS.ERROR,\'Valid title required.\',\'createEvent\')}else if(!body||typeof body!=\'string\'||trim(body).length==0){broadcastEvent(EVENTS.ERROR,\'Valid body required.\',\'createEvent\')}else{mraidview.createEvent(date,title,body)}};mraid.getSDKProfile=function(){return mraidview.getSDKProfile()};mraid.getHeading=function(){if(!supports[FEATURES.HEADING]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getHeading\')};return heading};mraid.getKeyboardState=function(){if(!supports[FEATURES.LEVEL2]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getKeyboardState\')};return keyboardState};mraid.getLocation=function(){if(!supports[FEATURES.LOCATION]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getLocation\')};return(null==location)?null:clone(location)};mraid.getNetwork=function(){if(!supports[FEATURES.NETWORK]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getNetwork\')};return network};mraid.getOrientation=function(){if(!supports[FEATURES.ORIENTATION]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getOrientation\')};return orientation};mraid.getScreenSize=function(){if(!supports[FEATURES.SCREEN]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getScreenSize\')}else{return(null==screenSize)?null:clone(screenSize)}};mraid.getShakeProperties=function(){if(!supports[FEATURES.SHAKE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getShakeProperties\')}else{return(null==shakeProperties)?null:clone(shakeProperties)}};mraid.getTilt=function(){if(!supports[FEATURES.TILT]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getTilt\')}else{return(null==tilt)?null:clone(tilt)}};mraid.makeCall=function(number){if(!supports[FEATURES.PHONE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'makeCall\')}else if(!number||typeof number!=\'string\'||trim(number).length==0){broadcastEvent(EVENTS.ERROR,\'Request must provide a number to call.\',\'makeCall\')}else{mraidview.makeCall(number)}};mraid.sendMail=function(recipient,subject,body){if(!supports[FEATURES.EMAIL]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'sendMail\')}else if(!recipient||typeof recipient!=\'string\'||trim(recipient).length==0){broadcastEvent(EVENTS.ERROR,\'Request must specify a recipient.\',\'sendMail\')}else{mraidview.sendMail(recipient,subject,body)}};mraid.sendSMS=function(recipient,body){if(!supports[FEATURES.SMS]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'sendSMS\')}else if(!recipient||typeof recipient!=\'string\'||trim(recipient).length==0){broadcastEvent(EVENTS.ERROR,\'Request must specify a recipient.\',\'sendSMS\')}else{mraidview.sendSMS(recipient,body)}};mraid.setShakeProperties=function(properties){if(!supports[FEATURES.SHAKE]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'setShakeProperties\')}else if(valid(properties,shakePropertyValidators,\'setShakeProperties\')){mraidview.setShakeProperties(properties)}};mraid.supports=function(feature){if(supports[feature]){return true}else{return false}};mraid.addAsset=function(URL,alias){if(!URL||!alias||typeof URL!=\'string\'||typeof alias!=\'string\'){broadcastEvent(EVENTS.ERROR,\'URL and alias are required.\',\'addAsset\')}else if(supports[FEATURES.LEVEL3]){mraidview.addAsset(URL,alias)}else if(URL.indexOf(\'mraid://\')==0){broadcastEvent(EVENTS.ERROR,\'Native device assets not supported by this client.\',\'addAsset\')}else{assets[alias]=URL;broadcastEvent(EVENTS.ASSETREADY,alias)}};mraid.addAssets=function(assets){for(var alias in assets){mraid.addAsset(assets[alias],alias)}};mraid.getAssetURL=function(alias){if(!assets[alias]){broadcastEvent(EVENTS.ERROR,\'Alias unknown.\',\'getAssetURL\')};return assets[alias]};mraid.getCacheRemaining=function(){if(!supports[FEATURES.LEVEL3]){broadcastEvent(EVENTS.ERROR,\'Method not supported by this client.\',\'getCacheRemaining\')};return cacheRemaining};mraid.request=function(uri,display){console.log(\'mraid.request support_level3=\'+supports[FEATURES.LEVEL3]+\', uri=\'+uri+\', display=\'+display);mraidview.request(uri,display);};mraid.removeAllAssets=function(){for(var alias in assets){mraid.removeAsset(alias)}};mraid.removeAsset=function(alias){if(!alias||typeof alias!=\'string\'){broadcastEvent(EVENTS.ERROR,\'Alias is required.\',\'removeAsset\')}else if(!assets[alias]){broadcastEvent(EVENTS.ERROR,\'Alias unknown.\',\'removeAsset\')}else if(supports[FEATURES.LEVEL3]){mraidview.removeAsset(alias)}else{assets[alias]=null;delete assets[alias];broadcastEvent(EVENTS.ASSETREMOVED,alias)}};mraid.useCustomClose=function(flag){mraidview.useCustomClose(flag);};mraid.pauseVideoAd=function(){mraidview.pauseVideoAd()};mraid.resumeVideoAd=function(){mraidview.resumeVideoAd()};mraid.getVideoAdPlayheadTime=function(){return mraidview.getVideoAdPlayheadTime()};mraid.getVideoAdDuration=function(){return mraidview.getVideoAdDuration()};mraid.setVideoDisplayProperties=function(offsetX,offsetY,drivingAdWidth,drivingAdHeight){mraidview.setVideoDisplayProperties(offsetX,offsetY,drivingAdWidth,drivingAdHeight)};mraid.detachBridgeInterface=function(){};ormma.addEventListener=mraid.addEventListener;ormma.close=mraid.close;ormma.expand=mraid.expand;ormma.getExpandProperties=mraid.getExpandProperties;ormma.getOrientationProperties=mraid.getOrientationProperties;ormma.getState=mraid.getState;ormma.open=mraid.open;ormma.removeEventListener=mraid.removeEventListener;ormma.setExpandProperties=mraid.setExpandProperties;ormma.setOrientationProperties=mraid.setOrientationProperties;ormma.useCustomClose=mraid.useCustomClose;ormma.show=mraid.show;ormma.error=mraid.error;ormma.stateChange=mraid.stateChange;ormma.ready=mraid.ready;ormma.viewableChange=mraid.viewableChange;ormma.getDefaultPosition=mraid.getDefaultPosition;ormma.getMaxSize=mraid.getMaxSize;ormma.getSize=mraid.getSize;ormma.hide=mraid.hide;ormma.resize=mraid.resize;ormma.pauseVideoAd=mraid.pauseVideoAd;ormma.resumeVideoAd=mraid.resumeVideoAd;})();"

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$700(Lcom/youdo/view/MraidView;)Lcom/youdo/controller/MraidUtilityController;

    move-result-object v0

    sget-object v1, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->VALID:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    invoke-virtual {v0, v1}, Lcom/youdo/controller/MraidUtilityController;->setAssetStatus(Lcom/youdo/controller/MraidUtilityController$AssetStatus;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$700(Lcom/youdo/view/MraidView;)Lcom/youdo/controller/MraidUtilityController;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1}, Lcom/youdo/view/MraidView;->access$200(Lcom/youdo/view/MraidView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youdo/controller/MraidUtilityController;->init(F)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lorg/openad/common/util/ViewUtils;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MraidView-WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onError()Z

    :cond_0
    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$600(Lcom/youdo/view/MraidView;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$700(Lcom/youdo/view/MraidView;)Lcom/youdo/controller/MraidUtilityController;

    move-result-object v0

    sget-object v1, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->INVALID:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    invoke-virtual {v0, v1}, Lcom/youdo/controller/MraidUtilityController;->setAssetStatus(Lcom/youdo/controller/MraidUtilityController$AssetStatus;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    const-string v0, "MraidView-WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedSslError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youdo/view/MraidView$MraidViewListener;->onError()Z

    :cond_0
    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v0}, Lcom/youdo/view/MraidView;->access$600(Lcom/youdo/view/MraidView;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "MraidView-WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1, v0}, Lcom/youdo/view/MraidView;->access$1300(Lcom/youdo/view/MraidView;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v1}, Lcom/youdo/view/MraidView;->access$000(Lcom/youdo/view/MraidView;)Lcom/youdo/view/MraidView$MraidViewListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/youdo/view/MraidView$MraidViewListener;->handleRequest(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v2}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v2}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "mraid://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getEmbeddedBrowserOpened()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v2}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/youdo/view/MraidView$4;->this$0:Lcom/youdo/view/MraidView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youdo/view/MraidView;->setEmebeddedBrowserOpen(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
