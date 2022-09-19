.class public Lcom/youku/util/DeleteAbleItemList;
.super Ljava/lang/Object;
.source "DeleteAbleItemList.java"


# static fields
.field private static instance:Lcom/youku/util/DeleteAbleItemList;


# instance fields
.field private deleteAbleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/util/DeleteAbleItemList;->instance:Lcom/youku/util/DeleteAbleItemList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/youku/util/DeleteAbleItemList;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/youku/util/DeleteAbleItemList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/util/DeleteAbleItemList;->instance:Lcom/youku/util/DeleteAbleItemList;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/youku/util/DeleteAbleItemList;

    invoke-direct {v0}, Lcom/youku/util/DeleteAbleItemList;-><init>()V

    sput-object v0, Lcom/youku/util/DeleteAbleItemList;->instance:Lcom/youku/util/DeleteAbleItemList;

    .line 26
    :cond_0
    sget-object v0, Lcom/youku/util/DeleteAbleItemList;->instance:Lcom/youku/util/DeleteAbleItemList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addItems(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 2
    .param p1, "vid"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 50
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearQueue()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsItem(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 4
    .param p1, "vid"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 76
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, ""

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 86
    .end local v0    # "i":I
    :goto_1
    monitor-exit p0

    return v1

    .line 78
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    move v1, v2

    .line 84
    goto :goto_1

    :cond_2
    move v1, v2

    .line 86
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized containsItemSelect(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 5
    .param p1, "vid"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v1, ""

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 94
    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 108
    .end local v0    # "i":I
    :goto_1
    monitor-exit p0

    return v1

    .line 97
    .restart local v0    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 101
    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    move v1, v3

    .line 106
    goto :goto_1

    :cond_3
    move v1, v3

    .line 108
    goto :goto_1

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getVids()[Lcom/tudou/service/download/DownloadInfo;
    .locals 4

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    iget-object v3, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/tudou/service/download/DownloadInfo;

    .line 38
    .local v1, "vidStrings":[Lcom/tudou/service/download/DownloadInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    aput-object v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 44
    .end local v0    # "i":I
    .end local v1    # "vidStrings":[Lcom/tudou/service/download/DownloadInfo;
    .local v2, "vidStrings":[Lcom/tudou/service/download/DownloadInfo;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 43
    .end local v2    # "vidStrings":[Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    new-array v1, v3, [Lcom/tudou/service/download/DownloadInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "vidStrings":[Lcom/tudou/service/download/DownloadInfo;
    move-object v2, v1

    .line 44
    .end local v1    # "vidStrings":[Lcom/tudou/service/download/DownloadInfo;
    .restart local v2    # "vidStrings":[Lcom/tudou/service/download/DownloadInfo;
    goto :goto_1

    .line 36
    .end local v2    # "vidStrings":[Lcom/tudou/service/download/DownloadInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeItem(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "vid"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 62
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/youku/util/DeleteAbleItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
