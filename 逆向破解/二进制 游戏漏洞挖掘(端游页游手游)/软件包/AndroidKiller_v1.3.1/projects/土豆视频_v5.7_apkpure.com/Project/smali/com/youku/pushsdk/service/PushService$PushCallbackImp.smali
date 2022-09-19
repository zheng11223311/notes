.class Lcom/youku/pushsdk/service/PushService$PushCallbackImp;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/youku/pushsdk/control/PushCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/pushsdk/service/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PushCallbackImp"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/youku/pushsdk/service/PushService;


# direct methods
.method public constructor <init>(Lcom/youku/pushsdk/service/PushService;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->context:Landroid/content/Context;

    .line 346
    return-void
.end method


# virtual methods
.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 351
    const/4 v1, 0x0

    sput-boolean v1, Lcom/youku/pushsdk/service/PushService;->SUBSCRIBED:Z

    .line 352
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v1}, Lcom/youku/pushsdk/service/PushService;->access$4(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    move-object v1, p1

    .line 353
    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v0

    .line 354
    .local v0, "reasonCode":I
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection lost code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection lost reason : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .end local p1    # "cause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/16 v1, 0x7d00

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    .line 361
    const-string v2, "PUSH_MQTT\u63a5\u6536\u5fc3\u8df3\u5931\u8d25"

    .line 362
    iget-object v3, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    iget-object v4, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v4}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/pushsdk/service/PushService;->access$6(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v5}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/pushsdk/service/PushService;->access$7(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-static {v1, v2, v3, v4}, Lcom/youku/pushsdk/service/PushService;->access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive heart beat failed\uff01"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/youku/pushsdk/service/PushService;->access$9(Lcom/youku/pushsdk/service/PushService;Z)V

    .line 367
    return-void
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V
    .locals 3
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    .prologue
    .line 446
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delivery completed! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;I)V
    .locals 8
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "topic = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " /Qos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 378
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " /content = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 379
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " /is retained = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 380
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " /is duplicate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 381
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isDuplicate()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "push msg arrived: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isDuplicate()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "receive duplicate message : (msgId)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    .line 390
    const-string v6, "PUSH_\u91cd\u590d\u6d88\u606f"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    invoke-static {v5, v6, p1, v7}, Lcom/youku/pushsdk/service/PushService;->access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/youku/pushsdk/db/DBHelper;->getInstance()Lcom/youku/pushsdk/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5, p1, p3}, Lcom/youku/pushsdk/db/DBHelper;->queryMessageId(Ljava/lang/String;I)Z

    move-result v2

    .line 394
    .local v2, "sent":Z
    if-nez v2, :cond_1

    .line 395
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "the msg has not been sent: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v5}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 397
    .local v4, "targetSwitchState":Z
    if-eqz v4, :cond_1

    .line 399
    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v5}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 400
    .local v3, "targetPackage":Ljava/lang/String;
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "send push msg to target package: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_0

    .line 404
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    :cond_0
    const-string v5, "push_msg_content"

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 407
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v5, "com.youku.android.pushsdk.action.MESSAGE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->context:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    invoke-static {}, Lcom/youku/pushsdk/db/DBHelper;->getInstance()Lcom/youku/pushsdk/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5, p1, p3}, Lcom/youku/pushsdk/db/DBHelper;->insert(Ljava/lang/String;I)V

    .line 441
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "sent":Z
    .end local v3    # "targetPackage":Ljava/lang/String;
    .end local v4    # "targetSwitchState":Z
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v5}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 419
    .restart local v4    # "targetSwitchState":Z
    if-eqz v4, :cond_4

    .line 421
    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v5}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 422
    .restart local v3    # "targetPackage":Ljava/lang/String;
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "new msg id: "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    if-ne p3, v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "send push msg to target package: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "push_msg_content"

    .line 428
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v6

    .line 427
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 429
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v5, "com.youku.android.pushsdk.action.MESSAGE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;->context:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    invoke-static {}, Lcom/youku/pushsdk/db/DBHelper;->getInstance()Lcom/youku/pushsdk/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5, p1, p3}, Lcom/youku/pushsdk/db/DBHelper;->insert(Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    move v5, p3

    .line 422
    goto :goto_1

    .line 436
    .end local v3    # "targetPackage":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "new msg arrived,but the targetSwitch = false"

    invoke-static {v5, v6}, Lcom/youku/pushsdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
