.class public abstract Lorg/openad/download/Downloader;
.super Ljava/util/Observable;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openad/download/Downloader$DownloadThread;
    }
.end annotation


# static fields
.field protected static final BLOCK_SIZE:I = 0x1000

.field protected static final BUFFER_SIZE:I = 0x1000

.field public static final CANCELLED:I = 0x3

.field public static final COMPLETED:I = 0x2

.field public static final DOWNLOADING:I = 0x0

.field public static final ERROR:I = 0x4

.field protected static final MIN_DOWNLOAD_SIZE:I = 0x190000

.field public static final PAUSED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Downloader"


# instance fields
.field protected mDownloaded:I

.field protected mFileName:Ljava/lang/String;

.field protected mFileSize:I

.field protected mListDownloadThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/openad/download/Downloader$DownloadThread;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumConnections:I

.field protected mOutputFolder:Ljava/lang/String;

.field protected mProgress:I

.field protected mState:I

.field protected final mSupportResumeFromBreakPoint:Ljava/lang/Boolean;

.field protected mURL:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput-object p1, p0, Lorg/openad/download/Downloader;->mURL:Ljava/net/URL;

    iput-object p2, p0, Lorg/openad/download/Downloader;->mOutputFolder:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput p3, p0, Lorg/openad/download/Downloader;->mNumConnections:I

    iput-object p4, p0, Lorg/openad/download/Downloader;->mSupportResumeFromBreakPoint:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openad/download/Downloader;->mFileName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/openad/download/Downloader;->mFileSize:I

    iput v2, p0, Lorg/openad/download/Downloader;->mState:I

    iput v2, p0, Lorg/openad/download/Downloader;->mDownloaded:I

    iput v2, p0, Lorg/openad/download/Downloader;->mProgress:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openad/download/Downloader;->mListDownloadThread:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/openad/download/Downloader;->setState(I)V

    return-void
.end method

.method protected download()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected declared-synchronized downloaded(IF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/openad/download/Downloader;->mDownloaded:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/openad/download/Downloader;->mDownloaded:I

    invoke-virtual {p0}, Lorg/openad/download/Downloader;->stateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lorg/openad/download/Downloader;->mFileSize:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    iget v0, p0, Lorg/openad/download/Downloader;->mDownloaded:I

    int-to-float v0, v0

    iget v1, p0, Lorg/openad/download/Downloader;->mFileSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lorg/openad/download/Downloader;->mState:I

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/download/Downloader;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openad/download/Downloader;->setState(I)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openad/download/Downloader;->setState(I)V

    invoke-virtual {p0}, Lorg/openad/download/Downloader;->download()V

    return-void
.end method

.method protected setState(I)V
    .locals 0

    iput p1, p0, Lorg/openad/download/Downloader;->mState:I

    invoke-virtual {p0}, Lorg/openad/download/Downloader;->stateChanged()V

    return-void
.end method

.method protected stateChanged()V
    .locals 0

    invoke-virtual {p0}, Lorg/openad/download/Downloader;->setChanged()V

    invoke-virtual {p0}, Lorg/openad/download/Downloader;->notifyObservers()V

    return-void
.end method
