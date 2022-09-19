.class Lcom/youdo/XNativeAdManager$2;
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

    iput-object p1, p0, Lcom/youdo/XNativeAdManager$2;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 3

    check-cast p1, Lorg/openad/events/OpenAdNetworkEvent;

    invoke-virtual {p1}, Lorg/openad/events/OpenAdNetworkEvent;->getNetworkType()Lorg/openad/constants/IOpenAdContants$NetworkType;

    move-result-object v0

    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youdo/XNativeAdManager;->getState()Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    move-result-object v1

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->WIFI:Lorg/openad/constants/IOpenAdContants$NetworkType;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PENDING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PAUSED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$500(Lcom/youdo/XNativeAdManager;)Ljava/lang/Boolean;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PENDING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$600(Lcom/youdo/XNativeAdManager;)Ljava/lang/Boolean;

    goto :goto_0
.end method
