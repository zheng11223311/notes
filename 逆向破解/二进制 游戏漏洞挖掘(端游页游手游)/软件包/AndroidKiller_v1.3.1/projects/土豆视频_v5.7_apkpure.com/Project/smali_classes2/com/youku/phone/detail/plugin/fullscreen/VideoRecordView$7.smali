.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$7;
.super Lcom/tudou/detail/DetailAnimationListener;
.source "VideoRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->zoomIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-direct {p0}, Lcom/tudou/detail/DetailAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 526
    invoke-super {p0, p1}, Lcom/tudou/detail/DetailAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 527
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$1202(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Z)Z

    .line 528
    return-void
.end method
