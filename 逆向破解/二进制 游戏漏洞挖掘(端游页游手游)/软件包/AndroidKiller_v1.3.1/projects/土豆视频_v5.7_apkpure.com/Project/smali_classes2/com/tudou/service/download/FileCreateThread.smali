.class public Lcom/tudou/service/download/FileCreateThread;
.super Ljava/lang/Thread;
.source "FileCreateThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Download_CreateRunnable"

.field private static isRunning:Z = false

.field private static final pageName:Ljava/lang/String; = "\u7f13\u5b58\u6a21\u5757"

.field public static tempCreateData:Ljava/util/Map;
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


# instance fields
.field private final SPACE_LESS_10:I

.field private final SPACE_MORE_10:I

.field private final SPACE_MORE_100:I

.field private final SPACE_NO_EXIST:I

.field private final SPACE_ROOM_0:I

.field private canAccessCacheAddress:Z

.field private download:Lcom/tudou/service/download/DownloadServiceManager;

.field private download_temp_infos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private failCount:I

.field private hasMaryPaths:Z

.field private successCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/service/download/FileCreateThread;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
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

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput v1, p0, Lcom/tudou/service/download/FileCreateThread;->successCount:I

    .line 49
    iput v1, p0, Lcom/tudou/service/download/FileCreateThread;->failCount:I

    .line 50
    iput-boolean v1, p0, Lcom/tudou/service/download/FileCreateThread;->hasMaryPaths:Z

    .line 53
    iput-boolean v1, p0, Lcom/tudou/service/download/FileCreateThread;->canAccessCacheAddress:Z

    .line 352
    iput v2, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_LESS_10:I

    .line 354
    const/4 v1, 0x2

    iput v1, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_MORE_10:I

    .line 356
    const/4 v1, 0x3

    iput v1, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_MORE_100:I

    .line 358
    const/4 v1, 0x4

    iput v1, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_NO_EXIST:I

    .line 360
    const/4 v1, 0x5

    iput v1, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_ROOM_0:I

    .line 61
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iput-boolean v2, p0, Lcom/tudou/service/download/FileCreateThread;->canAccessCacheAddress:Z

    .line 63
    :cond_0
    invoke-static {}, Lcom/tudou/service/download/DownloadServiceManager;->getInstance()Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    .line 64
    sput-boolean v2, Lcom/tudou/service/download/FileCreateThread;->isRunning:Z

    .line 65
    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    .line 67
    :cond_1
    sget-object v1, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    .line 69
    :cond_2
    sget-object v1, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    .end local p2    # "videoName":Ljava/lang/String;
    .end local p9    # "showid":Ljava/lang/String;
    :goto_0
    return-void

    .line 72
    .restart local p2    # "videoName":Ljava/lang/String;
    .restart local p9    # "showid":Ljava/lang/String;
    :cond_3
    const-string v1, "Download_CreateRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--showid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - imgrul : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {v0}, Lcom/tudou/service/download/DownloadInfo;-><init>()V

    .line 75
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-boolean v1, p0, Lcom/tudou/service/download/FileCreateThread;->canAccessCacheAddress:Z

    if-eqz v1, :cond_9

    .line 76
    const/16 v1, 0x38

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->verCode:I

    .line 79
    :goto_1
    iput-object p1, v0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    .line 80
    iput-object p3, v0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 81
    iput-object p4, v0, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p2, p5

    .end local p2    # "videoName":Ljava/lang/String;
    :cond_4
    iput-object p2, v0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    .line 83
    iput-object p5, v0, Lcom/tudou/service/download/DownloadInfo;->xuanjiTitle:Ljava/lang/String;

    .line 84
    iput p6, v0, Lcom/tudou/service/download/DownloadInfo;->format:I

    .line 85
    iput-object p7, v0, Lcom/tudou/service/download/DownloadInfo;->langcode:Ljava/lang/String;

    .line 86
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "0"

    invoke-virtual {p9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string p9, ""

    .end local p9    # "showid":Ljava/lang/String;
    :cond_6
    iput-object p9, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 87
    iput-object p10, v0, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    .line 88
    iput-boolean p11, v0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    .line 89
    const-string v1, "tudou"

    invoke-virtual {v1, p8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 90
    :cond_7
    invoke-virtual {v0, p6}, Lcom/tudou/service/download/DownloadInfo;->setTudouFormatByYouku(I)V

    .line 93
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tudou/offlinedata/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    iget-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 78
    .restart local p2    # "videoName":Ljava/lang/String;
    .restart local p9    # "showid":Ljava/lang/String;
    :cond_9
    sget v1, Lcom/youku/config/Profile;->VER_CODE:I

    iput v1, v0, Lcom/tudou/service/download/DownloadInfo;->verCode:I

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "vids"    # [Ljava/lang/String;
    .param p2, "titles"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput v4, p0, Lcom/tudou/service/download/FileCreateThread;->successCount:I

    .line 49
    iput v4, p0, Lcom/tudou/service/download/FileCreateThread;->failCount:I

    .line 50
    iput-boolean v4, p0, Lcom/tudou/service/download/FileCreateThread;->hasMaryPaths:Z

    .line 53
    iput-boolean v4, p0, Lcom/tudou/service/download/FileCreateThread;->canAccessCacheAddress:Z

    .line 352
    iput v5, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_LESS_10:I

    .line 354
    const/4 v4, 0x2

    iput v4, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_MORE_10:I

    .line 356
    const/4 v4, 0x3

    iput v4, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_MORE_100:I

    .line 358
    const/4 v4, 0x4

    iput v4, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_NO_EXIST:I

    .line 360
    const/4 v4, 0x5

    iput v4, p0, Lcom/tudou/service/download/FileCreateThread;->SPACE_ROOM_0:I

    .line 100
    invoke-static {}, Lcom/tudou/service/download/DownloadServiceManager;->getInstance()Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    .line 101
    sput-boolean v5, Lcom/tudou/service/download/FileCreateThread;->isRunning:Z

    .line 102
    iget-object v4, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    .line 104
    :cond_0
    sget-object v4, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 105
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 111
    const-string v4, "Download_CreateRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "titles:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/vids:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v4, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    aget-object v5, p1, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    new-instance v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {v1}, Lcom/tudou/service/download/DownloadInfo;-><init>()V

    .line 116
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    aget-object v4, p2, v0

    iput-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    .line 117
    aget-object v4, p1, v0

    iput-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tudou/offlinedata/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v4, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/download/FileCreateThread;)Lcom/tudou/service/download/DownloadServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/FileCreateThread;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    return-object v0
.end method

.method private hasEnoughSpace(J)Z
    .locals 13
    .param p1, "needSpace"    # J

    .prologue
    .line 303
    iget-object v8, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v8}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "savePath":Ljava/lang/String;
    new-instance v4, Lcom/tudou/service/download/SDCardManager;

    invoke-direct {v4, v5}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 305
    .local v4, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v4}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v8

    if-nez v8, :cond_0

    .line 306
    const/4 v8, 0x0

    .line 322
    :goto_0
    return v8

    .line 308
    :cond_0
    const-wide/16 v6, 0x0

    .line 309
    .local v6, "needsize":J
    iget-object v8, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v8}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    .line 310
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 311
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 312
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 314
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v8, v2, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 315
    iget-wide v8, v2, Lcom/tudou/service/download/DownloadInfo;->size:J

    iget-wide v10, v2, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    goto :goto_1

    .line 319
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_2
    invoke-virtual {v4}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long/2addr v8, p1

    const-wide/32 v10, 0x100000

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 320
    const/4 v8, 0x0

    goto :goto_0

    .line 322
    :cond_3
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private init(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 5
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 265
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 266
    iput-boolean v2, p1, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    .line 267
    iget-boolean v3, p0, Lcom/tudou/service/download/FileCreateThread;->canAccessCacheAddress:Z

    if-eqz v3, :cond_1

    .line 268
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v1

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/tudou/service/download/FileCreateThread;->isEnoughSpace()I

    move-result v0

    .line 273
    .local v0, "spaceType":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    .line 274
    new-instance v3, Lcom/tudou/service/download/FileCreateThread$3;

    invoke-direct {v3, p0, p1}, Lcom/tudou/service/download/FileCreateThread$3;-><init>(Lcom/tudou/service/download/FileCreateThread;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v3}, Lcom/tudou/service/download/FileCreateThread$3;->start()V

    .line 288
    invoke-static {p1}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    new-instance v1, Lcom/tudou/service/download/DownloadListenerImpl;

    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/tudou/service/download/DownloadListenerImpl;-><init>(Landroid/content/Context;Lcom/tudou/service/download/DownloadInfo;)V

    iput-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    move v1, v2

    .line 292
    goto :goto_0

    .line 282
    :cond_2
    if-ne v0, v4, :cond_3

    .line 283
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    goto :goto_0

    .line 285
    :cond_3
    invoke-virtual {p1, v2}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    goto :goto_0
.end method

.method private isEnoughSpace()I
    .locals 10

    .prologue
    const-wide/32 v8, 0x6400000

    const-wide/32 v6, 0xa00000

    .line 326
    iget-object v2, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "savePath":Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    invoke-direct {v0, v1}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    const/4 v2, 0x4

    .line 339
    :goto_0
    return v2

    .line 331
    :cond_0
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 332
    const/4 v2, 0x3

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2

    .line 334
    const/4 v2, 0x1

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_3

    .line 337
    const/4 v2, 0x2

    goto :goto_0

    .line 339
    :cond_3
    const/4 v2, 0x5

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tudou/service/download/FileCreateThread;->isRunning:Z

    return v0
.end method

.method private less10MSpace()Z
    .locals 3

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/tudou/service/download/FileCreateThread;->isEnoughSpace()I

    move-result v1

    .line 345
    .local v1, "sdSpace":I
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 346
    :cond_0
    const/4 v0, 0x1

    .line 348
    :cond_1
    return v0
.end method

.method private over()V
    .locals 3

    .prologue
    .line 127
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/service/download/FileCreateThread;->isRunning:Z

    .line 131
    return-void
.end method

.method private showErrorTip(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "e":Ljava/lang/String;
    const-string v2, "Download_CreateRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExceptionId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getCreateTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->showTipsShort(Ljava/lang/String;J)V

    goto :goto_0

    .line 246
    :pswitch_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getCreateTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->showTipsShort(Ljava/lang/String;J)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getCreateTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->showTipsShort(Ljava/lang/String;J)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getCreateTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->showTipsShort(Ljava/lang/String;J)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tudou/service/download/DownloadInfo;

    .line 136
    .local v9, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v1, v9, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadServiceManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v1, v9, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadServiceManager;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const v0, 0x7f0d0106

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 140
    :cond_1
    const v0, 0x7f0d0107

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 145
    .local v12, "time":J
    iput-wide v12, v9, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    .line 146
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    .line 147
    const-string v0, "Download_CreateRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.taskId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v9}, Lcom/tudou/service/download/FileCreateThread;->init(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    const-string v0, "Download_CreateRunnable"

    const-string v1, "init : true"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v0, v9}, Lcom/tudou/service/download/DownloadServiceManager;->addDownloadingInfo(Lcom/tudou/service/download/DownloadInfo;)V

    .line 151
    iget v0, p0, Lcom/tudou/service/download/FileCreateThread;->successCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tudou/service/download/FileCreateThread;->successCount:I

    .line 152
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "video_id"

    iget-object v3, v9, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    invoke-direct {p0}, Lcom/tudou/service/download/FileCreateThread;->isEnoughSpace()I

    move-result v10

    .line 156
    .local v10, "spaceType":I
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "tips":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V

    .line 159
    packed-switch v10, :pswitch_data_0

    .line 168
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/youku/util/Util;->showTipsShort(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 162
    :pswitch_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d010b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 164
    goto :goto_1

    .line 170
    .end local v10    # "spaceType":I
    .end local v11    # "tips":Ljava/lang/String;
    :cond_3
    const-string v0, "Download_CreateRunnable"

    const-string v1, "init : false"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v1, "\u89c6\u9891\u4e0d\u80fd\u7f13\u5b58\u63d0\u793a\u66dd\u5149"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u5267\u96c6\u70b9\u51fb\u6309\u94ae"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 176
    iget v0, p0, Lcom/tudou/service/download/FileCreateThread;->failCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tudou/service/download/FileCreateThread;->failCount:I

    .line 177
    sget-object v0, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    iget-object v1, v9, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    sget-object v0, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    iget-object v1, v9, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_4
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "video_id"

    iget-object v3, v9, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    invoke-direct {p0, v9}, Lcom/tudou/service/download/FileCreateThread;->showErrorTip(Lcom/tudou/service/download/DownloadInfo;)V

    .line 182
    invoke-virtual {v9}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/tudou/service/download/FileCreateThread;->successCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tudou/service/download/FileCreateThread;->failCount:I

    .line 184
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v6

    .line 186
    .local v6, "card":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/service/download/FileCreateThread;->hasMaryPaths:Z

    .line 188
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "handler_thread1"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 189
    .local v7, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 190
    new-instance v0, Lcom/tudou/service/download/FileCreateThread$1;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tudou/service/download/FileCreateThread$1;-><init>(Lcom/tudou/service/download/FileCreateThread;Landroid/os/Looper;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/service/download/FileCreateThread$1;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    .end local v6    # "card":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    .end local v7    # "ht":Landroid/os/HandlerThread;
    .end local v9    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v12    # "time":J
    :cond_5
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread;->download_temp_infos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tudou/service/download/DownloadInfo;

    .line 208
    .restart local v9    # "info":Lcom/tudou/service/download/DownloadInfo;
    sget-object v0, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    iget-object v1, v9, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 210
    .end local v9    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_6
    invoke-direct {p0}, Lcom/tudou/service/download/FileCreateThread;->over()V

    .line 211
    invoke-direct {p0}, Lcom/tudou/service/download/FileCreateThread;->less10MSpace()Z

    move-result v0

    if-nez v0, :cond_7

    .line 212
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "handler_thread2"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v7    # "ht":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 214
    new-instance v0, Lcom/tudou/service/download/FileCreateThread$2;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tudou/service/download/FileCreateThread$2;-><init>(Lcom/tudou/service/download/FileCreateThread;Landroid/os/Looper;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/service/download/FileCreateThread$2;->sendEmptyMessageDelayed(IJ)Z

    .line 221
    .end local v7    # "ht":Landroid/os/HandlerThread;
    :cond_7
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 222
    return-void

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
