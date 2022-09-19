.class Lcom/youdo/XNativeAdManager$3;
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

    iput-object p1, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p1, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;

    invoke-virtual {p1}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    const-string v0, "EVENT_BATCH_REQUEST_START"

    invoke-virtual {p1}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "XNativeAdManager"

    const-string v1, "batchAPIProxyASRequestListener EVENT_BATCH_REQUEST_START set mAllowNativeAdServing as true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUESTING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    invoke-static {v0, v1}, Lcom/youdo/XNativeAdManager;->access$002(Lcom/youdo/XNativeAdManager;Lcom/youdo/XNativeAdManager$XNativeAdManagerState;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    :cond_0
    const-string v0, "EVENT_BATCH_REQUEST_DONE"

    invoke-virtual {p1}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v0, p1, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUEST_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    :goto_0
    invoke-static {v1, v0}, Lcom/youdo/XNativeAdManager;->access$002(Lcom/youdo/XNativeAdManager;Lcom/youdo/XNativeAdManager$XNativeAdManagerState;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$000(Lcom/youdo/XNativeAdManager;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    move-result-object v0

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUEST_ERROR:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-ne v0, v1, :cond_3

    const-string v0, "XNativeAdManager"

    const-string v1, "batchAPIProxyASRequestListener REQUEST_ERROR set mAllowNativeAdServing as true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "NATIVE_AD_SERVER_START_SUCCESS"

    invoke-direct {v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/youdo/XNativeAdManager;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUEST_ERROR:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;->isHttpRequestingFired:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$700(Lcom/youdo/XNativeAdManager;)Lorg/openad/controller/BasicNetworkController;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    new-instance v1, Lorg/openad/controller/BasicNetworkController;

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v2, v2, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v2, v2, Lcom/youdo/XAdManagerContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/openad/controller/BasicNetworkController;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/youdo/XNativeAdManager;->access$702(Lcom/youdo/XNativeAdManager;Lorg/openad/controller/BasicNetworkController;)Lorg/openad/controller/BasicNetworkController;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$700(Lcom/youdo/XNativeAdManager;)Lorg/openad/controller/BasicNetworkController;

    move-result-object v0

    new-instance v1, Lorg/openad/controller/BasicNetworkBroadcastReceiver;

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v2}, Lcom/youdo/XNativeAdManager;->access$700(Lcom/youdo/XNativeAdManager;)Lorg/openad/controller/BasicNetworkController;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/openad/controller/BasicNetworkBroadcastReceiver;-><init>(Lorg/openad/controller/BasicNetworkController;)V

    invoke-virtual {v0, v1}, Lorg/openad/controller/BasicNetworkController;->setNetworkBroadcastReceiver(Lorg/openad/controller/BasicNetworkBroadcastReceiver;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$700(Lcom/youdo/XNativeAdManager;)Lorg/openad/controller/BasicNetworkController;

    move-result-object v0

    const-string v1, "NetworkChanged"

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v2}, Lcom/youdo/XNativeAdManager;->access$800(Lcom/youdo/XNativeAdManager;)Lorg/openad/events/IXYDEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openad/controller/BasicNetworkController;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$700(Lcom/youdo/XNativeAdManager;)Lorg/openad/controller/BasicNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openad/controller/BasicNetworkController;->startNetworkListener()V

    :cond_4
    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v0, v0, Lcom/youdo/XNativeAdManager;->mAdUpdateIndictor:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

    invoke-virtual {v0}, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->refershCachingTimestamp()V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_START:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    invoke-static {v0, v1}, Lcom/youdo/XNativeAdManager;->access$002(Lcom/youdo/XNativeAdManager;Lcom/youdo/XNativeAdManager$XNativeAdManagerState;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youdo/XNativeAdManager;->access$400(Lcom/youdo/XNativeAdManager;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    new-instance v1, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v2, v2, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v2, v2, Lcom/youdo/XAdManagerContext;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v3}, Lcom/youdo/XNativeAdManager;->access$200(Lcom/youdo/XNativeAdManager;)Lcom/youdo/vo/XNativeAdResponsePackage;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;-><init>(Landroid/content/Context;Lcom/youdo/vo/XNativeAdResponsePackage;)V

    invoke-static {v0, v1}, Lcom/youdo/XNativeAdManager;->access$902(Lcom/youdo/XNativeAdManager;Lcom/youdo/download/XBatchAdCreativeAssetDownloader;)Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$900(Lcom/youdo/XNativeAdManager;)Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    move-result-object v0

    const-string v1, "BATCH_JOB_STARTED"

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v2}, Lcom/youdo/XNativeAdManager;->access$1000(Lcom/youdo/XNativeAdManager;)Lorg/openad/events/IXYDEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$900(Lcom/youdo/XNativeAdManager;)Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    move-result-object v0

    const-string v1, "SINGLE_JOB_COMPLETED"

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v2}, Lcom/youdo/XNativeAdManager;->access$1000(Lcom/youdo/XNativeAdManager;)Lorg/openad/events/IXYDEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$900(Lcom/youdo/XNativeAdManager;)Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    move-result-object v0

    const-string v1, "BATCH_JOB_COMPLETED"

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v2}, Lcom/youdo/XNativeAdManager;->access$1000(Lcom/youdo/XNativeAdManager;)Lorg/openad/events/IXYDEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$1100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$900(Lcom/youdo/XNativeAdManager;)Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->resume()V

    goto/16 :goto_1

    :cond_5
    const-string v0, "XNativeAdManager"

    const-string v1, "batchAPIProxyASRequestListener HttpRequestingFired not fired, set mAllowNativeAdServing as true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$3;->this$0:Lcom/youdo/XNativeAdManager;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "NATIVE_AD_SERVER_START_SUCCESS"

    invoke-direct {v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/youdo/XNativeAdManager;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto/16 :goto_1
.end method
