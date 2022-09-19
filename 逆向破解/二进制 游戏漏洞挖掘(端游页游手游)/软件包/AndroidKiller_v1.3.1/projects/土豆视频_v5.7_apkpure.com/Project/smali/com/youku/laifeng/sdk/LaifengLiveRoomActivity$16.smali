.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;
.super Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener$Stub;
.source "LaifengLiveRoomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$102(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z

    .line 1358
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->clean()V

    .line 1359
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->clean()V

    .line 1360
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->clean()V

    .line 1361
    return-void
.end method

.method public onConnect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    move-result-object v0

    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/socketio/send/EnterRoom;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->getUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    move-result-object v3

    const-string/jumbo v4, "rid"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    move-result-object v4

    const-string/jumbo v5, "token"

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ct_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getDataChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",dt_1_1001%7C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getVersionCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%7C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/utils/LaifengToken;->getLaifengToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/EnterRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;->sendEvent(Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;)V

    .line 1353
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "detail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1484
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$102(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z

    .line 1486
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    .line 1487
    return-void
.end method

.method public onReceiveEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1369
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_11

    .line 1371
    const-string v5, "chatMessage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1372
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1373
    .local v2, "msg":Landroid/os/Message;
    const v5, 0xe000

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1374
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1375
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1377
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v5, "result"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1378
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1380
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v4, "tmp":Lorg/json/JSONObject;
    const-string v5, "command"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "enter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1382
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    move-result-object v5

    const-string/jumbo v6, "uc"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->setUc(Ljava/lang/String;)V

    .line 1383
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->setCode(Ljava/lang/String;)V

    .line 1384
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    const v6, 0xe007

    invoke-virtual {v5, v6}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "tmp":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    const-string v5, "gift_reset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1391
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    const v6, 0xe014

    invoke-virtual {v5, v6}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    .line 1393
    :cond_2
    const-string/jumbo v5, "userlist"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1394
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1395
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe001

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1396
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1397
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1399
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    const-string v5, "levelMsg"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1400
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1401
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe012

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1402
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1403
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1405
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v5, "usercount"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1406
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1407
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1408
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe002

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1409
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1410
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1413
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    const-string/jumbo v5, "sendGift"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1414
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$4900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1415
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe003

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1416
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1417
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1419
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6
    const-string/jumbo v5, "sendStar"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1420
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1421
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe004

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1422
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1423
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1425
    .end local v2    # "msg":Landroid/os/Message;
    :cond_7
    const-string v5, "enterMessage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1426
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1427
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe005

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1428
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1429
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1431
    .end local v2    # "msg":Landroid/os/Message;
    :cond_8
    const-string v5, "hornMessage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1432
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1433
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe006

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1434
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1435
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1437
    .end local v2    # "msg":Landroid/os/Message;
    :cond_9
    const-string v5, "flashinfo"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1438
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1439
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe008

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1440
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1441
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1443
    .end local v2    # "msg":Landroid/os/Message;
    :cond_a
    const-string v5, "attention"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1444
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$5900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1445
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe009

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1446
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1447
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1449
    .end local v2    # "msg":Landroid/os/Message;
    :cond_b
    const-string/jumbo v5, "userRoomKickout"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1450
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1451
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe010

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1452
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1453
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1455
    .end local v2    # "msg":Landroid/os/Message;
    :cond_c
    const-string/jumbo v5, "sendBigGift"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1456
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1457
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe011

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1458
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1459
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1461
    .end local v2    # "msg":Landroid/os/Message;
    :cond_d
    const-string/jumbo v5, "voteStatus"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1462
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1463
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe015

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1464
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1465
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1467
    .end local v2    # "msg":Landroid/os/Message;
    :cond_e
    const-string/jumbo v5, "voteTop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1468
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1469
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe016

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1470
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1471
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1473
    .end local v2    # "msg":Landroid/os/Message;
    :cond_f
    const-string/jumbo v5, "vote"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1474
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$6900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1475
    .restart local v2    # "msg":Landroid/os/Message;
    const v5, 0xe017

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1476
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1477
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1369
    .end local v2    # "msg":Landroid/os/Message;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1386
    .restart local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1387
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 1480
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "result":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1365
    return-void
.end method
