.class public interface abstract Lcom/youku/laifeng/libcuteroom/model/download/IDownload;
.super Ljava/lang/Object;
.source "IDownload.java"


# virtual methods
.method public varargs abstract addTask(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;[Ljava/lang/String;)Z
.end method

.method public abstract getTaskSize()I
.end method

.method public abstract isActive(Ljava/lang/String;)Z
.end method

.method public abstract isDownloading(Ljava/lang/String;)Z
.end method

.method public abstract removeAll()V
.end method

.method public abstract removeTask(Ljava/lang/String;)V
.end method
