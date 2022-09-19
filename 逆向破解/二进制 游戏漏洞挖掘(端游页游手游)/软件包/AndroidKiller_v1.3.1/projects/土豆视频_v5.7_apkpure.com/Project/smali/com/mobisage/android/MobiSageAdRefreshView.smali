.class abstract Lcom/mobisage/android/MobiSageAdRefreshView;
.super Lcom/mobisage/android/MobiSageAdView;
.source "MobiSageAdRefreshView.java"


# instance fields
.field private adRefreshInterval:Ljava/lang/Integer;

.field private task:Lcom/mobisage/android/MobiSageAdTask;


# direct methods
.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "affiliateId"    # I
    .param p3, "affiliateSourceType"    # I

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mobisage/android/MobiSageAdView;-><init>(Landroid/content/Context;IIB)V

    .line 14
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->adRefreshInterval:Ljava/lang/Integer;

    .line 15
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/mobisage/android/MobiSageAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->adRefreshInterval:Ljava/lang/Integer;

    .line 20
    return-void
.end method

.method private checkAdInterval()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 77
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v2

    const-string v4, "intervalswitchtype"

    invoke-virtual {v2, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 84
    .local v1, "intervalSwitch":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->adRefreshInterval:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/mobisage/android/MobiSageEnviroment;->getAdRefreshTime(I)I

    move-result v0

    .line 86
    .local v0, "interval":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 87
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v2

    const-string v4, "intervaltime"

    invoke-virtual {v2, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    :cond_0
    const/16 v2, 0x1c20

    if-ne v0, v2, :cond_1

    .line 94
    const/4 v2, 0x0

    .line 95
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private registerMoniterAd(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/mobisage/android/MobiSageAdTask;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/mobisage/android/MobiSageAdTask;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/mobisage/android/MobiSageAdTask;->delayTime:J

    .line 120
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageTaskModule;->registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    .line 121
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageTaskModule;->unregisterMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    goto :goto_0
.end method

.method private registerRefreshAd(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/mobisage/android/MobiSageAdTask;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/mobisage/android/MobiSageAdTask;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/mobisage/android/MobiSageAdTask;->delayTime:J

    .line 110
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageTaskModule;->registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    .line 111
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageTaskModule;->unregisterMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    goto :goto_0
.end method

.method private unregisterAdTask()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageTaskModule;->unregisterMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 157
    return-void
.end method

.method public getAdRefreshInterval()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->adRefreshInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method protected initMobiSageAdView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0xf

    .line 41
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->initMobiSageAdView(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v0

    const-string v1, "adswitch"

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0, v2}, Lcom/mobisage/android/MobiSageAdRefreshView;->registerMoniterAd(I)V

    .line 52
    :goto_0
    invoke-direct {p0, v2}, Lcom/mobisage/android/MobiSageAdRefreshView;->registerMoniterAd(I)V

    .line 53
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->sendADRequest()V

    goto :goto_0
.end method

.method onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->unregisterAdTask()V

    .line 58
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    iput-object v1, v0, Lcom/mobisage/android/MobiSageAdTask;->cbHandler:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->task:Lcom/mobisage/android/MobiSageAdTask;

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->onDestroy()V

    .line 63
    return-void
.end method

.method protected onLoadAdFinish()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->onLoadAdFinish()V

    .line 132
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v2

    const-string v3, "intervalswitchtype"

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 139
    .local v1, "intervalSwitch":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->adRefreshInterval:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/mobisage/android/MobiSageEnviroment;->getAdRefreshTime(I)I

    move-result v0

    .line 141
    .local v0, "interval":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 142
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v2

    const-string v3, "intervaltime"

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    :cond_0
    const/16 v2, 0x1c20

    if-ne v0, v2, :cond_1

    .line 149
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/mobisage/android/MobiSageAdRefreshView;->registerMoniterAd(I)V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageAdRefreshView;->registerRefreshAd(I)V

    goto :goto_0
.end method

.method protected requestADFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 0
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->unregisterAdTask()V

    .line 126
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->requestADFinish(Lcom/mobisage/android/MobiSageAction;)V

    .line 127
    return-void
.end method

.method protected requestADFromDE()Z
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->unregisterAdTask()V

    .line 68
    const/4 v0, 0x1

    .line 69
    .local v0, "validFlag":Z
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdRefreshView;->checkAdInterval()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->requestADFromDE()Z

    move-result v0

    .line 71
    :cond_0
    if-eqz v0, :cond_1

    .line 72
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/mobisage/android/MobiSageAdRefreshView;->registerMoniterAd(I)V

    .line 73
    :cond_1
    return v0
.end method

.method public setAdRefreshInterval(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "adRefreshInterval"    # Ljava/lang/Integer;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdRefreshView;->adRefreshInterval:Ljava/lang/Integer;

    .line 37
    return-void
.end method
