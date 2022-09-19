.class Lcom/youdo/XNativeAdManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/XNativeAdManager;->startNativeAdServer()V
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

    iput-object p1, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v0, v0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/openad/common/util/FileUtils;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$1200(Lcom/youdo/XNativeAdManager;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$1300(Lcom/youdo/XNativeAdManager;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v0, v0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/openad/common/util/FileSystemUtils;->getSDCardFSDesByPath(Ljava/lang/String;)Lorg/openad/common/util/XFSDescriptor;

    move-result-object v0

    iget v0, v0, Lorg/openad/common/util/XFSDescriptor;->freeSize:I

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v1, v1, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v1, v1, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/openad/common/util/FileUtils;->calculateSubFiles(Ljava/lang/String;)I

    const-string v1, "XNativeAdManager"

    const-string/jumbo v2, "startNativeAdServer, before fire NATIVE_AD_SERVER_START_SUCCESS, set mAllowNativeAdServing as true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v1}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_STARTED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    invoke-static {v1, v2}, Lcom/youdo/XNativeAdManager;->access$002(Lcom/youdo/XNativeAdManager;Lcom/youdo/XNativeAdManager$XNativeAdManagerState;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v1}, Lcom/youdo/XNativeAdManager;->access$200(Lcom/youdo/XNativeAdManager;)Lcom/youdo/vo/XNativeAdResponsePackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youdo/vo/XNativeAdResponsePackage;->getCachedVideoAdCreativeAsset()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v2, v2, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget v2, v2, Lcom/youdo/XAdManagerContext;->mock_MAX_NATIVE_VIDEO_AD_NUM:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v1, v1, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget v1, v1, Lcom/youdo/XAdManagerContext;->mock_MIN_FREE_SIZE:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$1400(Lcom/youdo/XNativeAdManager;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "XNativeAdManager"

    const-string/jumbo v1, "startNativeAdServer, no enough free space or out of max_native_video_ad_num, set mAllowNativeAdServing as true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$5;->this$0:Lcom/youdo/XNativeAdManager;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "NATIVE_AD_SERVER_START_SUCCESS"

    invoke-direct {v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/youdo/XNativeAdManager;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0
.end method
