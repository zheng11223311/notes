.class public Lcom/mobisage/android/MobiSageConfigureModule;
.super Lcom/mobisage/android/MobiSageLogicModule;
.source "MobiSageConfigureModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageConfigureModule$1;,
        Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;,
        Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;,
        Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;,
        Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;
    }
.end annotation


# static fields
.field public static final CFGSVR:Ljava/lang/String; = "cfgsvr"

.field private static final CONFIG1:Ljava/lang/String; = "http://config.adsage.com"

.field private static final CONFIG2:Ljava/lang/String; = "http://config.adsage.cn"

.field private static final CONFIG3:Ljava/lang/String; = "http://config.mobisage.cn"

.field private static final CONFIG4:Ljava/lang/String; = "http://config.minesage.com"

.field private static final CONFIG5:Ljava/lang/String; = "http://config.soqugame.com"

.field public static final DESVR:Ljava/lang/String; = "desvr"

.field public static final JUHEDESVR:Ljava/lang/String; = "juhedesvr"

.field public static final TRCSVR:Ljava/lang/String; = "trcsvr"

.field private static ourInstance:Lcom/mobisage/android/MobiSageConfigureModule;


# instance fields
.field private final CFG_SVR:Ljava/lang/String;

.field private final Config_Suffix:Ljava/lang/String;

.field private final DE_SVR:Ljava/lang/String;

.field private final JUHE_DE_SVR:Ljava/lang/String;

.field private final Juhe_De_Suffix:Ljava/lang/String;

.field private final MobiSage_De_Suffix:Ljava/lang/String;

.field private final TRC_SVR:Ljava/lang/String;

.field private final Track_Suffix:Ljava/lang/String;

.field private final callback:Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;

.field private configQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configureDic:Lorg/json/JSONObject;

.field private final domainCallback:Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;

.field private final domainTask:Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;

.field private svrMap:Ljava/util/Map;
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

.field private final task:Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageConfigureModule;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageConfigureModule;->ourInstance:Lcom/mobisage/android/MobiSageConfigureModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 52
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageLogicModule;-><init>()V

    .line 29
    const-string v4, "http://mobi.adsage.com/sdkbox/default.js"

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->JUHE_DE_SVR:Ljava/lang/String;

    .line 31
    const-string v4, "http://mobi.adsage.com/sdk/default.js"

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->DE_SVR:Ljava/lang/String;

    .line 32
    const-string v4, "http://trc.adsage.com/trc/sdk/x.gif?"

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->TRC_SVR:Ljava/lang/String;

    .line 33
    const-string v4, "http://config.adsage.com/cfg/cfg.js"

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->CFG_SVR:Ljava/lang/String;

    .line 47
    const-string v4, "/sdk/default.js"

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->MobiSage_De_Suffix:Ljava/lang/String;

    .line 48
    const-string v4, "/sdkbox/default.js"

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->Juhe_De_Suffix:Ljava/lang/String;

    .line 49
    const-string v4, "/trc/sdk/x.gif?"

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->Track_Suffix:Ljava/lang/String;

    .line 50
    const-string v4, "/cfg/cfg.js"

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->Config_Suffix:Ljava/lang/String;

    .line 53
    iput-object v8, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    .line 55
    new-instance v2, Lcom/mobisage/android/MobiSageConfigureGetSlot;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->handler:Landroid/os/Handler;

    invoke-direct {v2, v4}, Lcom/mobisage/android/MobiSageConfigureGetSlot;-><init>(Landroid/os/Handler;)V

    .line 57
    .local v2, "slot":Lcom/mobisage/android/MobiSageConfigureGetSlot;
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v2, Lcom/mobisage/android/MobiSageConfigureGetSlot;->messageCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v4, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;

    invoke-direct {v4, p0, v8}, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;-><init>(Lcom/mobisage/android/MobiSageConfigureModule;Lcom/mobisage/android/MobiSageConfigureModule$1;)V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->callback:Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;

    .line 60
    new-instance v4, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;

    invoke-direct {v4, p0, v8}, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;-><init>(Lcom/mobisage/android/MobiSageConfigureModule;Lcom/mobisage/android/MobiSageConfigureModule$1;)V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->domainCallback:Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;

    .line 61
    new-instance v4, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;

    invoke-direct {v4, p0, v8}, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;-><init>(Lcom/mobisage/android/MobiSageConfigureModule;Lcom/mobisage/android/MobiSageConfigureModule$1;)V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->task:Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;

    .line 63
    :try_start_0
    const-string v4, "configure"

    invoke-direct {p0, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigure(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    .line 64
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    if-nez v4, :cond_0

    .line 65
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    .line 66
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    const-string v5, "intervaltime"

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    const-string v5, "intervalcountlimit"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    const-string v5, "intervalswitchtype"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    const-string v5, "enablelocation"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 70
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    const-string v5, "adanimation"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    const-string v5, "adswitch"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    const-string v5, "bsa"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 75
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    const-string v5, "calltype"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v4

    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureModule;->task:Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;

    invoke-virtual {v4, v5}, Lcom/mobisage/android/MobiSageTaskModule;->registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    .line 84
    :try_start_1
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    if-nez v4, :cond_2

    .line 85
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    .line 87
    const-string v4, "domain"

    invoke-direct {p0, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigure(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 89
    const-string/jumbo v4, "svr"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 90
    .local v3, "svrJArray":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v5, "desvr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "desvr"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sdk/default.js"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v5, "juhedesvr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "desvr"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sdkbox/default.js"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string/jumbo v5, "trcsvr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trcsvr"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/trc/sdk/x.gif?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v5, "cfgsvr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cfgsvr"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cfg/cfg.js"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v4, "cfg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    .local v0, "cfgJArray":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "svrcfginfo1"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cfg/cfg.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "svrcfginfo2"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cfg/cfg.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "svrcfginfo3"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cfg/cfg.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "svrcfginfo4"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cfg/cfg.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "svrcfginfo5"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cfg/cfg.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .end local v0    # "cfgJArray":Lorg/json/JSONObject;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "svrJArray":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v5, "desvr"

    const-string v6, "http://mobi.adsage.com/sdk/default.js"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v5, "juhedesvr"

    const-string v6, "http://mobi.adsage.com/sdkbox/default.js"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string/jumbo v5, "trcsvr"

    const-string v6, "http://trc.adsage.com/trc/sdk/x.gif?"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v5, "cfgsvr"

    const-string v6, "http://config.adsage.com/cfg/cfg.js"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_3
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    const-string v5, "http://config.adsage.com/cfg/cfg.js"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    const-string v5, "http://config.adsage.cn/cfg/cfg.js"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    const-string v5, "http://config.mobisage.cn/cfg/cfg.js"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    const-string v5, "http://config.minesage.com/cfg/cfg.js"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    const-string v5, "http://config.soqugame.com/cfg/cfg.js"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :cond_4
    :goto_2
    new-instance v2, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;

    .end local v2    # "slot":Lcom/mobisage/android/MobiSageConfigureGetSlot;
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->handler:Landroid/os/Handler;

    invoke-direct {v2, v4}, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;-><init>(Landroid/os/Handler;)V

    .line 139
    .local v2, "slot":Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;
    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v2, Lcom/mobisage/android/MobiSageConfigureDomainGetSlot;->messageCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v4, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;

    invoke-direct {v4, p0, v8}, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;-><init>(Lcom/mobisage/android/MobiSageConfigureModule;Lcom/mobisage/android/MobiSageConfigureModule$1;)V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageConfigureModule;->domainTask:Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;

    .line 143
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v4

    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureModule;->domainTask:Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;

    invoke-virtual {v4, v5}, Lcom/mobisage/android/MobiSageTaskModule;->registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    .line 145
    return-void

    .line 132
    .local v2, "slot":Lcom/mobisage/android/MobiSageConfigureGetSlot;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 114
    :catch_1
    move-exception v4

    goto :goto_1

    .line 112
    :catch_2
    move-exception v4

    goto :goto_1

    .line 77
    :catch_3
    move-exception v4

    goto/16 :goto_0
.end method

.method static synthetic access$1000(Lcom/mobisage/android/MobiSageConfigureModule;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigure(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mobisage/android/MobiSageConfigureModule;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mobisage/android/MobiSageConfigureModule;)Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mobisage/android/MobiSageConfigureModule;->domainCallback:Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mobisage/android/MobiSageConfigureModule;)Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mobisage/android/MobiSageConfigureModule;->callback:Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mobisage/android/MobiSageConfigureModule;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/mobisage/android/MobiSageConfigureModule;->saveConfigure(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mobisage/android/MobiSageConfigureModule;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageConfigureModule;->isDomainConfigUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getConfigure(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/mobisage/android/MobiSageAppInfo;->packageDataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/mobisage/android/MobiSageURIUtility;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "cachePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "cacheFile":Ljava/io/File;
    invoke-static {v0}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "configStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 450
    .local v2, "config":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "config":Lorg/json/JSONObject;
    .local v3, "config":Lorg/json/JSONObject;
    move-object v2, v3

    .line 456
    .end local v3    # "config":Lorg/json/JSONObject;
    .restart local v2    # "config":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 451
    :catch_0
    move-exception v5

    .local v5, "e":Lorg/json/JSONException;
    move-object v3, v6

    .line 452
    goto :goto_0

    .line 453
    .end local v5    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v3, v6

    .line 454
    goto :goto_0
.end method

.method public static getInstance()Lcom/mobisage/android/MobiSageConfigureModule;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mobisage/android/MobiSageConfigureModule;->ourInstance:Lcom/mobisage/android/MobiSageConfigureModule;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageConfigureModule;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageConfigureModule;->ourInstance:Lcom/mobisage/android/MobiSageConfigureModule;

    .line 21
    :cond_0
    sget-object v0, Lcom/mobisage/android/MobiSageConfigureModule;->ourInstance:Lcom/mobisage/android/MobiSageConfigureModule;

    return-object v0
.end method

.method private isDomainConfigUpdate(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tempVersion"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 419
    const-string v4, "domain"

    invoke-direct {p0, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigure(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 420
    .local v0, "domainJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v3

    .line 423
    :cond_1
    const-string v2, "0"

    .line 425
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 431
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0

    .line 428
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private saveConfigure(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->packageDataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/mobisage/android/MobiSageURIUtility;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "cachePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 440
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobisage/android/MobiSageFileUtility;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    return-void
.end method


# virtual methods
.method public fillConfigureData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    iput-object p1, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    .line 263
    :cond_0
    return-void
.end method

.method public getConfigureData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 217
    const-string v2, "configure"

    invoke-direct {p0, v2}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigure(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_3

    .line 221
    const/4 v1, 0x0

    .line 232
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 233
    const-string v2, "intervaltime"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 255
    :cond_2
    :goto_1
    return-object v1

    .line 223
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->configureDic:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    .line 230
    goto :goto_0

    .line 228
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_4
    const-string v2, "adanimation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Integer;
    goto :goto_1

    .line 237
    .end local v1    # "obj":Ljava/lang/Integer;
    :cond_5
    const-string v2, "adswitch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 238
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Boolean;
    goto :goto_1

    .line 239
    .end local v1    # "obj":Ljava/lang/Boolean;
    :cond_6
    const-string v2, "intervalswitchtype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Integer;
    goto :goto_1

    .line 241
    .end local v1    # "obj":Ljava/lang/Integer;
    :cond_7
    const-string v2, "intervalcountlimit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "obj":Ljava/lang/Integer;
    goto :goto_1

    .line 243
    .end local v1    # "obj":Ljava/lang/Integer;
    :cond_8
    const-string v2, "enablelocation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 244
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Boolean;
    goto :goto_1

    .line 245
    .end local v1    # "obj":Ljava/lang/Boolean;
    :cond_9
    const-string v2, "bsa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 246
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .restart local v1    # "obj":Ljava/lang/Boolean;
    goto :goto_1

    .line 247
    .end local v1    # "obj":Ljava/lang/Boolean;
    :cond_a
    const-string/jumbo v2, "track_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 248
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Integer;
    goto :goto_1

    .line 249
    .end local v1    # "obj":Ljava/lang/Integer;
    :cond_b
    const-string v2, "iso"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 250
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "obj":Ljava/lang/Integer;
    goto :goto_1

    .line 251
    .end local v1    # "obj":Ljava/lang/Integer;
    :cond_c
    const-string v2, "calltype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "obj":Ljava/lang/Integer;
    goto/16 :goto_1
.end method

.method public getSVRUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 150
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    const-string v2, "domain"

    invoke-direct {p0, v2}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigure(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "svr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 154
    .local v1, "svrJArray":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v3, "desvr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "desvr"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sdk/default.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v3, "juhedesvr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "desvr"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sdkbox/default.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string/jumbo v3, "trcsvr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trcsvr"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/trc/sdk/x.gif?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v3, "cfgsvr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cfgsvr"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cfg/cfg.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "svrJArray":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v3, "desvr"

    const-string v4, "http://mobi.adsage.com/sdk/default.js"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v3, "juhedesvr"

    const-string v4, "http://mobi.adsage.com/sdkbox/default.js"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string/jumbo v3, "trcsvr"

    const-string v4, "http://trc.adsage.com/trc/sdk/x.gif?"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    const-string v3, "cfgsvr"

    const-string v4, "http://config.adsage.com/cfg/cfg.js"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureModule;->svrMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :goto_1
    return-object v2

    .line 173
    :catch_0
    move-exception v2

    .line 176
    const/4 v2, 0x0

    goto :goto_1

    .line 162
    :catch_1
    move-exception v2

    goto :goto_0
.end method
