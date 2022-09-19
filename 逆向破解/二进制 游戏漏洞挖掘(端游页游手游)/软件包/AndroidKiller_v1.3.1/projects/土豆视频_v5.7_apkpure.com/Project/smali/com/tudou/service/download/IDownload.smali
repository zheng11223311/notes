.class public interface abstract Lcom/tudou/service/download/IDownload;
.super Ljava/lang/Object;
.source "IDownload.java"


# static fields
.field public static final ACTION_CACHE_ICON_INVISIBLE:Ljava/lang/String; = "com.tudou.download.CACHE_ICON_GONE"

.field public static final ACTION_CACHE_ICON_VISIBLE:Ljava/lang/String; = "com.tudou.download.CACHE_ICON_VISIBLE"

.field public static final ACTION_CREATE_DOWNLOAD_ALL_READY:Ljava/lang/String; = "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

.field public static final ACTION_CREATE_DOWNLOAD_ONE_FAILED:Ljava/lang/String; = "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_FAILED"

.field public static final ACTION_CREATE_DOWNLOAD_ONE_READY:Ljava/lang/String; = "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_READY"

.field public static final ACTION_DOWNLOAD_CLOSE_2G_3G:Ljava/lang/String; = "com.tudou.download.ACTION_DOWNLOAD_CLOSE_2g_3g"

.field public static final ACTION_DOWNLOAD_FINISH:Ljava/lang/String; = "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

.field public static final ACTION_DOWNLOAD_NEED_REFRESH:Ljava/lang/String; = "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

.field public static final ACTION_DOWNLOAD_OPEN_2G_3G:Ljava/lang/String; = "com.tudou.download.ACTION_DOWNLOAD_OPEN_2g_3g"

.field public static final ACTION_DOWNLOAD_SDCRAD:Ljava/lang/String; = "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

.field public static final ACTION_DOWNLOAD_STATE_CHANGE:Ljava/lang/String; = "com.tudou.service.download.ACTION_DOWNLOAD_STATE_CHANGE"

.field public static final ACTION_SDCARD_PATH_CHANGED:Ljava/lang/String; = "com.tudou.service.download.ACTION_SDCARD_PATH_CHANGED"

.field public static final BROAD_CAST_RECEIVER_KEY:Ljava/lang/String; = "video_id"

.field public static final FILE_NAME:Ljava/lang/String; = "info"

.field public static final FILE_PATH:Ljava/lang/String; = "/tudou/offlinedata/"

.field public static final KEY_CREATE_DOWNLOAD_IS_NEED_REFRESH:Ljava/lang/String; = "isNeedRefresh"

.field public static final KEY_LAST_NOTIFY_TASKID:Ljava/lang/String; = "download_last_notify_taskid"

.field public static final MAP_LOCK:Ljava/lang/Object;

.field public static final NOTIFY_ID:I = 0x1700

.field public static final POP_UP_SDCARD:Ljava/lang/String; = "pop_sdcard"

.field public static final THUMBNAIL_NAME:Ljava/lang/String; = "1.png"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tudou/service/download/IDownload;->MAP_LOCK:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract appExit()Z
.end method

.method public abstract canUse3GDownload()Z
.end method

.method public abstract canUseAcc()Z
.end method

.method public abstract deleteAllDownloading()Z
.end method

.method public abstract deleteArray([Ljava/lang/String;)Z
.end method

.method public abstract deleteDownloading(Ljava/lang/String;)Z
.end method

.method public abstract existsDownloadInfo(Ljava/lang/String;)Z
.end method

.method public abstract getAccPort()Ljava/lang/String;
.end method

.method public abstract getCurrentDownloadSDCardPath()Ljava/lang/String;
.end method

.method public abstract getDownloadCreating()Ljava/util/Map;
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
.end method

.method public abstract getDownloadFormat()I
.end method

.method public abstract getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;
.end method

.method public abstract getDownloadLanguage()I
.end method

.method public abstract getDownloadingData()Ljava/util/HashMap;
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
.end method

.method public abstract getDownloadings(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract isDownloadFinished(Ljava/lang/String;)Z
.end method

.method public abstract noDisturb()Z
.end method

.method public abstract pauseAllTask(Z)V
.end method

.method public abstract pauseDownload(Ljava/lang/String;)V
.end method

.method public abstract refresh()V
.end method

.method public abstract setAppExit(Z)V
.end method

.method public abstract setCanUse3GDownload(Z)V
.end method

.method public abstract setCurrentDownloadSDCardPath(Ljava/lang/String;)V
.end method

.method public abstract setDownloadFormat(I)V
.end method

.method public abstract setDownloadLanguage(I)V
.end method

.method public abstract setNoDisturb(Z)V
.end method

.method public abstract setP2p_switch(I)V
.end method

.method public abstract startAllTask()V
.end method

.method public abstract startDownload(Ljava/lang/String;)V
.end method

.method public abstract startNewTask()V
.end method

.method public abstract stopAllTask()V
.end method
