.class public Lcom/youku/pushsdk/constants/CMD;
.super Ljava/lang/Object;
.source "CMD.java"


# static fields
.field public static final CMD_CHANGE_LOG_SWITCH:I = 0x1008

.field public static final CMD_CHANGE_MQTT_SERVER:I = 0x1005

.field public static final CMD_CHANGE_NETWORK_STATE:I = 0x1007

.field public static final CMD_CHANGE_PUSH_SWITCH:I = 0x1006

.field public static final CMD_CHECK_MQTT_STATE:I = 0x1002

.field public static final CMD_COLLECT_BASE_DATA:I = 0x1001

.field public static final CMD_RESTORE_FROM_DESTROY:I = 0x1004

.field public static final CMD_START_PUSH_SERVICE:I = 0x1003


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntentForChangeLogSwitch(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "isOpen"    # Z

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/pushsdk/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.youku.pushsdk.pushservice.COMMON_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "cmd"

    const/16 v2, 0x1008

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v1, "log_switch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    return-object v0
.end method

.method public static getIntentForChangeMqttServer(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "contxt"    # Landroid/content/Context;
    .param p1, "isTest"    # Z

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/pushsdk/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.youku.pushsdk.pushservice.START_PUSH_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "cmd"

    const/16 v2, 0x1005

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v1, "mqtt_server_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const-string v1, "log_switch"

    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getLogPreference(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    const-string v1, "isTestHost"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method public static getIntentForChangeNetwork(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/youku/pushsdk/service/PushService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.youku.pushsdk.pushservice.ACTION_NET_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "cmd"

    const/16 v3, 0x1007

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-static {p0}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v1

    .line 127
    .local v1, "isAvailable":Z
    const-string v2, "network_switch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    return-object v0
.end method

.method public static getIntentForChangeSwitch(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/pushsdk/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.youku.pushsdk.pushservice.ACTION_PUSH_SWITCH_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "cmd"

    const/16 v2, 0x1006

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "video_notifi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "topic"

    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getMqttTopic(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    return-object v0
.end method

.method public static getIntentForCheckMqttState(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/youku/pushsdk/service/PushService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.youku.pushsdk.pushservice.PUSH_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "cmd"

    const/16 v3, 0x1002

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 66
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    :cond_0
    const-string/jumbo v2, "video_notifi"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/youku/pushsdk/util/PushUtil;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    .local v1, "state":Z
    const-string/jumbo v2, "video_notifi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v2, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v2, "topic"

    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getMqttTopic(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method public static getIntentForCollectBaseData(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/pushsdk/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.youku.pushsdk.pushservice.BASE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "cmd"

    const/16 v2, 0x1001

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    return-object v0
.end method

.method public static getIntentForRestoreFromDestroy(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "clients":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local p2, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/pushsdk/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.youku.pushsdk.pushservice.START_PUSH_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "cmd"

    const/16 v2, 0x1004

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "destroy_preserved"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const-string v1, "destroy_preserved_clients"

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "clients":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    const-string v1, "destroy_preserved_packages"

    check-cast p2, Ljava/io/Serializable;

    .end local p2    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method public static getIntentForStart(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/youku/pushsdk/service/PushService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.youku.pushsdk.pushservice.START_PUSH_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v2, "cmd"

    const/16 v3, 0x1003

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 38
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    :cond_0
    const-string/jumbo v2, "video_notifi"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/youku/pushsdk/util/PushUtil;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 43
    .local v1, "state":Z
    const-string/jumbo v2, "video_notifi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    const-string v2, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v2, "topic"

    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getMqttTopic(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method
