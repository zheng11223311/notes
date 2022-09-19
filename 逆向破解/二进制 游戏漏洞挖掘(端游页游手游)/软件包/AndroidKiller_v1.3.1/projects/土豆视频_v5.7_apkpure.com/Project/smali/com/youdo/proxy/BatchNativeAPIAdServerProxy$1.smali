.class Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/events/IXYDEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;


# direct methods
.method constructor <init>(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "complete"

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Landroid/preference/PreferenceActivity$Header;

    :try_start_0
    check-cast p1, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;

    invoke-virtual {p1}, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v4, "cookies"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/preference/PreferenceActivity$Header;

    check-cast v1, [Landroid/preference/PreferenceActivity$Header;

    iget-object v1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-static {v1}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->access$000(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)Lcom/youdo/vo/XNativeAdResponsePackage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youdo/vo/XNativeAdResponsePackage;->getXAdResponseByAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/youdo/vo/XNativeAdResponse;->merge(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->access$112(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-static {v0, v2}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->access$212(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;I)I

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-static {v0}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->access$200(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)I

    move-result v0

    sget-object v1, Lcom/youdo/XNativeAdManager;->SUPPORTED_AD_SLOT_TYPES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cookies"

    iget-object v4, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    iget-object v4, v4, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->cookie:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-static {v0}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->access$100(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)I

    move-result v0

    iget-object v1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-static {v1}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->access$200(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;)I

    move-result v1

    if-ge v0, v1, :cond_3

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    new-instance v2, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;

    iget-object v3, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    const-string v4, "EVENT_BATCH_REQUEST_DONE"

    iget-object v5, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    iget-object v5, v5, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->cookie:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$InnerEvent;-><init>(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BatchNativeAPIAdServerProxy"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-static {v0, v2}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->access$112(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy$1;->this$0:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-static {v0, v2}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->access$112(Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;I)I

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method
