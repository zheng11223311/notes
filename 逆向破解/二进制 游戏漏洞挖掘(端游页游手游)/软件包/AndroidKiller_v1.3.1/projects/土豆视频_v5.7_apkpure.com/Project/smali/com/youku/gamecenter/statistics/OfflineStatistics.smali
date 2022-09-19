.class public Lcom/youku/gamecenter/statistics/OfflineStatistics;
.super Ljava/lang/Object;
.source "OfflineStatistics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendStaticstics(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 21
    :cond_0
    return-void

    .line 13
    :cond_1
    invoke-static {p0}, Lcom/youku/gamecenter/statistics/StatisticsDataManager;->read(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 14
    .local v3, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-direct {v2, v1, p0}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 18
    .local v2, "statisticsTask":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
