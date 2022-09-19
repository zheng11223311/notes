.class public Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;
.super Ljava/lang/Object;
.source "Gift2DTileInfo.java"


# instance fields
.field public mBody:Lorg/jbox2d/dynamics/Body;

.field public mTime:F


# direct methods
.method public constructor <init>(Lorg/jbox2d/dynamics/Body;F)V
    .locals 1
    .param p1, "body"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "time"    # F

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mBody:Lorg/jbox2d/dynamics/Body;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mTime:F

    .line 10
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mBody:Lorg/jbox2d/dynamics/Body;

    .line 11
    iput p2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTileInfo;->mTime:F

    .line 12
    return-void
.end method
