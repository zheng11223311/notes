.class Lcom/youku/widget/DanmuSurfaceView$DanmuPara;
.super Ljava/lang/Object;
.source "DanmuSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/DanmuSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DanmuPara"
.end annotation


# instance fields
.field public mColor:I

.field public mDanmuBodyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/widget/DanmuSurfaceView$DanmuBody;",
            ">;"
        }
    .end annotation
.end field

.field public mHasDanmuBody:Z

.field public mIsAdding:Z

.field public mSpeed:I

.field final synthetic this$0:Lcom/youku/widget/DanmuSurfaceView;


# direct methods
.method public constructor <init>(Lcom/youku/widget/DanmuSurfaceView;II)V
    .locals 1
    .param p2, "color"    # I
    .param p3, "speed"    # I

    .prologue
    .line 272
    iput-object p1, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mDanmuBodyList:Ljava/util/ArrayList;

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mHasDanmuBody:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mIsAdding:Z

    .line 273
    iput p2, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mColor:I

    .line 274
    iput p3, p0, Lcom/youku/widget/DanmuSurfaceView$DanmuPara;->mSpeed:I

    .line 275
    return-void
.end method
