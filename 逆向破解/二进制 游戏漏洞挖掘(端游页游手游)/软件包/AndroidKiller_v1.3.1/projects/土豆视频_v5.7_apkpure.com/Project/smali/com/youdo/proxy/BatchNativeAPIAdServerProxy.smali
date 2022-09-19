.class public Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;
.super Lcom/youdo/proxy/XBasicAPIAdServerProxy;

# interfaces
.implements Lcom/youdo/proxy/IXHttpRequestProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatchNativeAPIAdServerProxy"


# instance fields
.field private apiASProxyEVTListener:Lorg/openad/events/IXYDEventListener;

.field private failedRequestNum:I

.field private mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/proxy/XAPIAdServerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private relovedRequestNum:I


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XNativeAdResponsePackage;Lcom/youdo/XAdManagerContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/youdo/proxy/XBasicAPIAdServerProxy;-><init>(Lcom/youdo/XAdManagerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->relovedRequestNum:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->proxies:Ljava/util/List;

    iput v1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->failedRequestNum:I

    new-instance v0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;

    invoke-direct {v0, p0}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;-><init>(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)V

    iput-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->apiASProxyEVTListener:Lorg/openad/events/IXYDEventListener;

    iput-object p1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    return-void
.end method

.method static synthetic access$000(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)Lcom/youdo/vo/XNativeAdResponsePackage;
    .locals 1

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)I
    .locals 1

    iget v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->failedRequestNum:I

    return v0
.end method

.method static synthetic access$112(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;I)I
    .locals 1

    iget v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->failedRequestNum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->failedRequestNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)I
    .locals 1

    iget v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->relovedRequestNum:I

    return v0
.end method

.method static synthetic access$212(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;I)I
    .locals 1

    iget v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->relovedRequestNum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->relovedRequestNum:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->proxies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->proxies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/proxy/XAPIAdServerProxy;

    invoke-virtual {v0}, Lcom/youdo/proxy/XAPIAdServerProxy;->removeAllListeners()V

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->proxies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/proxy/XAPIAdServerProxy;

    invoke-virtual {v0}, Lcom/youdo/proxy/XAPIAdServerProxy;->cancel()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public request()V
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/openad/common/util/Utils;->getMraidNetworkType(Landroid/content/Context;)Lorg/openad/constants/IOpenAdContants$MraidNetworkType;

    move-result-object v0

    sget-object v2, Lorg/openad/constants/IOpenAdContants$MraidNetworkType;->MRAID_WIFI:Lorg/openad/constants/IOpenAdContants$MraidNetworkType;

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;

    const-string v2, "EVENT_BATCH_REQUEST_DONE"

    const-string v3, ""

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;-><init>(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;

    const-string v2, "EVENT_BATCH_REQUEST_START"

    const-string v3, ""

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;-><init>(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    move v7, v1

    :goto_0
    sget-object v0, Lcom/youdo/XNativeAdManager;->SUPPORTED_AD_SLOT_TYPES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    sget-object v0, Lcom/youdo/XNativeAdManager;->SUPPORTED_AD_SLOT_TYPES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aget-object v0, v0, v7

    new-instance v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;

    iget-object v1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v2, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v2, v2, Lcom/youdo/XAdManagerContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v6, v1, v2, v0}, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;-><init>(Lcom/youdo/XAdManagerContext;Landroid/content/Context;Lorg/openad/constants/IOpenAdContants$AdSlotType;)V

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mOpenUDID:Ljava/lang/String;

    iput-object v0, v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->mOpenUDID:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->rst:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->rst:Ljava/lang/String;

    :goto_1
    iput-object v0, v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->rst:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->avs:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->avs:Ljava/lang/String;

    :goto_2
    iput-object v0, v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->avs:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->site:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->site:Ljava/lang/String;

    :goto_3
    iput-object v0, v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->site:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->pid:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->pid:Ljava/lang/String;

    :goto_4
    iput-object v0, v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->pid:Ljava/lang/String;

    new-instance v0, Lcom/youdo/proxy/XAPIAdServerProxy;

    iget-object v1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    invoke-virtual {v6}, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v3

    iget-object v4, p0, Lcom/youdo/proxy/XBasicAPIAdServerProxy;->userAgent:Ljava/lang/String;

    iget-object v5, p0, Lcom/youdo/proxy/XBasicAPIAdServerProxy;->cookie:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/youdo/proxy/XAPIAdServerProxy;-><init>(Lcom/youdo/XAdManagerContext;Ljava/lang/String;Lorg/openad/constants/IOpenAdContants$AdSlotType;Ljava/lang/String;Ljava/lang/String;Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;)V

    const-string v1, "complete"

    iget-object v2, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->apiASProxyEVTListener:Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/youdo/proxy/XAPIAdServerProxy;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    const-string v1, "error"

    iget-object v2, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->apiASProxyEVTListener:Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/youdo/proxy/XAPIAdServerProxy;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    invoke-virtual {v0}, Lcom/youdo/proxy/XAPIAdServerProxy;->request()V

    iget-object v1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->proxies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    iget-object v0, v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->rst:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    iget-object v0, v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->site:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v0, v6, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->pid:Ljava/lang/String;

    goto :goto_4
.end method
