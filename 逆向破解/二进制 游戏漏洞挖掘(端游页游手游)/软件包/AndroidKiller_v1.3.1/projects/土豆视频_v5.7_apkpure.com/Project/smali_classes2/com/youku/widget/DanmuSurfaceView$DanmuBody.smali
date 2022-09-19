.class Lcom/youku/widget/DanmuSurfaceView$DanmuBody;
.super Ljava/lang/Object;
.source "DanmuSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/DanmuSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DanmuBody"
.end annotation


# instance fields
.field public mIndex:I

.field public mPositionX:I

.field public mPositionY:I

.field final synthetic this$0:Lcom/youku/widget/DanmuSurfaceView;


# direct methods
.method public constructor <init>(Lcom/youku/widget/DanmuSurfaceView;III)V
    .locals 0
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I
    .param p4, "index"    # I

    .prologue
    .line 285
    iput-object p1, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p2, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionX:I

    .line 287
    iput p3, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mPositionY:I

    .line 288
    iput p4, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuBody;->mIndex:I

    .line 289
    return-void
.end method
