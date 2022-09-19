.class public Lcom/taobao/update/DefaultDownloader;
.super Ljava/lang/Object;
.source "DefaultDownloader.java"

# interfaces
.implements Lcom/taobao/update/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/update/DefaultDownloader$DownloadTask;
    }
.end annotation


# static fields
.field public static final ERROR_IO:I = -0x6

.field public static final ERROR_NETWORK:I = -0x7

.field public static final ERROR_NO_NETWORK:I = -0x3

.field public static final ERROR_NO_SD_CARD:I = -0x4

.field public static final ERROR_URL:I = -0x5

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".download"


# instance fields
.field private final BUFFER_SIZE:I

.field private final DOWNLOAD_NOT_STARTED:I

.field private final DOWNLOAD_SUCCESS:I

.field private final FOR_ENOUGH_SAPCE:J

.field private mContext:Landroid/content/Context;

.field private mDownloadTask:Lcom/taobao/update/DefaultDownloader$DownloadTask;

.field private mListener:Lcom/taobao/update/Downloader$OnDownloaderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x2000

    iput v0, p0, Lcom/taobao/update/DefaultDownloader;->BUFFER_SIZE:I

    .line 31
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/taobao/update/DefaultDownloader;->FOR_ENOUGH_SAPCE:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/update/DefaultDownloader;->DOWNLOAD_NOT_STARTED:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/update/DefaultDownloader;->DOWNLOAD_SUCCESS:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/update/DefaultDownloader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/update/DefaultDownloader;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/taobao/update/DefaultDownloader;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/taobao/update/DefaultDownloader;)Lcom/taobao/update/Downloader$OnDownloaderListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/update/DefaultDownloader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mListener:Lcom/taobao/update/Downloader$OnDownloaderListener;

    return-object v0
.end method

.method private isNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 379
    iget-object v4, p0, Lcom/taobao/update/DefaultDownloader;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 381
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v3

    .line 384
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 385
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 387
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3

    .line 389
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 386
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "DefaultDownloader"

    const-string v1, "cancel download"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mDownloadTask:Lcom/taobao/update/DefaultDownloader$DownloadTask;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mDownloadTask:Lcom/taobao/update/DefaultDownloader$DownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->cancelDownload(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mDownloadTask:Lcom/taobao/update/DefaultDownloader$DownloadTask;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mDownloadTask:Lcom/taobao/update/DefaultDownloader$DownloadTask;

    invoke-virtual {v0, v2}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->cancel(Z)Z

    .line 62
    :cond_0
    new-instance v0, Lcom/taobao/update/DefaultDownloader$DownloadTask;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/taobao/update/DefaultDownloader$DownloadTask;-><init>(Lcom/taobao/update/DefaultDownloader;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mDownloadTask:Lcom/taobao/update/DefaultDownloader$DownloadTask;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mDownloadTask:Lcom/taobao/update/DefaultDownloader$DownloadTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/taobao/update/DefaultDownloader;->mDownloadTask:Lcom/taobao/update/DefaultDownloader$DownloadTask;

    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/taobao/update/DefaultDownloader$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setListener(Lcom/taobao/update/Downloader$OnDownloaderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/update/Downloader$OnDownloaderListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/taobao/update/DefaultDownloader;->mListener:Lcom/taobao/update/Downloader$OnDownloaderListener;

    .line 74
    return-void
.end method
