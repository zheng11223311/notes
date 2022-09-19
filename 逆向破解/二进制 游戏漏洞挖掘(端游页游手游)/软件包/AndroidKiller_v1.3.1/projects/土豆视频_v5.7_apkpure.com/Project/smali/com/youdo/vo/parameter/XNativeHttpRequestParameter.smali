.class public Lcom/youdo/vo/parameter/XNativeHttpRequestParameter;
.super Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;

# interfaces
.implements Lcom/youdo/vo/parameter/IXAdHttpRequestParameter;


# direct methods
.method public constructor <init>(Lcom/youdo/XAdManagerContext;Landroid/content/Context;Lorg/openad/constants/IOpenAdContants$AdSlotType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;-><init>(Lcom/youdo/XAdManagerContext;Landroid/content/Context;Lorg/openad/constants/IOpenAdContants$AdSlotType;)V

    return-void
.end method


# virtual methods
.method public toObject()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;->toObject()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "vc"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aw"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
