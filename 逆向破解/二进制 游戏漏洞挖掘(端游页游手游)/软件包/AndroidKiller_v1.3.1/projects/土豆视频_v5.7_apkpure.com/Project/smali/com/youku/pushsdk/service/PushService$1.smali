.class Lcom/youku/pushsdk/service/PushService$1;
.super Landroid/content/BroadcastReceiver;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/pushsdk/service/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pushsdk/service/PushService;


# direct methods
.method constructor <init>(Lcom/youku/pushsdk/service/PushService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/pushsdk/service/PushService$1;->this$0:Lcom/youku/pushsdk/service/PushService;

    .line 467
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "removedPackage":[Ljava/lang/String;
    invoke-static {}, Lcom/youku/pushsdk/service/PushService;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package is uninstalled: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v3, p0, Lcom/youku/pushsdk/service/PushService$1;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v3}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    const-string v2, ""

    .line 478
    .local v2, "removedTopic":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/pushsdk/service/PushService$1;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v3}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 485
    :goto_0
    iget-object v3, p0, Lcom/youku/pushsdk/service/PushService$1;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v3}, Lcom/youku/pushsdk/service/PushService;->access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v3, p0, Lcom/youku/pushsdk/service/PushService$1;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v3}, Lcom/youku/pushsdk/service/PushService;->access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v3, p0, Lcom/youku/pushsdk/service/PushService$1;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v3}, Lcom/youku/pushsdk/service/PushService;->access$3(Lcom/youku/pushsdk/service/PushService;)V

    .line 490
    iget-object v3, p0, Lcom/youku/pushsdk/service/PushService$1;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v3}, Lcom/youku/pushsdk/service/PushService;->access$4(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/youku/pushsdk/service/PushService$1;->this$0:Lcom/youku/pushsdk/service/PushService;

    invoke-static {v3}, Lcom/youku/pushsdk/service/PushService;->access$5(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/service/PushService$EventHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/youku/pushsdk/service/PushService$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 496
    .end local v1    # "removedPackage":[Ljava/lang/String;
    .end local v2    # "removedTopic":Ljava/lang/String;
    :cond_1
    return-void

    .line 478
    .restart local v1    # "removedPackage":[Ljava/lang/String;
    .restart local v2    # "removedTopic":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v5, v1, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "removedTopic":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 481
    .restart local v2    # "removedTopic":Ljava/lang/String;
    goto :goto_0
.end method
