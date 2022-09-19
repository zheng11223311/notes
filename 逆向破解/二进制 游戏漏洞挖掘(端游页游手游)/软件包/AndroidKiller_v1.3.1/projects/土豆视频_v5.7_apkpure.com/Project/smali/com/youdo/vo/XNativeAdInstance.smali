.class public Lcom/youdo/vo/XNativeAdInstance;
.super Lcom/youdo/vo/XAdInstance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/vo/XNativeAdInstance$State;
    }
.end annotation


# instance fields
.field public mState:Lcom/youdo/vo/XNativeAdInstance$State;


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XNativeAdResponse;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/youdo/vo/XAdInstance;-><init>(Lcom/youdo/vo/XNativeAdResponse;Lorg/json/JSONObject;)V

    sget-object v0, Lcom/youdo/vo/XNativeAdInstance$State;->UNKNOWN:Lcom/youdo/vo/XNativeAdInstance$State;

    iput-object v0, p0, Lcom/youdo/vo/XNativeAdInstance;->mState:Lcom/youdo/vo/XNativeAdInstance$State;

    return-void
.end method
