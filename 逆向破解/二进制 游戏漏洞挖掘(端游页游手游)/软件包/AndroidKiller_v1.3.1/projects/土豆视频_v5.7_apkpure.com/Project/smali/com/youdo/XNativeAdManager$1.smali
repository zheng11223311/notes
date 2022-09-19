.class Lcom/youdo/XNativeAdManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/events/IXYDEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/XNativeAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/XNativeAdManager;


# direct methods
.method constructor <init>(Lcom/youdo/XNativeAdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_IN_PROGRESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    invoke-static {v0, v1}, Lcom/youdo/XNativeAdManager;->access$002(Lcom/youdo/XNativeAdManager;Lcom/youdo/XNativeAdManager$XNativeAdManagerState;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    move-object v0, p1

    check-cast v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;

    const-string v1, ""

    iget-object v4, v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->adInstance:Lcom/youdo/vo/XAdInstance;

    if-eqz v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isCompleted="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->success:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", ie="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->adInstance:Lcom/youdo/vo/XAdInstance;

    iget-object v4, v4, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", url="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->adInstance:Lcom/youdo/vo/XAdInstance;

    iget-object v4, v4, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v4, "XNativeAdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BATCH_JOB_STARTED"

    invoke-virtual {v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "XNativeAdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batchDownloadEventListener, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", set mAllowNativeAdServing as false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v1}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    const-string v1, "SINGLE_JOB_COMPLETED"

    invoke-virtual {v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->adInstance:Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v1}, Lcom/youdo/vo/XAdInstance;->getXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youdo/vo/XNativeAdResponse;->refreshFiltedAds()V

    :cond_2
    const-string v1, "BATCH_JOB_COMPLETED"

    invoke-virtual {v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "XNativeAdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batchDownloadEventListener, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", set mAllowNativeAdServing as false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v1}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v0, v0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    :goto_0
    invoke-static {v1, v0}, Lcom/youdo/XNativeAdManager;->access$002(Lcom/youdo/XNativeAdManager;Lcom/youdo/XNativeAdManager$XNativeAdManagerState;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$200(Lcom/youdo/XNativeAdManager;)Lcom/youdo/vo/XNativeAdResponsePackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->toTestNativeJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/JsonPrettyPrinter;->prettyPrintJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XNativeAdManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->WIFI:Lorg/openad/constants/IOpenAdContants$NetworkType;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v1, v1, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v1, v1, Lcom/youdo/XAdManagerContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/openad/common/util/Utils;->getNetworkTypeEnum(Landroid/content/Context;)Lorg/openad/constants/IOpenAdContants$NetworkType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "XNativeAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xcost batchDownloadEventListener isWIFI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/youdo/XNativeAdManager;->access$302(Lcom/youdo/XNativeAdManager;J)J

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$1;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youdo/XNativeAdManager;->access$400(Lcom/youdo/XNativeAdManager;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PENDING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method
