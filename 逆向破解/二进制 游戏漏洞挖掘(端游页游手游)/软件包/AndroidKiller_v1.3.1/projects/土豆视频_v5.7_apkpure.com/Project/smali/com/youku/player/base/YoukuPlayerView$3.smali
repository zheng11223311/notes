.class Lcom/youku/player/base/YoukuPlayerView$3;
.super Ljava/lang/Object;
.source "YoukuPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/YoukuPlayerView;->OnVideoSizeChangedListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuPlayerView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;II)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$3;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iput p2, p0, Lcom/youku/player/base/YoukuPlayerView$3;->val$width:I

    iput p3, p0, Lcom/youku/player/base/YoukuPlayerView$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$3;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v0, v0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    iget v1, p0, Lcom/youku/player/base/YoukuPlayerView$3;->val$width:I

    iget v2, p0, Lcom/youku/player/base/YoukuPlayerView$3;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/NewSurfaceView;->setVideoSize(II)V

    .line 294
    return-void
.end method
