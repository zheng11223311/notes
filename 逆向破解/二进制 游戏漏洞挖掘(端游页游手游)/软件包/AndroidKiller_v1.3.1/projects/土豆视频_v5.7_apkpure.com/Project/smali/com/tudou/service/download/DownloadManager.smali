.class public Lcom/tudou/service/download/DownloadManager;
.super Lcom/tudou/service/download/BaseDownload;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;
    }
.end annotation


# static fields
.field private static final ALBUM_OPENED_INFO_KEY:Ljava/lang/String; = "album_opened_key"

.field private static final TAG:Ljava/lang/String; = "Download_Manager"

.field private static downloadedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/tudou/service/download/DownloadManager;

.field public static state:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadService:Lcom/tudou/service/download/IDownloadService;

.field finishReceiver:Landroid/content/BroadcastReceiver;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/OnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlbumOpenedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/tudou/service/download/ICallback;

.field private sConnect:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/tudou/service/download/BaseDownload;-><init>()V

    .line 65
    new-instance v0, Lcom/tudou/service/download/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/tudou/service/download/DownloadManager$1;-><init>(Lcom/tudou/service/download/DownloadManager;)V

    iput-object v0, p0, Lcom/tudou/service/download/DownloadManager;->mCallback:Lcom/tudou/service/download/ICallback;

    .line 99
    new-instance v0, Lcom/tudou/service/download/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/tudou/service/download/DownloadManager$2;-><init>(Lcom/tudou/service/download/DownloadManager;)V

    iput-object v0, p0, Lcom/tudou/service/download/DownloadManager;->sConnect:Landroid/content/ServiceConnection;

    .line 1055
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/service/download/DownloadManager;->mAlbumOpenedMap:Ljava/util/HashMap;

    .line 1121
    new-instance v0, Lcom/tudou/service/download/DownloadManager$7;

    invoke-direct {v0, p0}, Lcom/tudou/service/download/DownloadManager$7;-><init>(Lcom/tudou/service/download/DownloadManager;)V

    iput-object v0, p0, Lcom/tudou/service/download/DownloadManager;->finishReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadManager;->initCacheState()V

    .line 130
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadManager;->registerReceiver()V

    .line 131
    invoke-direct {p0, p1}, Lcom/tudou/service/download/DownloadManager;->bindService(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadManager;
    .param p1, "x1"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tudou/service/download/DownloadManager;->track(Lcom/tudou/service/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 44
    sput-object p0, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tudou/service/download/DownloadManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadManager;->getNewDownloadedData()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/service/download/DownloadManager;)Lcom/tudou/service/download/IDownloadService;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/IDownloadService;)Lcom/tudou/service/download/IDownloadService;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadManager;
    .param p1, "x1"    # Lcom/tudou/service/download/IDownloadService;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tudou/service/download/DownloadManager;)Lcom/tudou/service/download/ICallback;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->mCallback:Lcom/tudou/service/download/ICallback;

    return-object v0
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/service/download/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->sConnect:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 137
    return-void
.end method

.method public static getFolderInfo(Ljava/util/ArrayList;)Lcom/tudou/service/download/DownloadInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)",
            "Lcom/tudou/service/download/DownloadInfo;"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v3, 0x0

    .line 1037
    .local v3, "tempInfo":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1038
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1039
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 1040
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    sget-object v4, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1041
    move-object v3, v1

    .line 1052
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_0
    return-object v3

    .line 1044
    .restart local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    if-nez v0, :cond_3

    .line 1045
    move-object v3, v1

    .line 1038
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_3
    sget-object v4, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v4, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v5, v4, :cond_2

    .line 1049
    move-object v3, v1

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/tudou/service/download/DownloadManager;
    .locals 3

    .prologue
    .line 120
    const-class v1, Lcom/tudou/service/download/DownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->instance:Lcom/tudou/service/download/DownloadManager;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "Download_Manager"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/tudou/service/download/DownloadManager;

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tudou/service/download/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tudou/service/download/DownloadManager;->instance:Lcom/tudou/service/download/DownloadManager;

    .line 124
    :cond_0
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->instance:Lcom/tudou/service/download/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNewDownloadedData()Ljava/util/HashMap;
    .locals 9
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
    .line 233
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    .line 234
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 235
    sget-object v7, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    .line 269
    :goto_0
    return-object v7

    .line 237
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v7, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 238
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v7, v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tudou/offlinedata/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 237
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "dirs":[Ljava/lang/String;
    if-nez v2, :cond_5

    const/4 v5, 0x0

    .line 243
    .local v5, "size":I
    :goto_2
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_1

    .line 244
    aget-object v6, v2, v3

    .line 245
    .local v6, "vid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v7, v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tudou/offlinedata/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    .line 247
    .local v0, "d":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 248
    sget-object v7, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    if-nez v7, :cond_3

    .line 249
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    .line 250
    :cond_3
    sget-object v7, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget v7, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    iget-object v8, v0, Lcom/tudou/service/download/DownloadInfo;->segsSeconds:[I

    array-length v8, v8

    if-eq v7, v8, :cond_4

    .line 252
    new-instance v7, Lcom/tudou/service/download/DownloadManager$3;

    invoke-direct {v7, p0, v0}, Lcom/tudou/service/download/DownloadManager$3;-><init>(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v7}, Lcom/tudou/service/download/DownloadManager$3;->start()V

    .line 243
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 242
    .end local v0    # "d":Lcom/tudou/service/download/DownloadInfo;
    .end local v3    # "i":I
    .end local v5    # "size":I
    .end local v6    # "vid":Ljava/lang/String;
    :cond_5
    array-length v5, v2

    goto :goto_2

    .line 269
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "dirs":[Ljava/lang/String;
    :cond_6
    sget-object v7, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    goto/16 :goto_0
.end method

.method public static final getVideoDownloadFormat()I
    .locals 1

    .prologue
    .line 980
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initCacheState()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 151
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->state:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method private makeExtend(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p2, "actionType"    # Ljava/lang/String;
    .param p3, "eventType"    # Ljava/lang/String;
    .param p4, "eventName"    # Ljava/lang/String;
    .param p5, "dlerror"    # Ljava/lang/String;
    .param p6, "errorType"    # Ljava/lang/String;

    .prologue
    .line 1151
    const-string v1, "dazhu_track"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- actionType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- eventName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-- dlerror : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-- errortype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1153
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "actionType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string v1, "eventType"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    const-string/jumbo v1, "sid"

    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string/jumbo v1, "vid"

    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    const-string v1, "dltime"

    iget-wide v2, p1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    const-string v1, "dlbite"

    iget-wide v2, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1162
    const-string v1, "dlerror"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1164
    const-string v1, "errorType"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    :cond_2
    const-string/jumbo v1, "\u7f13\u5b58"

    const-string v2, ""

    invoke-static {p4, v1, v2, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1166
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 1109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1110
    .local v0, "i":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1112
    return-void
.end method

.method private saveAlbumOpenedInfo()V
    .locals 7

    .prologue
    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/tudou/service/download/DownloadManager;->mAlbumOpenedMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1074
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1075
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1076
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1077
    .local v4, "showId":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1080
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1081
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1083
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "showId":Ljava/lang/String;
    :cond_0
    const-string v5, "album_opened_key"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method private setOnCreateDownloadListener(Lcom/tudou/service/download/OnPreparedCallback;)V
    .locals 4
    .param p1, "listener"    # Lcom/tudou/service/download/OnPreparedCallback;

    .prologue
    .line 510
    move-object v1, p1

    .line 511
    .local v1, "lis":Lcom/tudou/service/download/OnPreparedCallback;
    if-nez p1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 514
    :cond_0
    new-instance v2, Lcom/tudou/service/download/DownloadManager$4;

    invoke-direct {v2, p0, v1}, Lcom/tudou/service/download/DownloadManager$4;-><init>(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 534
    .local v2, "on":Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 535
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_READY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v3, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_FAILED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v3, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V
    .locals 14
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/tudou/android/Youku$FromType;
    .param p4, "format"    # I
    .param p5, "showid"    # Ljava/lang/String;
    .param p6, "imgUrl"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/tudou/service/download/OnPreparedCallback;

    .prologue
    .line 990
    const-string/jumbo v1, "test2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startCache tudou format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    if-nez p3, :cond_0

    .line 992
    sget-object p3, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    .line 993
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v8, ""

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v13}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;Lcom/tudou/service/download/IVideoDownloadCallBack;)V

    .line 1002
    :goto_0
    return-void

    .line 996
    :cond_0
    sget-object v1, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_1

    .line 997
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string/jumbo v8, "youku"

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v13}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;Lcom/tudou/service/download/IVideoDownloadCallBack;)V

    goto :goto_0

    .line 999
    :cond_1
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string/jumbo v8, "tudou"

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v13}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;Lcom/tudou/service/download/IVideoDownloadCallBack;)V

    goto :goto_0
.end method

.method private static startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;Lcom/tudou/service/download/IVideoDownloadCallBack;)V
    .locals 13
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showName"    # Ljava/lang/String;
    .param p3, "showSubTitle"    # Ljava/lang/String;
    .param p4, "xuanjiTitle"    # Ljava/lang/String;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "format"    # I
    .param p7, "fromto"    # Ljava/lang/String;
    .param p8, "showid"    # Ljava/lang/String;
    .param p9, "imgUrl"    # Ljava/lang/String;
    .param p10, "istrailer"    # Z
    .param p11, "callback"    # Lcom/tudou/service/download/OnPreparedCallback;
    .param p12, "dcallback"    # Lcom/tudou/service/download/IVideoDownloadCallBack;

    .prologue
    .line 1026
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 1030
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    .local v0, "download":Lcom/tudou/service/download/DownloadManager;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    .line 1031
    invoke-virtual/range {v0 .. v12}, Lcom/tudou/service/download/DownloadManager;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;)V

    .line 1032
    return-void
.end method

.method public static startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;Lcom/tudou/service/download/IVideoDownloadCallBack;)V
    .locals 14
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showName"    # Ljava/lang/String;
    .param p3, "showSubTitle"    # Ljava/lang/String;
    .param p4, "xuanjiTitle"    # Ljava/lang/String;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "type"    # Lcom/tudou/android/Youku$FromType;
    .param p7, "format"    # I
    .param p8, "showid"    # Ljava/lang/String;
    .param p9, "imgUrl"    # Ljava/lang/String;
    .param p10, "istrailer"    # Z
    .param p11, "callback"    # Lcom/tudou/service/download/OnPreparedCallback;
    .param p12, "dcallback"    # Lcom/tudou/service/download/IVideoDownloadCallBack;

    .prologue
    .line 1010
    if-nez p6, :cond_0

    .line 1011
    sget-object p6, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    .line 1012
    :cond_0
    sget-object v1, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    move-object/from16 v0, p6

    if-ne v0, v1, :cond_1

    .line 1013
    const-string/jumbo v8, "youku"

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v1 .. v13}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;Lcom/tudou/service/download/IVideoDownloadCallBack;)V

    .line 1018
    :goto_0
    return-void

    .line 1015
    :cond_1
    const-string/jumbo v8, "tudou"

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v1 .. v13}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;Lcom/tudou/service/download/IVideoDownloadCallBack;)V

    goto :goto_0
.end method

.method private track(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const-wide/16 v2, 0x0

    .line 1133
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1134
    iget-wide v0, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1135
    const-string v2, "downloadBegin"

    const-string v3, "eventBegin"

    const-string/jumbo v4, "\u7f13\u5b58\u5f00\u59cb"

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tudou/service/download/DownloadManager;->makeExtend(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1139
    :cond_2
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    const-string v2, "downloadError"

    const-string v3, "eventError"

    const-string/jumbo v4, "\u7f13\u5b58\u5931\u8d25"

    iget-object v5, p1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    iget-object v6, p1, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tudou/service/download/DownloadManager;->makeExtend(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_3
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1142
    iget-wide v0, p1, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1143
    const-string v2, "downloadCancel"

    const-string v3, "eventCancel"

    const-string/jumbo v4, "\u7f13\u5b58\u53d6\u6d88"

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tudou/service/download/DownloadManager;->makeExtend(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1144
    :cond_4
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1145
    const-string v2, "downloadSuccess"

    const-string v3, "eventSuccess"

    const-string/jumbo v4, "\u7f13\u5b58\u6210\u529f"

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tudou/service/download/DownloadManager;->makeExtend(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unRegistBroadCastReceiver()V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->finishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadManager;->finishReceiver:Landroid/content/BroadcastReceiver;

    .line 1119
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tudou/service/download/OnChangeListener;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/service/download/DownloadManager;->listeners:Ljava/util/ArrayList;

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    return-void
.end method

.method public appExit()Z
    .locals 2

    .prologue
    .line 969
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->appExit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 972
    :goto_0
    return v1

    .line 970
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canUse3GDownload()Z
    .locals 3

    .prologue
    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->canUse3GDownload()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 756
    :goto_0
    return v1

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 756
    const-string v1, "nowlandownload"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public canUseAcc()Z
    .locals 2

    .prologue
    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->canUseAcc()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 794
    :goto_0
    return v1

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;)V
    .locals 14
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "videoName"    # Ljava/lang/String;
    .param p3, "showName"    # Ljava/lang/String;
    .param p4, "showSubTitle"    # Ljava/lang/String;
    .param p5, "xuanjiTitle"    # Ljava/lang/String;
    .param p6, "format"    # I
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "fromto"    # Ljava/lang/String;
    .param p9, "showid"    # Ljava/lang/String;
    .param p10, "imgurl"    # Ljava/lang/String;
    .param p11, "istrailer"    # Z
    .param p12, "listener"    # Lcom/tudou/service/download/OnPreparedCallback;

    .prologue
    .line 488
    move-object/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/tudou/service/download/DownloadManager;->setOnCreateDownloadListener(Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/tudou/service/download/IDownloadService;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v13

    .line 492
    .local v13, "e":Landroid/os/RemoteException;
    const-string v1, "Download_Manager"

    invoke-static {v1, v13}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createDownloads([Ljava/lang/String;[Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V
    .locals 2
    .param p1, "videoIds"    # [Ljava/lang/String;
    .param p2, "videoNames"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/tudou/service/download/OnPreparedCallback;

    .prologue
    .line 501
    invoke-direct {p0, p3}, Lcom/tudou/service/download/DownloadManager;->setOnCreateDownloadListener(Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1, p2}, Lcom/tudou/service/download/IDownloadService;->createDownloads([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteAllDownloaded()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 694
    const-string v6, "Download_Manager"

    const-string v7, "deleteAllDownloaded()"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 724
    :goto_0
    return v8

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 699
    .local v0, "clone":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    const-string v6, "download_last_notify_taskid"

    invoke-static {v6}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, "nId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 701
    .local v3, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 702
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 703
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 704
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v6, v2, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 705
    iget-object v6, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 707
    .local v5, "nm":Landroid/app/NotificationManager;
    const/16 v6, 0x1700

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 708
    const-string v6, "download_last_notify_taskid"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 711
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v5    # "nm":Landroid/app/NotificationManager;
    :cond_2
    new-instance v6, Lcom/tudou/service/download/DownloadManager$6;

    invoke-direct {v6, p0, v0}, Lcom/tudou/service/download/DownloadManager$6;-><init>(Lcom/tudou/service/download/DownloadManager;Ljava/util/HashMap;)V

    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadManager$6;->start()V

    .line 723
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public deleteAllDownloading()Z
    .locals 3

    .prologue
    .line 637
    const-string v1, "Download_Manager"

    const-string v2, "deleteAllDownloading()"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->deleteAll()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 643
    :goto_0
    return v1

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 643
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteArray([Ljava/lang/String;)Z
    .locals 3
    .param p1, "taskIds"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 937
    :try_start_0
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v2, p1}, Lcom/tudou/service/download/IDownloadService;->deleteArray([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 943
    :goto_0
    return v1

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Download_Manager"

    invoke-static {v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 941
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Download_Manager"

    invoke-static {v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteDownloaded(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 647
    const-string v1, "Download_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDownloaded() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    sget-object v1, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v1, "download_last_notify_taskid"

    invoke-static {v1}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 652
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x1700

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 653
    const-string v1, "download_last_notify_taskid"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_0
    new-instance v1, Lcom/tudou/service/download/DownloadManager$5;

    invoke-direct {v1, p0, p1}, Lcom/tudou/service/download/DownloadManager$5;-><init>(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadManager$5;->start()V

    .line 662
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->startNewTask()V

    .line 663
    const/4 v1, 0x1

    return v1
.end method

.method public deleteDownloadeds(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v8, 0x1

    .line 667
    const-string v5, "Download_Manager"

    const-string v6, "deleteDownloadeds() : ArrayList"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v8

    .line 670
    :cond_1
    const-string v5, "download_last_notify_taskid"

    invoke-static {v5}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "nId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 672
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    sget-object v5, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v5, v2, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 674
    iget-object v5, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 676
    .local v4, "nm":Landroid/app/NotificationManager;
    const/16 v5, 0x1700

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 677
    const-string v5, "download_last_notify_taskid"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 681
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v4    # "nm":Landroid/app/NotificationManager;
    :cond_3
    const/4 v0, 0x0

    .line 682
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 683
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    add-int/lit8 v0, v0, 0x1

    .line 684
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info.savePath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 686
    new-instance v5, Ljava/io/File;

    iget-object v6, v2, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/youku/util/Util;->deleteFile(Ljava/io/File;)V

    goto :goto_2

    .line 688
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->startNewTask()V

    goto/16 :goto_0
.end method

.method public deleteDownloading(Ljava/lang/String;)Z
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 626
    const-string v1, "Download_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDownloading() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAccPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->getAccPort()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 836
    :goto_0
    return-object v1

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 836
    const-string v1, ""

    goto :goto_0
.end method

.method public getAlbumMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->mAlbumMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getCurrentDownloadSDCardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 730
    :try_start_0
    const-string v1, "Download_Manager"

    const-string v2, "getCurrentDownloadSDCardPath"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->getCurrentDownloadSDCardPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 735
    :goto_0
    return-object v1

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 735
    const-string v1, "download_file_path"

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDownloadCreating()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->getDownloadCreating()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 905
    :goto_0
    return-object v1

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 905
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDownloadFormat()I
    .locals 2

    .prologue
    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->getDownloadFormat()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 846
    :goto_0
    return v1

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 846
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDownloadInfo(Ljava/lang/String;I)Lcom/tudou/service/download/DownloadInfo;
    .locals 7
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "show_videoseq"    # I

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 369
    :goto_0
    return-object v1

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 358
    .local v2, "iter":Ljava/util/Iterator;
    sget-object v4, Lcom/tudou/service/download/DownloadManager;->MAP_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 359
    :cond_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 360
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 361
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 362
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v1, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    if-ne v5, p2, :cond_1

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 365
    monitor-exit v4

    goto :goto_0

    .line 368
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 369
    goto :goto_0
.end method

.method public getDownloadInfoListById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "videoIdOrShowId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 375
    if-nez p1, :cond_0

    .line 376
    const/4 v3, 0x0

    .line 401
    :goto_0
    return-object v3

    .line 378
    :cond_0
    const/4 v3, 0x0

    .line 379
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    if-nez v3, :cond_1

    .line 381
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 385
    .local v2, "iter":Ljava/util/Iterator;
    sget-object v6, Lcom/tudou/service/download/DownloadManager;->MAP_LOCK:Ljava/lang/Object;

    monitor-enter v6

    move-object v4, v3

    .line 386
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 387
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 388
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 389
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 390
    if-nez v4, :cond_5

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :goto_2
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    move-object v4, v3

    .line 394
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    goto :goto_1

    .line 395
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_4

    .line 397
    sput-boolean v7, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 398
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_4
    move-object v3, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    goto :goto_0

    .line 395
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :goto_4
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :catchall_1
    move-exception v5

    goto :goto_4

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    .restart local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_5
    move-object v3, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    goto :goto_2

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_6
    move-object v3, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    goto :goto_3
.end method

.method public getDownloadLanguage()I
    .locals 2

    .prologue
    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->getDownloadLanguage()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 866
    :goto_0
    return v1

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 866
    invoke-static {}, Lcom/tudou/service/download/DownloadUtils;->getDownloadLanguage()I

    move-result v1

    goto :goto_0
.end method

.method public getDownloadedData()Ljava/util/HashMap;
    .locals 1
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
    .line 226
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadManager;->getNewDownloadedData()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    .line 229
    :cond_0
    sget-object v0, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDownloadedData(Z)Ljava/util/HashMap;
    .locals 1
    .param p1, "updata"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/service/download/DownloadManager;->downloadedData:Ljava/util/HashMap;

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 302
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 304
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-object v2
.end method

.method public getDownloadedList(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "updata"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {p0, p1}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData(Z)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 276
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    const/4 v0, 0x0

    .line 283
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 284
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/service/download/DownloadInfo;

    iget v5, v5, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    if-nez v5, :cond_3

    .line 285
    iget-object v5, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.tudou.download.CACHE_ICON_VISIBLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 291
    :cond_1
    if-nez v0, :cond_2

    .line 292
    iget-object v5, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.tudou.download.CACHE_ICON_GONE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    :cond_2
    return-object v4

    .line 283
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDownloadedListForAccount()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tudou/service/download/DownloadManager;->getDownloadedList(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 311
    .local v4, "downloadedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tudou/service/download/DownloadManager;->mAlbumMap:Ljava/util/HashMap;

    .line 312
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 313
    .local v11, "size":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v12, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_6

    .line 315
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    .line 316
    .local v3, "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    iget-object v9, v3, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 317
    .local v9, "showid":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/service/download/DownloadManager;->mAlbumMap:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 319
    .local v2, "albumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    if-nez v2, :cond_2

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "albumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .restart local v2    # "albumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/service/download/DownloadManager;->mAlbumMap:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v2    # "albumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 328
    .local v5, "flag":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v8, v13, -0x1

    .local v8, "j":I
    :goto_2
    if-ltz v8, :cond_4

    .line 329
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/service/download/DownloadInfo;

    .line 330
    .local v7, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v10, v7, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 331
    .local v10, "showid1":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 332
    iget-wide v14, v7, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    iget-wide v0, v3, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-lez v13, :cond_3

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 328
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 323
    .end local v5    # "flag":I
    .end local v7    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v8    # "j":I
    .end local v10    # "showid1":Ljava/lang/String;
    .restart local v2    # "albumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 324
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    .end local v2    # "albumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .restart local v5    # "flag":I
    .restart local v7    # "info":Lcom/tudou/service/download/DownloadInfo;
    .restart local v8    # "j":I
    .restart local v10    # "showid1":Ljava/lang/String;
    :cond_3
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 339
    .end local v7    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v10    # "showid1":Ljava/lang/String;
    :cond_4
    if-nez v5, :cond_5

    .line 340
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 343
    .end local v3    # "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v5    # "flag":I
    .end local v8    # "j":I
    .end local v9    # "showid":Ljava/lang/String;
    :cond_6
    return-object v12
.end method

.method public getDownloadingData()Ljava/util/HashMap;
    .locals 10
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
    .line 176
    iget-object v8, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    if-eqz v8, :cond_1

    .line 178
    :try_start_0
    iget-object v8, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v8}, Lcom/tudou/service/download/IDownloadService;->getDownloadingData()Ljava/util/Map;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v8

    .line 206
    :cond_0
    return-object v2

    .line 180
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "Download_Manager"

    invoke-static {v8, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v2, "downloadingData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v8, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 190
    :cond_2
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    iget-object v8, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 191
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

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

    .line 192
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 190
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "dirs":[Ljava/lang/String;
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 196
    aget-object v7, v1, v4

    .line 197
    .local v7, "vid":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/DownloadManager;->sdCard_list:Ljava/util/ArrayList;

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

    invoke-virtual {p0, v8}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v5

    .line 199
    .local v5, "info":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5

    .line 202
    iget-object v8, v5, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public final getDownloadings(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 882
    .local p1, "vids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->getDownloadings(Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 885
    :goto_0
    return v1

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 885
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHowManyDownloadsByShowId(Ljava/lang/String;)I
    .locals 6
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 468
    :cond_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    .line 469
    :cond_1
    const/4 v0, 0x0

    .line 470
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 471
    .local v3, "iter":Ljava/util/Iterator;
    sget-object v5, Lcom/tudou/service/download/DownloadManager;->MAP_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 472
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 474
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 475
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v4, v2, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getNextDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;
    .locals 11
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 412
    invoke-virtual {p0, p1}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v6

    .line 413
    .local v6, "thisinfo":Lcom/tudou/service/download/DownloadInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v5, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 416
    .local v4, "iter":Ljava/util/Iterator;
    if-nez v6, :cond_1

    move-object v2, v7

    .line 456
    :cond_0
    :goto_0
    return-object v2

    .line 418
    :cond_1
    const/4 v3, 0x0

    .line 419
    .local v3, "isthis":Z
    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 420
    sget-object v8, Lcom/tudou/service/download/DownloadManager;->MAP_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 421
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 422
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 423
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 424
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v9, v2, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    iget-object v10, v6, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 425
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 428
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    const/4 v8, 0x1

    sput-boolean v8, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 430
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 431
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 432
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    if-nez v3, :cond_0

    .line 434
    iget-object v8, v2, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 435
    const/4 v3, 0x1

    goto :goto_2

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_5
    move-object v2, v7

    .line 439
    goto :goto_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object v2, v7

    .line 456
    goto :goto_0
.end method

.method public hasDownloadingTask()Z
    .locals 2

    .prologue
    .line 949
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->hasDownloadingTask()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 952
    :goto_0
    return v1

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 952
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAlbumOpened(Ljava/lang/String;)Z
    .locals 2
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->mAlbumOpenedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1065
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    const/4 v1, 0x1

    .line 1068
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDownloadCreating(Ljava/lang/String;)Z
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, "creating":Z
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadCreating()Ljava/util/Map;

    move-result-object v1

    .line 892
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    const/4 v0, 0x1

    .line 895
    :cond_0
    return v0
.end method

.method public loadAlbumOpenedInfo()V
    .locals 9

    .prologue
    .line 1087
    iget-object v6, p0, Lcom/tudou/service/download/DownloadManager;->mAlbumOpenedMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1088
    const-string v6, "album_opened_key"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1089
    .local v4, "str":Ljava/lang/String;
    const-string v6, "byron"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAlbumOpenedInfo(): str = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :try_start_0
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1092
    .local v5, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 1093
    aget-object v3, v5, v1

    .line 1094
    .local v3, "s":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1095
    .local v2, "openedInfo":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1096
    iget-object v6, p0, Lcom/tudou/service/download/DownloadManager;->mAlbumOpenedMap:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1099
    .end local v1    # "i":I
    .end local v2    # "openedInfo":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "strings":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public noDisturb()Z
    .locals 3

    .prologue
    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->noDisturb()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 783
    :goto_0
    return v1

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 783
    const-string v1, "nodisturb"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public pauseAllTask(Z)V
    .locals 2
    .param p1, "pause"    # Z

    .prologue
    .line 919
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->pauseAllTask(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pauseDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->pause(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putAlbumOpenedInfo(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "isOpened"    # Z

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->mAlbumOpenedMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadManager;->saveAlbumOpenedInfo()V

    .line 1061
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tudou/service/download/OnChangeListener;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    return-void
.end method

.method public setAppExit(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v0, p1}, Lcom/tudou/service/download/IDownloadService;->setAppExit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCanUse3GDownload(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->setCanUse3GDownload(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_0
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCurrentDownloadSDCardPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDownloadFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 851
    invoke-static {p1}, Lcom/tudou/service/download/DownloadUtils;->setDownloadFormat(I)V

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->setDownloadFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDownloadLanguage(I)V
    .locals 2
    .param p1, "language"    # I

    .prologue
    .line 871
    invoke-static {p1}, Lcom/tudou/service/download/DownloadUtils;->setDownloadLanguage(I)V

    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->setDownloadLanguage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setNoDisturb(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->setNoDisturb(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setP2p_switch(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 799
    const-string v1, "p2p_switch"

    invoke-static {v1, p1}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;I)V

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->setP2p_switch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/youku/service/acc/AccInitData;->setP2pSwitch(Landroid/content/Context;I)V

    .line 827
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTimeStamp(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1, p2}, Lcom/tudou/service/download/IDownloadService;->setTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startAllTask()V
    .locals 2

    .prologue
    .line 928
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->startAllTask()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1, p1}, Lcom/tudou/service/download/IDownloadService;->down(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startNewTask()V
    .locals 3

    .prologue
    .line 610
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    const-class v2, Lcom/tudou/service/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "startNewTask"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 613
    return-void
.end method

.method public stopAllTask()V
    .locals 2

    .prologue
    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->stopAllTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadManager;->unRegistBroadCastReceiver()V

    .line 142
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager;->downloadService:Lcom/tudou/service/download/IDownloadService;

    invoke-interface {v1}, Lcom/tudou/service/download/IDownloadService;->unregister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
