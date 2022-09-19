.class public abstract Lcom/tudou/service/download/BaseDownload;
.super Ljava/lang/Object;
.source "BaseDownload.java"

# interfaces
.implements Lcom/tudou/service/download/IDownload;


# instance fields
.field public context:Landroid/content/Context;

.field public sdCard_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/SDCardManager$SDCardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final existsDownloadInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/tudou/service/download/BaseDownload;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;
    .locals 5
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v2, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move-object v1, v3

    .line 62
    :cond_0
    :goto_0
    return-object v1

    .line 55
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v2, v2, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/tudou/offlinedata/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tudou/service/download/BaseDownload;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v1

    .line 58
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    if-nez v1, :cond_0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_2
    move-object v1, v3

    .line 62
    goto :goto_0
.end method

.method public final getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;
    .locals 7
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Lcom/tudou/service/download/DownloadInfo;->jsonToDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v2

    .line 74
    .local v2, "i":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 75
    iput-object p1, v2, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i":Lcom/tudou/service/download/DownloadInfo;
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Download_BaseDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDownloadInfoBySavePath()#savePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getNewDownloadingData()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 92
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v3, "downloadingData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v8, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 122
    :cond_0
    return-object v3

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 98
    .local v2, "donwloadingCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    iget-object v8, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 99
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v8, v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tudou/offlinedata/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 98
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "dirs":[Ljava/lang/String;
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_2

    .line 104
    aget-object v7, v1, v4

    .line 105
    .local v7, "vid":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/BaseDownload;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v8, v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tudou/offlinedata/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/tudou/service/download/BaseDownload;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v5

    .line 107
    .local v5, "info":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v8

    if-eq v8, v10, :cond_5

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5

    .line 110
    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v8

    if-nez v8, :cond_4

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 112
    if-le v2, v10, :cond_4

    .line 113
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 116
    :cond_4
    new-instance v8, Lcom/tudou/service/download/DownloadListenerImpl;

    iget-object v9, p0, Lcom/tudou/service/download/BaseDownload;->context:Landroid/content/Context;

    invoke-direct {v8, v9, v5}, Lcom/tudou/service/download/DownloadListenerImpl;-><init>(Landroid/content/Context;Lcom/tudou/service/download/DownloadInfo;)V

    iput-object v8, v5, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    .line 118
    iget-object v8, v5, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public final isDownloadFinished(Ljava/lang/String;)Z
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/tudou/service/download/BaseDownload;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    .line 44
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 46
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
