.class public interface abstract Lcom/taobao/update/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/update/Downloader$OnDownloaderListener;
    }
.end annotation


# virtual methods
.method public abstract cancelDownload()V
.end method

.method public abstract download(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setListener(Lcom/taobao/update/Downloader$OnDownloaderListener;)V
.end method
