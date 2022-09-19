.class public Lcom/youdo/proxy/XAPIAdServerProxy;
.super Lcom/youdo/proxy/XBasicAPIAdServerProxy;

# interfaces
.implements Lcom/youdo/proxy/IXHttpRequestProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "APIAdServerProxy"


# instance fields
.field private listener:Lorg/openad/events/IXYDEventListener;

.field private loader:Lorg/openad/common/net/XYDURLLoader;


# direct methods
.method public constructor <init>(Lcom/youdo/XAdManagerContext;Ljava/lang/String;Lorg/openad/constants/IOpenAdContants$AdSlotType;Ljava/lang/String;Ljava/lang/String;Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;)V
    .locals 3

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/youdo/proxy/XBasicAPIAdServerProxy;-><init>(Lcom/youdo/XAdManagerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/youdo/proxy/XAPIAdServerProxy$1;

    invoke-direct {v0, p0}, Lcom/youdo/proxy/XAPIAdServerProxy$1;-><init>(Lcom/youdo/proxy/XAPIAdServerProxy;)V

    iput-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->listener:Lorg/openad/events/IXYDEventListener;

    iput-object p6, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mHttpRequestParameter:Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;

    const-string v0, ""

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mockFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v1, v1, Lcom/youdo/XAdManagerContext;->mockFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://211.151.146.65:8080/wlantest/shanghai_sun/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mHttpRequestParameter:Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;

    invoke-virtual {v1}, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    :cond_0
    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->prerollMockAdServer:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->prerollMockAdServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    :cond_1
    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->DISPLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->displayMockAdServer:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->displayMockAdServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    :cond_2
    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->pauserollMockAdServer:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdManagerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->pauserollMockAdServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mHttpRequestParameter:Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;

    invoke-virtual {v1}, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->toObject()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/openad/common/util/URIUtil;->addParameters(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    const-string v0, "APIAdServerProxy"

    iget-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->loader:Lorg/openad/common/net/XYDURLLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->loader:Lorg/openad/common/net/XYDURLLoader;

    invoke-virtual {v0}, Lorg/openad/common/net/XYDURLLoader;->removeAllListeners()V

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->loader:Lorg/openad/common/net/XYDURLLoader;

    invoke-virtual {v0}, Lorg/openad/common/net/XYDURLLoader;->close()V

    :cond_0
    return-void
.end method

.method public request()V
    .locals 4

    new-instance v0, Lorg/openad/common/net/XYDURLRequest;

    iget-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->mAdServerURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/openad/common/net/XYDURLRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/openad/common/net/XYDURLLoader;

    invoke-direct {v1}, Lorg/openad/common/net/XYDURLLoader;-><init>()V

    iput-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->loader:Lorg/openad/common/net/XYDURLLoader;

    iget-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->loader:Lorg/openad/common/net/XYDURLLoader;

    const-string v2, "URLLoader.Load.Complete"

    iget-object v3, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->listener:Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v1, v2, v3}, Lorg/openad/common/net/XYDURLLoader;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->loader:Lorg/openad/common/net/XYDURLLoader;

    const-string v2, "URLLoader.Load.Error"

    iget-object v3, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->listener:Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v1, v2, v3}, Lorg/openad/common/net/XYDURLLoader;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v1, p0, Lcom/youdo/proxy/XAPIAdServerProxy;->loader:Lorg/openad/common/net/XYDURLLoader;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {v1, v0, v2, v3}, Lorg/openad/common/net/XYDURLLoader;->load(Lorg/openad/common/net/XYDURLRequest;D)V

    return-void
.end method
