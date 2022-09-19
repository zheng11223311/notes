.class Lio/rong/push/PushService$PushHandler$PushClientListener;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lio/rong/push/PushClient$ClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushService$PushHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushClientListener"
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/push/PushService$PushHandler;


# direct methods
.method private constructor <init>(Lio/rong/push/PushService$PushHandler;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lio/rong/push/PushService$PushHandler$PushClientListener;->this$1:Lio/rong/push/PushService$PushHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/push/PushService$PushHandler;Lio/rong/push/PushService$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/push/PushService$PushHandler;
    .param p2, "x1"    # Lio/rong/push/PushService$1;

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lio/rong/push/PushService$PushHandler$PushClientListener;-><init>(Lio/rong/push/PushService$PushHandler;)V

    return-void
.end method


# virtual methods
.method public messageArrived(Lio/rong/push/PushProtocalStack$PublishMessage;)V
    .locals 10
    .param p1, "msg"    # Lio/rong/push/PushProtocalStack$PublishMessage;

    .prologue
    .line 445
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$PublishMessage;->getDataAsString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 448
    :cond_0
    iget-object v7, p0, Lio/rong/push/PushService$PushHandler$PushClientListener;->this$1:Lio/rong/push/PushService$PushHandler;

    iget-object v7, v7, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    const-string v8, "Received"

    const-string/jumbo v9, "the message received from server is null!!!"

    invoke-static {v7, v8, v9}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-void

    .line 451
    :cond_1
    const-string v7, "PushService"

    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$PublishMessage;->getDataAsString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :try_start_0
    iget-object v7, p0, Lio/rong/push/PushService$PushHandler$PushClientListener;->this$1:Lio/rong/push/PushService$PushHandler;

    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$PublishMessage;->getDataAsString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/rong/push/PushService$PushHandler;->access$700(Lio/rong/push/PushService$PushHandler;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 462
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "PushService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "the package name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "packageName"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v7, "io.rong.push.message"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v7, "packageName"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "packageName":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 468
    const-string v7, "messageArrived"

    const-string v8, "packageName is null!!!!"

    invoke-static {p0, v7, v8}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 457
    .local v3, "e":Lorg/json/JSONException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error json string!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 471
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v7

    invoke-virtual {v7, v5}, Lio/rong/push/PushContext;->isPackageUninstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 473
    const-string/jumbo v7, "tId"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "userId":Ljava/lang/String;
    iget-object v7, p0, Lio/rong/push/PushService$PushHandler$PushClientListener;->this$1:Lio/rong/push/PushService$PushHandler;

    iget-object v7, v7, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    invoke-static {v7}, Lio/rong/common/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "deviceId":Ljava/lang/String;
    const-string v7, "appId"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "appKey":Ljava/lang/String;
    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    .line 478
    :try_start_1
    iget-object v7, p0, Lio/rong/push/PushService$PushHandler$PushClientListener;->this$1:Lio/rong/push/PushService$PushHandler;

    invoke-static {v7, v6, v2, v0, v5}, Lio/rong/push/PushService$PushHandler;->access$800(Lio/rong/push/PushService$PushHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v6    # "userId":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v7, "packageName"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xc

    if-lt v7, v8, :cond_4

    .line 488
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 490
    :cond_4
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 491
    iget-object v7, p0, Lio/rong/push/PushService$PushHandler$PushClientListener;->this$1:Lio/rong/push/PushService$PushHandler;

    iget-object v7, v7, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    invoke-virtual {v7, v4}, Lio/rong/push/PushService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 479
    .restart local v0    # "appKey":Ljava/lang/String;
    .restart local v2    # "deviceId":Ljava/lang/String;
    .restart local v6    # "userId":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 480
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
