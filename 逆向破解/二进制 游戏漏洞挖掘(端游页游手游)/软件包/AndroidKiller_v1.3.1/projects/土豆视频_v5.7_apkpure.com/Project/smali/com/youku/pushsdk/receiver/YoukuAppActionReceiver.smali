.class public Lcom/youku/pushsdk/receiver/YoukuAppActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "YoukuAppActionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.youku.pushsdk.pushservice.ALARM_TICK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const-string v3, "YoukuAppActionReceiver"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-class v3, Lcom/youku/pushsdk/service/PushService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/youku/pushsdk/util/PushUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 32
    .local v2, "pushServiceRun":Z
    const-string v3, "YoukuAppActionReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "check PushService state schedule timer trigerred :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-nez v2, :cond_2

    .line 36
    invoke-static {p1}, Lcom/youku/pushsdk/constants/CMD;->getIntentForStart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "i":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "pushServiceRun":Z
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.youku.pushsdk.pushservice.ALARM_DATA_COLLECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    const-string v3, "from_push_service"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    const-string/jumbo v3, "subscribed_packages"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "packages":Ljava/lang/String;
    const-string v3, "YoukuAppActionReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "received package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-static {p1}, Lcom/youku/pushsdk/constants/CMD;->getIntentForStart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "packages":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 39
    .restart local v2    # "pushServiceRun":Z
    :cond_2
    invoke-static {p1}, Lcom/youku/pushsdk/constants/CMD;->getIntentForCheckMqttState(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 55
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "pushServiceRun":Z
    :cond_3
    const-string v3, "YoukuAppActionReceiver"

    const-string v4, "base data timer"

    invoke-static {v3, v4}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/youku/pushsdk/constants/CMD;->getIntentForCollectBaseData(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method
