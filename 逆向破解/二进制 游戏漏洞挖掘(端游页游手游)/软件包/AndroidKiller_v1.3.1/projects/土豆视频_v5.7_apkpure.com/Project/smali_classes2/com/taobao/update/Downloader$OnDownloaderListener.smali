.class public interface abstract Lcom/taobao/update/Downloader$OnDownloaderListener;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/update/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloaderListener"
.end annotation


# static fields
.field public static final ERROR_NOT_ENOUGH_SPACE:I = -0x2

.field public static final ERROR_NOT_ENOUGH_SPACE_STR:Ljava/lang/String; = "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3"


# virtual methods
.method public abstract onDownloadError(ILjava/lang/String;)V
.end method

.method public abstract onDownloadFinsh(Ljava/lang/String;)V
.end method

.method public abstract onDownloadProgress(I)V
.end method
