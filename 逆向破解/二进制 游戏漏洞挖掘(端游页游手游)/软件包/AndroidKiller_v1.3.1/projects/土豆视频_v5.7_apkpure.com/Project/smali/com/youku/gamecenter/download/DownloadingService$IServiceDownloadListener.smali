.class interface abstract Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;
.super Ljava/lang/Object;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IServiceDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V
.end method

.method public abstract onDownloadFailed(ILjava/lang/Exception;)V
.end method

.method public abstract onDownloadPending(Lcom/youku/gamecenter/download/DownloadInfo;)V
.end method

.method public abstract onDownloadStart(Lcom/youku/gamecenter/download/DownloadInfo;)V
.end method

.method public abstract onProgressUpdate(Lcom/youku/gamecenter/download/DownloadInfo;)V
.end method
