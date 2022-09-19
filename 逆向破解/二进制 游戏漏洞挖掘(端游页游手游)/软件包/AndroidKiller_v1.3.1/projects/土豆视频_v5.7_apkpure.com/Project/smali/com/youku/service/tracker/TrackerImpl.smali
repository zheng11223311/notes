.class public Lcom/youku/service/tracker/TrackerImpl;
.super Ljava/lang/Object;
.source "TrackerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getApiMUT()V
    .locals 5

    .prologue
    .line 20
    sget-boolean v1, Lcom/youku/config/Profile;->isOpenAirui:Z

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v1

    const-string v2, "6fe182495c9c796b"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcn/com/iresearch/mapptracker/IRMonitor;->Init(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static startComScore()V
    .locals 2

    .prologue
    .line 58
    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/comscore/analytics/comScore;->setAppContext(Landroid/content/Context;)V

    .line 59
    sget-object v1, Lcom/youku/analytics/data/Device;->appname:Ljava/lang/String;

    invoke-static {v1}, Lcom/comscore/analytics/comScore;->setAppName(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/comscore/analytics/comScore;->setErrorHandlingEnabled(Z)V

    .line 61
    invoke-static {}, Lcom/comscore/analytics/comScore;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 63
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startNewSession(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-static {}, Lcom/youku/service/tracker/TrackerImpl;->getApiMUT()V

    .line 16
    invoke-static {}, Lcom/youku/service/tracker/TrackerImpl;->startComScore()V

    .line 17
    return-void
.end method
