.class Lcom/youdo/proxy/XAPIAdServerProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/events/IXYDEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/proxy/XAPIAdServerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/proxy/XAPIAdServerProxy;


# direct methods
.method constructor <init>(Lcom/youdo/proxy/XAPIAdServerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/proxy/XAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/XAPIAdServerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 6

    const-string v0, "URLLoader.Load.Complete"

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "APIAdServerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/XAPIAdServerProxy;

    new-instance v1, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;

    iget-object v2, p0, Lcom/youdo/proxy/XAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/XAPIAdServerProxy;

    const-string v3, "complete"

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getData()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/youdo/proxy/XAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/XAPIAdServerProxy;

    iget-object v5, v5, Lcom/youdo/proxy/XAPIAdServerProxy;->mHttpRequestParameter:Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;

    invoke-virtual {v5}, Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;-><init>(Lcom/youdo/proxy/XAPIAdServerProxy;Ljava/lang/String;Ljava/util/Map;Lorg/openad/constants/IOpenAdContants$AdSlotType;)V

    invoke-virtual {v0, v1}, Lcom/youdo/proxy/XAPIAdServerProxy;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APIAdServerProxy"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/XAPIAdServerProxy;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "error"

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/youdo/proxy/XAPIAdServerProxy;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/XAPIAdServerProxy;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "error"

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/youdo/proxy/XAPIAdServerProxy;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0
.end method
