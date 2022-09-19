.class public interface abstract Lcom/youku/player/apiservice/ICacheInfo;
.super Ljava/lang/Object;
.source "ICacheInfo.java"


# virtual methods
.method public abstract afresh()V
.end method

.method public abstract getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;
.end method

.method public abstract getDownloadInfo(Ljava/lang/String;I)Lcom/youku/player/module/VideoCacheInfo;
.end method

.method public abstract getNextDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;
.end method

.method public abstract isDownloadFinished(Ljava/lang/String;)Z
.end method

.method public abstract makeDownloadInfoFile(Lcom/youku/player/module/VideoCacheInfo;)V
.end method

.method public abstract startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/youku/player/apiservice/IStartCacheCallBack;)V
.end method

.method public abstract startCache([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILcom/youku/player/apiservice/IStartCacheCallBack;)V
.end method
