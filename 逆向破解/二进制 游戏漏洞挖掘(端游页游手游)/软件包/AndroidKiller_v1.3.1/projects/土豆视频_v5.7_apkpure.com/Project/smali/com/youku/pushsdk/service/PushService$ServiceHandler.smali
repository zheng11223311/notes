.class Lcom/youku/pushsdk/service/PushService$ServiceHandler;
.super Landroid/os/Handler;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/pushsdk/service/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pushsdk/service/PushService;


# direct methods
.method public constructor <init>(Lcom/youku/pushsdk/service/PushService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    .line 592
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 593
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 598
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 601
    :sswitch_0
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "service handler: MSG_WHAT_NOTIFY_APPS"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v12, "it":Landroid/content/Intent;
    const-string v25, "com.youku.pushsdk.pushservice.ALARM_DATA_COLLECT"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v25, "from_push_service"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 606
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "service handler: packages-> "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v25, "subscribed_packages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/youku/pushsdk/service/PushService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 612
    .end local v12    # "it":Landroid/content/Intent;
    :sswitch_1
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "CMD_START_PUSH_SERVICE"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v26, "video_notifi"

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 614
    .local v18, "switchState":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v26, "topic"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 615
    .local v21, "targetTopic":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "package_name"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 617
    .local v16, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v25

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "reCreateFlag = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$13(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/service/PushService$ServiceHandler;

    move-result-object v25

    const/16 v26, 0x3

    const-wide/16 v28, 0x1388

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    const-string v26, "PUSH_MQTT\u8fdb\u7a0b\u5f00\u542f"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$6(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/youku/pushsdk/service/PushService;->access$7(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v25 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$3(Lcom/youku/pushsdk/service/PushService;)V

    .line 630
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "subscribed set: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "packages set: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$4(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 634
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "to subscribe topic: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v25

    if-nez v25, :cond_3

    .line 636
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$14(Lcom/youku/pushsdk/service/PushService;)Z

    .line 638
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$15(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 641
    :cond_4
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "disconnected state now"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 648
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "switchState":Z
    .end local v21    # "targetTopic":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "CMD_COLLECT_BASE_DATA"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-boolean v25, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    if-eqz v25, :cond_6

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-nez v25, :cond_5

    const/4 v10, 0x0

    .line 651
    .local v10, "isConn":Z
    :goto_1
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$10()Lcom/youku/pushsdk/control/CollectDataManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/youku/pushsdk/service/PushService;->access$6(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v26

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$7(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v27

    .line 651
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v10, v1, v2}, Lcom/youku/pushsdk/control/CollectDataManager;->collectBaseInfo(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 650
    .end local v10    # "isConn":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v10

    goto :goto_1

    .line 654
    :cond_6
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "collect base info,but hasSubscribe = false"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 658
    :sswitch_3
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "CMD_CHECK_MQTT_STATE"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$16(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v17

    .line 661
    .local v17, "results":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v25

    if-nez v25, :cond_8

    .line 663
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_7

    .line 664
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "MQTT is not connected,so reconnecting..."

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$14(Lcom/youku/pushsdk/service/PushService;)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$17(Lcom/youku/pushsdk/service/PushService;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 668
    :cond_7
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "MQTT is not connected, and there is no subscriber recently"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 670
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 671
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "isLost = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/youku/pushsdk/service/PushService;->access$18(Lcom/youku/pushsdk/service/PushService;)Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-boolean v25, Lcom/youku/pushsdk/service/PushService;->SUBSCRIBED:Z

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$18(Lcom/youku/pushsdk/service/PushService;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 673
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "PushService.SUBSCRIBED = true"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "all open state topics: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/youku/pushsdk/util/PushUtil;->printStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "subscribed topics: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/youku/pushsdk/service/PushService;->access$4(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Set;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$4(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v25

    new-array v8, v0, [Ljava/lang/String;

    .line 681
    .local v8, "diffTopics":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 682
    .local v13, "j":S
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v9, v0, :cond_9

    .line 687
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "diff topics: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/youku/pushsdk/util/PushUtil;->printStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    array-length v0, v8

    move/from16 v25, v0

    if-lez v25, :cond_0

    .line 690
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "subscribe diff topics"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/youku/pushsdk/service/PushService;->access$17(Lcom/youku/pushsdk/service/PushService;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 683
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$4(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Set;

    move-result-object v25

    aget-object v26, v17, v9

    invoke-interface/range {v25 .. v26}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 684
    add-int/lit8 v25, v13, 0x1

    move/from16 v0, v25

    int-to-short v14, v0

    .end local v13    # "j":S
    .local v14, "j":S
    aget-object v25, v17, v9

    aput-object v25, v8, v13

    move v13, v14

    .line 682
    .end local v14    # "j":S
    .restart local v13    # "j":S
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 694
    .end local v8    # "diffTopics":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v13    # "j":S
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$9(Lcom/youku/pushsdk/service/PushService;Z)V

    .line 695
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "PushService.SUBSCRIBED = false"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_c

    .line 697
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "MQTT is not connected,so reconnecting..."

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$14(Lcom/youku/pushsdk/service/PushService;)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$17(Lcom/youku/pushsdk/service/PushService;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 701
    :cond_c
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "MQTT is not connected, and there is no subscriber recently"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 707
    .end local v17    # "results":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 708
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "pushManager = null,so connect,subscribe"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$16(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v23

    .line 710
    .local v23, "tempTopics":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$14(Lcom/youku/pushsdk/service/PushService;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$17(Lcom/youku/pushsdk/service/PushService;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 713
    :cond_e
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "connect failed!(ACTION_PUSH_STATE)"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 720
    .end local v23    # "tempTopics":[Ljava/lang/String;
    :sswitch_4
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "CMD_CHANGE_PUSH_SWITCH"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v26, "video_notifi"

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 722
    .local v19, "switchState2":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v26, "topic"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 723
    .local v22, "targetTopic2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "package_name"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 724
    .local v20, "targetPackage":Ljava/lang/String;
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "push switch changed : "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " target: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v25

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    if-eqz v19, :cond_f

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    .line 733
    const-string v26, "PUSH_\u7528\u6237\u6253\u5f00\u63a8\u9001"

    .line 735
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 732
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/youku/pushsdk/service/PushService;->access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/youku/pushsdk/service/PushService;->access$19(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Z)V

    .line 748
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "switch state changed, and backup data"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$3(Lcom/youku/pushsdk/service/PushService;)V

    goto/16 :goto_0

    .line 739
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    .line 740
    const-string v26, "PUSH_\u7528\u6237\u5173\u95ed\u63a8\u9001"

    .line 742
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 739
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/youku/pushsdk/service/PushService;->access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 753
    .end local v19    # "switchState2":Z
    .end local v20    # "targetPackage":Ljava/lang/String;
    .end local v22    # "targetTopic2":Ljava/lang/String;
    :sswitch_5
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "CMD_CHANGE_NETWORK_STATE"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "network_switch"

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 755
    .local v15, "netSwitch":Z
    if-eqz v15, :cond_11

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 758
    .local v4, "current":J
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$20()J

    move-result-wide v26

    sub-long v6, v4, v26

    .line 759
    .local v6, "diff":J
    invoke-static {v4, v5}, Lcom/youku/pushsdk/service/PushService;->access$21(J)V

    .line 761
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "current - netSwitchOpenLastTime = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-wide/16 v26, 0x7d0

    cmp-long v25, v6, v26

    if-lez v25, :cond_0

    .line 764
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "ACTION_NETWORK_CHANGE"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "network is available"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    .line 771
    const-string v26, "PUSH_\u7528\u6237\u7f51\u7edc\u5207\u6362 "

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$6(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v27

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/youku/pushsdk/service/PushService;->access$7(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    .line 770
    invoke-static/range {v25 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$16(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v17

    .line 778
    .restart local v17    # "results":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_0

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$14(Lcom/youku/pushsdk/service/PushService;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$17(Lcom/youku/pushsdk/service/PushService;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 782
    :cond_10
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "connect failed(EVENT_NET_CHANGE)"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    .end local v4    # "current":J
    .end local v6    # "diff":J
    .end local v17    # "results":[Ljava/lang/String;
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 790
    .restart local v4    # "current":J
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$22()J

    move-result-wide v26

    sub-long v6, v4, v26

    .line 791
    .restart local v6    # "diff":J
    invoke-static {v4, v5}, Lcom/youku/pushsdk/service/PushService;->access$23(J)V

    .line 793
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "current - netSwitchCloseLastTime = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-wide/16 v26, 0x7d0

    cmp-long v25, v6, v26

    if-lez v25, :cond_0

    .line 796
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "ACTION_NETWORK_CHANGE"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "network is closed"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    .line 801
    const-string v26, "PUSH_\u7528\u6237\u7f51\u7edc\u5173\u95ed"

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$6(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v27

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/youku/pushsdk/service/PushService;->access$7(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    .line 800
    invoke-static/range {v25 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/PushControl;->disConnect()V

    goto/16 :goto_0

    .line 815
    .end local v4    # "current":J
    .end local v6    # "diff":J
    .end local v15    # "netSwitch":Z
    :sswitch_6
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "CMD_RESTORE_FROM_DESTROY"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string v27, "destroy_preserved_clients"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v25

    check-cast v25, Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$24(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string v27, "destroy_preserved_packages"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v25

    check-cast v25, Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$25(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)V

    .line 818
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "clients from destroy: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "reCreateFlag = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$13(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/service/PushService$ServiceHandler;

    move-result-object v25

    const/16 v26, 0x3

    const-wide/16 v28, 0x1388

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    const-string v26, "PUSH_MQTT\u8fdb\u7a0b\u5f00\u542f"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$6(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/youku/pushsdk/service/PushService;->access$7(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v25 .. v28}, Lcom/youku/pushsdk/service/PushService;->access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$16(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v23

    .line 829
    .restart local v23    # "tempTopics":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_0

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v25

    if-nez v25, :cond_14

    .line 832
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$14(Lcom/youku/pushsdk/service/PushService;)Z

    .line 834
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$17(Lcom/youku/pushsdk/service/PushService;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 843
    .end local v23    # "tempTopics":[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;

    move-result-object v25

    const-string v26, "isTestHost"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 844
    .local v11, "isTestHost":Z
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "CMD_CHANGE_MQTT_SERVER: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    if-eqz v11, :cond_15

    .line 847
    const-string v25, "dev-mqtt.m.youku.com"

    sput-object v25, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER:Ljava/lang/String;

    .line 848
    const/16 v25, 0x1bb

    sput v25, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER_PORT:I

    .line 854
    :goto_4
    sput-boolean v11, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    .line 856
    sget-object v25, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$26(Ljava/lang/String;)V

    .line 857
    sget v25, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER_PORT:I

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$27(I)V

    .line 859
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$10()Lcom/youku/pushsdk/control/CollectDataManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/youku/pushsdk/control/CollectDataManager;->releaseResource()V

    .line 860
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$10()Lcom/youku/pushsdk/control/CollectDataManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/youku/pushsdk/control/CollectDataManager;->init(Landroid/content/Context;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$28(Lcom/youku/pushsdk/service/PushService;)V

    goto/16 :goto_0

    .line 850
    :cond_15
    const-string v25, "mqtt.m.youku.com"

    sput-object v25, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER:Ljava/lang/String;

    .line 851
    const/16 v25, 0x1f90

    sput v25, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER_PORT:I

    goto :goto_4

    .line 865
    .end local v11    # "isTestHost":Z
    :sswitch_8
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "MSG_WAHT_INTENT_NULL"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$29(Lcom/youku/pushsdk/service/PushService;)V

    .line 869
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "auto restart service action"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/service/PushService;->access$16(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v24

    .line 871
    .local v24, "tmpTopics":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_0

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/pushsdk/service/PushService;->access$14(Lcom/youku/pushsdk/service/PushService;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$17(Lcom/youku/pushsdk/service/PushService;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 875
    :cond_16
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v25

    const-string v26, "intent = null,connect failed, so will not subscribe"

    invoke-static/range {v25 .. v26}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 598
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_8
        0x1001 -> :sswitch_2
        0x1002 -> :sswitch_3
        0x1003 -> :sswitch_1
        0x1004 -> :sswitch_6
        0x1005 -> :sswitch_7
        0x1006 -> :sswitch_4
        0x1007 -> :sswitch_5
    .end sparse-switch
.end method
