.class public Lcom/youdo/vast/VAST2ATM;
.super Ljava/lang/Object;


# instance fields
.field private mAdResponse:Lcom/youdo/vo/XNativeAdResponse;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/youdo/vo/XNativeAdResponse;

    new-instance v1, Lcom/youdo/XAdManagerContext;

    invoke-direct {v1}, Lcom/youdo/XAdManagerContext;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/youdo/vo/XNativeAdResponse;-><init>(Lcom/youdo/XAdManagerContext;Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/youdo/vast/VAST2ATM;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    return-void
.end method
