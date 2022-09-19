.class public Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;
.super Lorg/openad/events/XYDEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/proxy/XAPIAdServerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XAPIAdServerProxyEvent"
.end annotation


# instance fields
.field private mAdSlotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field final synthetic this$0:Lcom/youdo/proxy/XAPIAdServerProxy;


# direct methods
.method public constructor <init>(Lcom/youdo/proxy/XAPIAdServerProxy;Ljava/lang/String;Ljava/util/Map;Lorg/openad/constants/IOpenAdContants$AdSlotType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/openad/constants/IOpenAdContants$AdSlotType;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;->this$0:Lcom/youdo/proxy/XAPIAdServerProxy;

    invoke-direct {p0, p2, p3}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object p4, p0, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;->mAdSlotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    return-void
.end method


# virtual methods
.method public getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;
    .locals 1

    iget-object v0, p0, Lcom/youdo/proxy/XAPIAdServerProxy$XAPIAdServerProxyEvent;->mAdSlotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    return-object v0
.end method
