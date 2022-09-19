.class public Lcom/youku/pushsdk/service/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/pushsdk/service/PushService$EventHandler;,
        Lcom/youku/pushsdk/service/PushService$PushCallbackImp;,
        Lcom/youku/pushsdk/service/PushService$ServiceHandler;
    }
.end annotation


# static fields
.field private static BROKER_IP:Ljava/lang/String; = null

.field private static BROKER_PORT:I = 0x0

.field private static final MSG_WAHT_INTENT_NULL:I = 0x4

.field public static final MSG_WHAT:I = 0x1

.field private static final MSG_WHAT_NOTIFY_APPS:I = 0x3

.field private static final MSG_WHAT_REMOVE_TOPIC:I = 0x2

.field private static final MULTI_BROADCAST_INTERVAL:I = 0x7d0

.field public static SUBSCRIBED:Z

.field private static final TAG:Ljava/lang/String;

.field private static cdm:Lcom/youku/pushsdk/control/CollectDataManager;

.field public static hasSubscriber:Z

.field private static netSwitchCloseLastTime:J

.field private static netSwitchOpenLastTime:J

.field private static timerCheckMqttStateTime:J

.field private static timerCollectDataLastTime:J


# instance fields
.field private clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private eventHandler:Lcom/youku/pushsdk/service/PushService$EventHandler;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private handlerThread:Landroid/os/HandlerThread;

.field private intent:Landroid/content/Intent;

.field private isLost:Z

.field private packageActionReceiver:Landroid/content/BroadcastReceiver;

.field private packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pushCallback:Lcom/youku/pushsdk/control/PushCallback;

.field private pushManager:Lcom/youku/pushsdk/control/PushControl;

.field public reCreateFlag:Z

.field private serviceHandler:Lcom/youku/pushsdk/service/PushService$ServiceHandler;

.field private serviceThread:Landroid/os/HandlerThread;

.field private subcribedTopics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 43
    const-class v0, Lcom/youku/pushsdk/service/PushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/youku/pushsdk/control/CollectDataManager;->getInstance()Lcom/youku/pushsdk/control/CollectDataManager;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/service/PushService;->cdm:Lcom/youku/pushsdk/control/CollectDataManager;

    .line 50
    sget-object v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER:Ljava/lang/String;

    sput-object v0, Lcom/youku/pushsdk/service/PushService;->BROKER_IP:Ljava/lang/String;

    .line 51
    sget v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER_PORT:I

    sput v0, Lcom/youku/pushsdk/service/PushService;->BROKER_PORT:I

    .line 68
    sput-wide v2, Lcom/youku/pushsdk/service/PushService;->netSwitchOpenLastTime:J

    .line 69
    sput-wide v2, Lcom/youku/pushsdk/service/PushService;->netSwitchCloseLastTime:J

    .line 70
    sput-wide v2, Lcom/youku/pushsdk/service/PushService;->timerCollectDataLastTime:J

    .line 71
    sput-wide v2, Lcom/youku/pushsdk/service/PushService;->timerCheckMqttStateTime:J

    .line 73
    sput-boolean v1, Lcom/youku/pushsdk/service/PushService;->SUBSCRIBED:Z

    .line 74
    sput-boolean v1, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/pushsdk/service/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/pushsdk/service/PushService;->packages:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    .line 75
    iput-boolean v1, p0, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    .line 76
    iput-boolean v1, p0, Lcom/youku/pushsdk/service/PushService;->isLost:Z

    .line 467
    new-instance v0, Lcom/youku/pushsdk/service/PushService$1;

    invoke-direct {v0, p0}, Lcom/youku/pushsdk/service/PushService$1;-><init>(Lcom/youku/pushsdk/service/PushService;)V

    iput-object v0, p0, Lcom/youku/pushsdk/service/PushService;->packageActionReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->packages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$10()Lcom/youku/pushsdk/control/CollectDataManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->cdm:Lcom/youku/pushsdk/control/CollectDataManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/control/PushControl;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    return-object v0
.end method

.method static synthetic access$12(Lcom/youku/pushsdk/service/PushService;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$13(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/service/PushService$ServiceHandler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->serviceHandler:Lcom/youku/pushsdk/service/PushService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/youku/pushsdk/service/PushService;)Z
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->connect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/youku/pushsdk/service/PushService;->startPush(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$16(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 997
    invoke-direct {p0, p1}, Lcom/youku/pushsdk/service/PushService;->getStringArrayTopicsPattern(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/youku/pushsdk/service/PushService;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/youku/pushsdk/service/PushService;->startPush([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/youku/pushsdk/service/PushService;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/youku/pushsdk/service/PushService;->isLost:Z

    return v0
.end method

.method static synthetic access$19(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0, p1, p2}, Lcom/youku/pushsdk/service/PushService;->changeConnectState(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$20()J
    .locals 2

    .prologue
    .line 68
    sget-wide v0, Lcom/youku/pushsdk/service/PushService;->netSwitchOpenLastTime:J

    return-wide v0
.end method

.method static synthetic access$21(J)V
    .locals 0

    .prologue
    .line 68
    sput-wide p0, Lcom/youku/pushsdk/service/PushService;->netSwitchOpenLastTime:J

    return-void
.end method

.method static synthetic access$22()J
    .locals 2

    .prologue
    .line 69
    sget-wide v0, Lcom/youku/pushsdk/service/PushService;->netSwitchCloseLastTime:J

    return-wide v0
.end method

.method static synthetic access$23(J)V
    .locals 0

    .prologue
    .line 69
    sput-wide p0, Lcom/youku/pushsdk/service/PushService;->netSwitchCloseLastTime:J

    return-void
.end method

.method static synthetic access$24(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$25(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/youku/pushsdk/service/PushService;->packages:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$26(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/youku/pushsdk/service/PushService;->BROKER_IP:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(I)V
    .locals 0

    .prologue
    .line 51
    sput p0, Lcom/youku/pushsdk/service/PushService;->BROKER_PORT:I

    return-void
.end method

.method static synthetic access$28(Lcom/youku/pushsdk/service/PushService;)V
    .locals 0

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->shiftMqttServer()V

    return-void
.end method

.method static synthetic access$29(Lcom/youku/pushsdk/service/PushService;)V
    .locals 0

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->getBackupData()V

    return-void
.end method

.method static synthetic access$3(Lcom/youku/pushsdk/service/PushService;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->backupData()V

    return-void
.end method

.method static synthetic access$30(Lcom/youku/pushsdk/service/PushService;I)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/youku/pushsdk/service/PushService;->stopPush(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/youku/pushsdk/service/PushService;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$5(Lcom/youku/pushsdk/service/PushService;)Lcom/youku/pushsdk/service/PushService$EventHandler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->eventHandler:Lcom/youku/pushsdk/service/PushService$EventHandler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 885
    invoke-direct {p0, p1}, Lcom/youku/pushsdk/service/PushService;->getStringTopics(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/youku/pushsdk/service/PushService;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/youku/pushsdk/service/PushService;->getStringApps(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/youku/pushsdk/service/PushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/pushsdk/service/PushService;->handleCollectEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/youku/pushsdk/service/PushService;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/youku/pushsdk/service/PushService;->isLost:Z

    return-void
.end method

.method private backupData()V
    .locals 7

    .prologue
    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 513
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 514
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 516
    :cond_1
    sget-object v4, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "backup data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v4, "backup_clients_pkg"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/youku/pushsdk/util/PushUtil;->setBackupPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void

    .line 504
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 505
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 506
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService;->packages:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 508
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private changeConnectState(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "targetTopic"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 941
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v1, "func: changeConnectState"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    if-eqz p2, :cond_5

    .line 943
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    .line 944
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v1, "#2: hasSubscriber = true"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-static {p0}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 948
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v0}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 950
    :cond_0
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v1, "open connection when open push switch"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->connect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 952
    invoke-direct {p0, p1}, Lcom/youku/pushsdk/service/PushService;->startPush(Ljava/lang/String;)Z

    .line 994
    :cond_1
    :goto_0
    return-void

    .line 954
    :cond_2
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v1, "connect failed, so will not subscribe"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :cond_3
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v0}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    invoke-direct {p0, p1}, Lcom/youku/pushsdk/service/PushService;->startPush(Ljava/lang/String;)Z

    goto :goto_0

    .line 960
    :cond_4
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v1, "network is not available"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :cond_5
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    if-eqz v0, :cond_1

    .line 966
    invoke-static {p0}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v0}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 968
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v0, p1}, Lcom/youku/pushsdk/control/PushControl;->unsubscribe(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 970
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove topic from set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 976
    :cond_6
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    .line 978
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v1, "#3: hasSubscriber = false"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/youku/pushsdk/service/PushService$2;

    invoke-direct {v1, p0}, Lcom/youku/pushsdk/service/PushService$2;-><init>(Lcom/youku/pushsdk/service/PushService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private connect()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 260
    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "clientId":Ljava/lang/String;
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect clientId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect port: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/youku/pushsdk/service/PushService;->BROKER_PORT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;

    invoke-direct {v0, p0, p0}, Lcom/youku/pushsdk/service/PushService$PushCallbackImp;-><init>(Lcom/youku/pushsdk/service/PushService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushCallback:Lcom/youku/pushsdk/control/PushCallback;

    .line 265
    new-instance v0, Lcom/youku/pushsdk/control/PushControl;

    sget-object v2, Lcom/youku/pushsdk/service/PushService;->BROKER_IP:Ljava/lang/String;

    sget v3, Lcom/youku/pushsdk/service/PushService;->BROKER_PORT:I

    iget-object v5, p0, Lcom/youku/pushsdk/service/PushService;->pushCallback:Lcom/youku/pushsdk/control/PushCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/pushsdk/control/PushControl;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/youku/pushsdk/control/PushCallback;)V

    iput-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    .line 266
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->eventHandler:Lcom/youku/pushsdk/service/PushService$EventHandler;

    invoke-virtual {v0, v1}, Lcom/youku/pushsdk/control/PushControl;->setEventHandler(Landroid/os/Handler;)V

    .line 268
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v0}, Lcom/youku/pushsdk/control/PushControl;->connect()Z

    move-result v6

    .line 269
    .local v6, "result":Z
    if-nez v6, :cond_0

    .line 270
    iput-object v7, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    .line 271
    iput-object v7, p0, Lcom/youku/pushsdk/service/PushService;->pushCallback:Lcom/youku/pushsdk/control/PushCallback;

    .line 273
    :cond_0
    return v6
.end method

.method private dispatchServiceMsg(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->serviceHandler:Lcom/youku/pushsdk/service/PushService$ServiceHandler;

    invoke-virtual {v0, p1}, Lcom/youku/pushsdk/service/PushService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    return-void
.end method

.method private getBackupData()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1031
    const-string v8, "backup_clients_pkg"

    const-string v9, ""

    invoke-static {p0, v8, v9}, Lcom/youku/pushsdk/util/PushUtil;->getBackupPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, "data":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "items":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v3

    if-lt v1, v8, :cond_0

    .line 1048
    sget-object v8, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "loaded backup topics set: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    sget-object v8, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "loaded backup Packages set: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/youku/pushsdk/service/PushService;->packages:Ljava/util/Map;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1035
    :cond_0
    aget-object v8, v3, v1

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1036
    .local v2, "item":[Ljava/lang/String;
    aget-object v7, v2, v10

    .line 1037
    .local v7, "topic":Ljava/lang/String;
    aget-object v8, v2, v11

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1038
    .local v6, "subItem":[Ljava/lang/String;
    aget-object v5, v6, v10

    .line 1039
    .local v5, "status":Ljava/lang/String;
    aget-object v4, v6, v11

    .line 1040
    .local v4, "pkg":Ljava/lang/String;
    iget-object v8, p0, Lcom/youku/pushsdk/service/PushService;->packages:Ljava/util/Map;

    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1042
    iget-object v8, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    iget-object v8, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getStringApps(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 904
    .local p1, "clts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v3, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getStringApps(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 910
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 906
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 907
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 908
    .local v2, "tmp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 911
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getStringArrayTopicsPattern(Ljava/util/Map;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 998
    .local p1, "clts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 999
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1003
    new-array v4, v0, [Ljava/lang/String;

    .line 1004
    .local v4, "results":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1006
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1010
    return-object v4

    .line 999
    .end local v2    # "i":I
    .end local v4    # "results":[Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1000
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v2    # "i":I
    .restart local v4    # "results":[Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1007
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method private getStringTopics(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "clts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    .line 886
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStringTopics(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v3, "clients has open state app"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    sput-boolean v5, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    .line 894
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 899
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 894
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 895
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 896
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 900
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private handleChangeLogSwitch()V
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->intent:Landroid/content/Intent;

    const-string v2, "log_switch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 251
    .local v0, "switchState":Z
    sput-boolean v0, Lcom/youku/pushsdk/constants/BuildConfig;->LOG_SWITCH:Z

    .line 252
    sget-object v1, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log switch changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private handleCheckMqttStateCmd()V
    .locals 6

    .prologue
    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 241
    .local v0, "current":J
    sget-wide v4, Lcom/youku/pushsdk/service/PushService;->timerCheckMqttStateTime:J

    sub-long v2, v0, v4

    .line 242
    .local v2, "diff":J
    sput-wide v0, Lcom/youku/pushsdk/service/PushService;->timerCheckMqttStateTime:J

    .line 244
    const-wide/32 v4, 0x15f90

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 245
    const/16 v4, 0x1002

    invoke-direct {p0, v4}, Lcom/youku/pushsdk/service/PushService;->dispatchServiceMsg(I)V

    .line 247
    :cond_0
    return-void
.end method

.method private handleCollectDataCmd()V
    .locals 8

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 230
    .local v0, "current":J
    sget v3, Lcom/youku/pushsdk/util/PushUtil;->test_check_period:I

    if-lez v3, :cond_1

    sget v2, Lcom/youku/pushsdk/util/PushUtil;->test_check_period:I

    .line 231
    .local v2, "period":I
    :goto_0
    sget-wide v4, Lcom/youku/pushsdk/service/PushService;->timerCollectDataLastTime:J

    sub-long v4, v0, v4

    div-int/lit8 v3, v2, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 232
    sget-object v3, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v4, "ACTION_BASE_DATA"

    invoke-static {v3, v4}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sput-wide v0, Lcom/youku/pushsdk/service/PushService;->timerCollectDataLastTime:J

    .line 235
    const/16 v3, 0x1001

    invoke-direct {p0, v3}, Lcom/youku/pushsdk/service/PushService;->dispatchServiceMsg(I)V

    .line 237
    :cond_0
    return-void

    .line 230
    .end local v2    # "period":I
    :cond_1
    const v2, 0x1b7740

    goto :goto_0
.end method

.method private handleCollectEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "topics"    # Ljava/lang/String;
    .param p3, "apps"    # Ljava/lang/String;

    .prologue
    .line 915
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleCollectEvent() : hasSubscriber = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    sget-boolean v2, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    if-nez v2, :cond_0

    .line 917
    const-string v2, "PUSH_\u7528\u6237\u6253\u5f00\u63a8\u9001"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 918
    const-string v2, "PUSH_\u7528\u6237\u5173\u95ed\u63a8\u9001"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 919
    const-string v2, "PUSH_MQTT\u8fdb\u7a0b\u5f00\u542f"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 920
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 921
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "event_topics"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v2, "event_apps"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 924
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 925
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 926
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 927
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->eventHandler:Lcom/youku/pushsdk/service/PushService$EventHandler;

    invoke-virtual {v2, v1}, Lcom/youku/pushsdk/service/PushService$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 932
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 929
    :cond_1
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v3, "handle collect event,but hasSubscriber = false"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleStartPushServiceAction()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->intent:Landroid/content/Intent;

    const-string v1, "destroy_preserved"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/16 v0, 0x1004

    invoke-direct {p0, v0}, Lcom/youku/pushsdk/service/PushService;->dispatchServiceMsg(I)V

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->intent:Landroid/content/Intent;

    const-string v1, "mqtt_server_change"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    if-nez v0, :cond_1

    .line 221
    const/16 v0, 0x1005

    invoke-direct {p0, v0}, Lcom/youku/pushsdk/service/PushService;->dispatchServiceMsg(I)V

    goto :goto_0

    .line 223
    :cond_1
    const/16 v0, 0x1003

    invoke-direct {p0, v0}, Lcom/youku/pushsdk/service/PushService;->dispatchServiceMsg(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 120
    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getDebugPreference(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    .line 121
    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getLogPreference(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/youku/pushsdk/constants/BuildConfig;->LOG_SWITCH:Z

    .line 122
    sget-object v0, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init: debug--> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "log--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/youku/pushsdk/constants/BuildConfig;->LOG_SWITCH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-boolean v0, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "dev-mqtt.m.youku.com"

    sput-object v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER:Ljava/lang/String;

    .line 126
    const/16 v0, 0x1bb

    sput v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER_PORT:I

    .line 132
    :goto_0
    sget-object v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER:Ljava/lang/String;

    sput-object v0, Lcom/youku/pushsdk/service/PushService;->BROKER_IP:Ljava/lang/String;

    .line 133
    sget v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER_PORT:I

    sput v0, Lcom/youku/pushsdk/service/PushService;->BROKER_PORT:I

    .line 134
    return-void

    .line 128
    :cond_0
    const-string v0, "mqtt.m.youku.com"

    sput-object v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER:Ljava/lang/String;

    .line 129
    const/16 v0, 0x1f90

    sput v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER_PORT:I

    goto :goto_0
.end method

.method private shiftMqttServer()V
    .locals 3

    .prologue
    .line 1017
    invoke-static {p0}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    sget-object v1, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start to stop push"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/youku/pushsdk/service/PushService;->stopPush(I)V

    .line 1023
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/youku/pushsdk/service/PushService;->getStringArrayTopicsPattern(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "results":[Ljava/lang/String;
    sget-object v1, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start new connection"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->connect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/youku/pushsdk/service/PushService;->startPush([Ljava/lang/String;)Z

    .line 1028
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startPush(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetTopic"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/youku/pushsdk/service/PushService;->startPush([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private startPush([Ljava/lang/String;)Z
    .locals 5
    .param p1, "topics"    # [Ljava/lang/String;

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, "isSuccess":Z
    const/4 v2, 0x1

    sput-boolean v2, Lcom/youku/pushsdk/service/PushService;->hasSubscriber:Z

    .line 285
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v3, "#1: hasSubscriber = true"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v2}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "start to subscribe "

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v2, p1}, Lcom/youku/pushsdk/control/PushControl;->subscribe([Ljava/lang/String;)Z

    move-result v1

    .line 295
    if-eqz v1, :cond_2

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 323
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 297
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_2
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startPush: subscribe failed and do not add the topic to subscribedTopics"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 302
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    .end local v0    # "i":I
    :cond_4
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restart state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v4}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v2}, Lcom/youku/pushsdk/control/PushControl;->connect()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 312
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v2, p1}, Lcom/youku/pushsdk/control/PushControl;->subscribe([Ljava/lang/String;)Z

    move-result v1

    .line 316
    :cond_5
    if-eqz v1, :cond_0

    .line 317
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private stopPush(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->subcribedTopics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 331
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v0, p1}, Lcom/youku/pushsdk/control/PushControl;->disConnect(I)V

    .line 333
    iput-object v1, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    .line 334
    iput-object v1, p0, Lcom/youku/pushsdk/service/PushService;->pushCallback:Lcom/youku/pushsdk/control/PushCallback;

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->init()V

    .line 88
    invoke-static {}, Lcom/youku/pushsdk/control/CrashHandler;->getInstance()Lcom/youku/pushsdk/control/CrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/pushsdk/control/CrashHandler;->init()V

    .line 89
    sget-object v1, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    const-string v2, "PushService onCreate()"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/youku/pushsdk/service/PushService;->BROKER_IP:Ljava/lang/String;

    const-string v2, "dev-mqtt.m.youku.com"

    if-ne v1, v2, :cond_0

    .line 92
    invoke-static {}, Lcom/youku/pushsdk/util/PushUtil;->getSDFileParam()V

    .line 95
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/pushsdk/service/PushService;->reCreateFlag:Z

    .line 97
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "event_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/pushsdk/service/PushService;->handlerThread:Landroid/os/HandlerThread;

    .line 98
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "service_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/pushsdk/service/PushService;->serviceThread:Landroid/os/HandlerThread;

    .line 99
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 100
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->serviceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v1, Lcom/youku/pushsdk/service/PushService$EventHandler;

    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/youku/pushsdk/service/PushService$EventHandler;-><init>(Lcom/youku/pushsdk/service/PushService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/youku/pushsdk/service/PushService;->eventHandler:Lcom/youku/pushsdk/service/PushService$EventHandler;

    .line 103
    new-instance v1, Lcom/youku/pushsdk/service/PushService$ServiceHandler;

    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->serviceThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/youku/pushsdk/service/PushService$ServiceHandler;-><init>(Lcom/youku/pushsdk/service/PushService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/youku/pushsdk/service/PushService;->serviceHandler:Lcom/youku/pushsdk/service/PushService$ServiceHandler;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->packageActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/youku/pushsdk/service/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    sget-object v1, Lcom/youku/pushsdk/service/PushService;->cdm:Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-virtual {v1, p0}, Lcom/youku/pushsdk/control/CollectDataManager;->init(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->packageActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/youku/pushsdk/service/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    sget-object v1, Lcom/youku/pushsdk/service/PushService;->cdm:Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-virtual {v1}, Lcom/youku/pushsdk/control/CollectDataManager;->releaseResource()V

    .line 458
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v1}, Lcom/youku/pushsdk/control/PushControl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->pushManager:Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v1}, Lcom/youku/pushsdk/control/PushControl;->disConnect()V

    .line 461
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 463
    iget-object v1, p0, Lcom/youku/pushsdk/service/PushService;->clients:Ljava/util/Map;

    iget-object v2, p0, Lcom/youku/pushsdk/service/PushService;->packages:Ljava/util/Map;

    invoke-static {p0, v1, v2}, Lcom/youku/pushsdk/constants/CMD;->getIntentForRestoreFromDestroy(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    .line 464
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/youku/pushsdk/service/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 465
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 146
    if-eqz p1, :cond_6

    .line 147
    iput-object p1, p0, Lcom/youku/pushsdk/service/PushService;->intent:Landroid/content/Intent;

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/youku/pushsdk/service/PushService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "cmd"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, "cmd":I
    const-string v2, "com.youku.pushsdk.pushservice.START_PUSH_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->handleStartPushServiceAction()V

    .line 210
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cmd":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 155
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "cmd":I
    :cond_1
    const-string v2, "com.youku.pushsdk.pushservice.BASE_DATA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->handleCollectDataCmd()V

    goto :goto_0

    .line 159
    :cond_2
    const-string v2, "com.youku.pushsdk.pushservice.PUSH_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->handleCheckMqttStateCmd()V

    goto :goto_0

    .line 163
    :cond_3
    const-string v2, "com.youku.pushsdk.pushservice.ACTION_PUSH_SWITCH_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    const/16 v2, 0x1006

    invoke-direct {p0, v2}, Lcom/youku/pushsdk/service/PushService;->dispatchServiceMsg(I)V

    goto :goto_0

    .line 167
    :cond_4
    const-string v2, "com.youku.pushsdk.pushservice.ACTION_NET_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    const/16 v2, 0x1007

    invoke-direct {p0, v2}, Lcom/youku/pushsdk/service/PushService;->dispatchServiceMsg(I)V

    goto :goto_0

    .line 171
    :cond_5
    const-string v2, "com.youku.pushsdk.pushservice.COMMON_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/16 v2, 0x1008

    if-ne v1, v2, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/youku/pushsdk/service/PushService;->handleChangeLogSwitch()V

    goto :goto_0

    .line 208
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cmd":I
    :cond_6
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/youku/pushsdk/service/PushService;->dispatchServiceMsg(I)V

    goto :goto_0
.end method
