.class public Lcom/youku/statistics/OfflineStatistics;
.super Ljava/lang/Object;
.source "OfflineStatistics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendVV(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-static {p1}, Lcom/youku/statistics/StatisticsDataManager;->read(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 21
    .local v3, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    .local v1, "s":Ljava/lang/String;
    const-string v4, "danmu/add"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    new-instance v2, Lcom/youku/statistics/StatisticsTask;

    const/4 v4, 0x1

    invoke-direct {v2, v1, p1, v4, v5}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 26
    .local v2, "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 28
    .end local v2    # "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    :cond_0
    new-instance v2, Lcom/youku/statistics/StatisticsTask;

    invoke-direct {v2, v1, p1}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 30
    .restart local v2    # "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 34
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    :cond_1
    return-void
.end method
