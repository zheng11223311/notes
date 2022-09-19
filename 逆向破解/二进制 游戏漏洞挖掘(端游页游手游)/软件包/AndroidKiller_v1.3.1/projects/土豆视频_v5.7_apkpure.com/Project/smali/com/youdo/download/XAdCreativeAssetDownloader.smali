.class public Lcom/youdo/download/XAdCreativeAssetDownloader;
.super Lorg/openad/events/XYDEventDispatcher;

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/openad/events/IXYDEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;
    }
.end annotation


# static fields
.field public static final CANCELLED:I = 0x3

.field public static final COMPLETED:I = 0x2

.field public static final DOWNLOADING:I = 0x0

.field public static final ERROR:I = 0x4

.field public static final PAUSED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XAdCreativeAssetDownloader"


# instance fields
.field private mAdInstance:Lcom/youdo/vo/XAdInstance;

.field private mDownloader:Lorg/openad/download/Downloader;


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XAdInstance;)V
    .locals 0

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    return-void
.end method

.method private calculateConnectionNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private doDownload(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x2f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    iget-object v1, v1, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    iget-object v2, v2, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    iget-object v2, v2, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    iget-object v3, v3, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v3}, Lcom/youdo/vo/XAdInstance;->getXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->isLinear()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v3}, Lcom/youdo/vo/XAdInstance;->getCreativeType()Lorg/openad/constants/IOpenAdContants$CreativeType;

    move-result-object v3

    sget-object v4, Lorg/openad/constants/IOpenAdContants$CreativeType;->VIDEO:Lorg/openad/constants/IOpenAdContants$CreativeType;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lorg/openad/download/DownloadManager;->getInstance()Lorg/openad/download/DownloadManager;

    move-result-object v3

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/openad/download/DownloadManager;->createDownload(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lorg/openad/download/Downloader;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mDownloader:Lorg/openad/download/Downloader;

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mDownloader:Lorg/openad/download/Downloader;

    invoke-virtual {v0, p0}, Lorg/openad/download/Downloader;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mDownloader:Lorg/openad/download/Downloader;

    invoke-virtual {v0}, Lorg/openad/download/Downloader;->resume()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "XAdCreativeAssetDownloader"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;

    const-string v1, "error"

    iget-object v2, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    invoke-direct {v0, p0, v1, v2}, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;-><init>(Lcom/youdo/download/XAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    invoke-virtual {p0, v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->getDownloader()Lorg/openad/download/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mDownloader:Lorg/openad/download/Downloader;

    invoke-virtual {v0}, Lorg/openad/download/Downloader;->cancel()V

    :cond_0
    return-void
.end method

.method public getDownloader()Lorg/openad/download/Downloader;
    .locals 1

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mDownloader:Lorg/openad/download/Downloader;

    return-object v0
.end method

.method public getState()I
    .locals 1

    invoke-virtual {p0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->getDownloader()Lorg/openad/download/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mDownloader:Lorg/openad/download/Downloader;

    invoke-virtual {v0}, Lorg/openad/download/Downloader;->getState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getXAdInstance()Lcom/youdo/vo/XAdInstance;
    .locals 1

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    return-object v0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->getDownloader()Lorg/openad/download/Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mDownloader:Lorg/openad/download/Downloader;

    invoke-virtual {v0}, Lorg/openad/download/Downloader;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-static {}, Lorg/openad/download/DownloadManager;->getInstance()Lorg/openad/download/DownloadManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->calculateConnectionNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openad/download/DownloadManager;->setConnectionNumOfPerDownload(I)V

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    iget-object v0, v0, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->doDownload(Ljava/lang/String;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lorg/openad/download/Downloader;

    iget-object v0, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    invoke-virtual {p1}, Lorg/openad/download/Downloader;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youdo/vo/XAdInstance;->setCreativeCachedPercent(F)V

    invoke-virtual {p1}, Lorg/openad/download/Downloader;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "XAdCreativeAssetDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COMPLETED, getProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openad/download/Downloader;->getProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;

    const-string v1, "complete"

    iget-object v2, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    invoke-direct {v0, p0, v1, v2}, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;-><init>(Lcom/youdo/download/XAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    invoke-virtual {p0, v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_0
    invoke-virtual {p1}, Lorg/openad/download/Downloader;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "XAdCreativeAssetDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, getProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openad/download/Downloader;->getProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;

    const-string v1, "error"

    iget-object v2, p0, Lcom/youdo/download/XAdCreativeAssetDownloader;->mAdInstance:Lcom/youdo/vo/XAdInstance;

    invoke-direct {v0, p0, v1, v2}, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;-><init>(Lcom/youdo/download/XAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    invoke-virtual {p0, v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_1
    return-void
.end method
