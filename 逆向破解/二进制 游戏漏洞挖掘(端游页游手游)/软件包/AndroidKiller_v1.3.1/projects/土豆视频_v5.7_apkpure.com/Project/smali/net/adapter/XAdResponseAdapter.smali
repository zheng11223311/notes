.class public Lnet/adapter/XAdResponseAdapter;
.super Ljava/lang/Object;


# instance fields
.field protected mVast:Lnet/iab/vast/VAST;


# direct methods
.method public constructor <init>(Lnet/iab/vast/VAST;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/adapter/XAdResponseAdapter;->mVast:Lnet/iab/vast/VAST;

    return-void
.end method


# virtual methods
.method public convert()Lcom/youdo/vo/XNativeAdResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
