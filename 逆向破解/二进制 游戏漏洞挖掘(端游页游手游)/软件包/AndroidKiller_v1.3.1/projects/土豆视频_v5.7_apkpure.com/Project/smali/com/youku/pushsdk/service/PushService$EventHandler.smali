.class Lcom/youku/pushsdk/service/PushService$EventHandler;
.super Landroid/os/Handler;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/pushsdk/service/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pushsdk/service/PushService;


# direct methods
.method public constructor <init>(Lcom/youku/pushsdk/service/PushService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/youku/pushsdk/service/PushService$EventHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    .line 525
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 527
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 533
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 535
    .local v5, "obj":Ljava/lang/String;
    sget-boolean v8, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    if-nez v8, :cond_0

    .line 536
    const-string v8, "PUSH_\u7528\u6237\u5173\u95ed\u63a8\u9001"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 537
    const-string v8, "PUSH_\u7528\u6237\u6253\u5f00\u63a8\u9001"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 538
    const-string v8, "PUSH_MQTT\u8fdb\u7a0b\u5f00\u542f"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 539
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 585
    :goto_0
    return-void

    .line 541
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 546
    .local v1, "event":Ljava/lang/String;
    const-string v8, "PUSH_MQTT\u8fdb\u7a0b\u5f00\u542f"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 547
    const-string v8, "PUSH_MQTT\u6210\u529f\u8fde\u63a5"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 548
    :cond_1
    iget-object v8, p0, Lcom/youku/pushsdk/service/PushService$EventHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    iget-object v9, p0, Lcom/youku/pushsdk/service/PushService$EventHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v9}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/pushsdk/service/PushService;->access$6(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "eventTopics":Ljava/lang/String;
    iget-object v8, p0, Lcom/youku/pushsdk/service/PushService$EventHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    iget-object v9, p0, Lcom/youku/pushsdk/service/PushService$EventHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v9}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/pushsdk/service/PushService;->access$7(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "eventApps":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "topics"

    invoke-virtual {v4, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v8, "apps"

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string/jumbo v8, "ver"

    .line 561
    const-string v9, "2.1"

    .line 560
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v8, "PUSH_\u7528\u6237\u7f51\u7edc\u5207\u6362 "

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 564
    const-string v8, "netype"

    .line 565
    iget-object v9, p0, Lcom/youku/pushsdk/service/PushService$EventHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v9}, Lcom/youku/pushsdk/util/PushUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 564
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_2
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "event triggerred: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v6, Lcom/youku/pushsdk/data/EventDataPackage;

    invoke-direct {v6, v1, v4}, Lcom/youku/pushsdk/data/EventDataPackage;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 570
    .local v6, "pakage":Lcom/youku/pushsdk/data/EventDataPackage;
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$10()Lcom/youku/pushsdk/control/CollectDataManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/youku/pushsdk/control/CollectDataManager;->send(Lcom/youku/pushsdk/data/EventDataPackage;)V

    goto :goto_0

    .line 551
    .end local v2    # "eventApps":Ljava/lang/String;
    .end local v3    # "eventTopics":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "pakage":Lcom/youku/pushsdk/data/EventDataPackage;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 552
    .local v0, "data":Landroid/os/Bundle;
    const-string v8, "event_topics"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    .restart local v3    # "eventTopics":Ljava/lang/String;
    const-string v8, "event_apps"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "eventApps":Ljava/lang/String;
    goto :goto_1

    .line 574
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "eventApps":Ljava/lang/String;
    .end local v3    # "eventTopics":Ljava/lang/String;
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 575
    .local v7, "removedTopic":Ljava/lang/String;
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    const-string v10, " is uninstalled, so unsubscribe the topic"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 575
    invoke-static {v8, v9}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v8, p0, Lcom/youku/pushsdk/service/PushService$EventHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v8}, Lcom/youku/pushsdk/service/PushService;->access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/youku/pushsdk/control/PushControl;->unsubscribe(Ljava/lang/String;)Z

    .line 578
    iget-object v8, p0, Lcom/youku/pushsdk/service/PushService$EventHandler;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v8}, Lcom/youku/pushsdk/service/PushService;->access$4(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 582
    .end local v7    # "removedTopic":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v8

    const-string v9, "hasSubscriber = false"

    invoke-static {v8, v9}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
