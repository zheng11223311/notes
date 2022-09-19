.class public Lcom/youdo/download/XBatchAdCreativeAssetDownloader;
.super Lorg/openad/events/XYDEventDispatcher;

# interfaces
.implements Lorg/openad/events/IXYDEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XBatchAdCreativeAssetDownloader"


# instance fields
.field downloadEventListener:Lorg/openad/events/IXYDEventListener;

.field private failedJobNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCreativeDownloaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/download/XAdCreativeAssetDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

.field private reslovedDownloadingNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youdo/vo/XNativeAdResponsePackage;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->reslovedDownloadingNum:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$1;

    invoke-direct {v1, p0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$1;-><init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;)V

    iput-object v1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->downloadEventListener:Lorg/openad/events/IXYDEventListener;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->failedJobNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    iget-object v1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-virtual {v1}, Lcom/youdo/vo/XNativeAdResponsePackage;->getAllXAds()Ljava/util/List;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    new-instance v3, Lcom/youdo/download/XAdCreativeAssetDownloader;

    invoke-direct {v3, v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;-><init>(Lcom/youdo/vo/XAdInstance;)V

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->handleDownloadingResloved(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    return-void
.end method

.method private handleDownloadingResloved(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V
    .locals 4

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->reslovedDownloadingNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p2}, Lcom/youdo/vo/XAdInstance;->isCreativeAssetCompletelyCached()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->failedJobNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    new-instance v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;

    const-string v1, "SINGLE_JOB_COMPLETED"

    invoke-virtual {p2}, Lcom/youdo/vo/XAdInstance;->isCreativeAssetCompletelyCached()Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;-><init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    const-string v0, "XBatchAdCreativeAssetDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloaded/total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->reslovedDownloadingNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->reslovedDownloadingNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    new-instance v1, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;

    const-string v2, "BATCH_JOB_COMPLETED"

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->failedJobNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;-><init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/download/XAdCreativeAssetDownloader;

    invoke-virtual {v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->cancel()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/download/XAdCreativeAssetDownloader;

    invoke-virtual {v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->pause()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->reslovedDownloadingNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->failedJobNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;

    const-string v1, "BATCH_JOB_STARTED"

    invoke-direct {v0, p0, v1}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;-><init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->mCreativeDownloaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/download/XAdCreativeAssetDownloader;

    invoke-virtual {v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->getXAdInstance()Lcom/youdo/vo/XAdInstance;

    move-result-object v5

    iget-object v3, v5, Lcom/youdo/vo/XAdInstance;->shouldUpdateCreativeAsset:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v5}, Lcom/youdo/vo/XAdInstance;->isCreativeAssetCompletelyCached()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "XBatchAdCreativeAssetDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shouldUpdateCreative="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ie="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->removeAllListeners()V

    const-string v3, "complete"

    iget-object v5, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->downloadEventListener:Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v0, v3, v5}, Lcom/youdo/download/XAdCreativeAssetDownloader;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    const-string v3, "error"

    iget-object v5, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->downloadEventListener:Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v0, v3, v5}, Lcom/youdo/download/XAdCreativeAssetDownloader;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    invoke-virtual {v0}, Lcom/youdo/download/XAdCreativeAssetDownloader;->resume()V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    const-string v0, "complete"

    invoke-direct {p0, v0, v5}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->handleDownloadingResloved(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;

    const-string v1, "BATCH_JOB_COMPLETED"

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;-><init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_4
    return-void
.end method
