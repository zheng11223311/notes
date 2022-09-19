.class public abstract Lorg/openad/download/Downloader$DownloadThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/download/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "DownloadThread"
.end annotation


# instance fields
.field protected mEndByte:I

.field protected mIsFinished:Z

.field protected mOutputFile:Ljava/lang/String;

.field protected mStartByte:I

.field protected mThread:Ljava/lang/Thread;

.field protected mThreadID:I

.field protected mURL:Ljava/net/URL;

.field final synthetic this$0:Lorg/openad/download/Downloader;


# direct methods
.method public constructor <init>(Lorg/openad/download/Downloader;ILjava/net/URL;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lorg/openad/download/Downloader$DownloadThread;->this$0:Lorg/openad/download/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/openad/download/Downloader$DownloadThread;->mThreadID:I

    iput-object p3, p0, Lorg/openad/download/Downloader$DownloadThread;->mURL:Ljava/net/URL;

    iput-object p4, p0, Lorg/openad/download/Downloader$DownloadThread;->mOutputFile:Ljava/lang/String;

    iput p5, p0, Lorg/openad/download/Downloader$DownloadThread;->mStartByte:I

    iput p6, p0, Lorg/openad/download/Downloader$DownloadThread;->mEndByte:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openad/download/Downloader$DownloadThread;->mIsFinished:Z

    invoke-virtual {p0}, Lorg/openad/download/Downloader$DownloadThread;->download()V

    return-void
.end method


# virtual methods
.method public download()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/openad/download/Downloader$DownloadThread;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/openad/download/Downloader$DownloadThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openad/download/Downloader$DownloadThread;->mIsFinished:Z

    return v0
.end method

.method public waitFinish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openad/download/Downloader$DownloadThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method
