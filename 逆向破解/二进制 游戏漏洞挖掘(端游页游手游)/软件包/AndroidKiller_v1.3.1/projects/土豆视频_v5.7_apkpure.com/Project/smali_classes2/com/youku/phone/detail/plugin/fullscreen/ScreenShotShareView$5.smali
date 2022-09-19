.class Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$5;
.super Lcom/tudou/detail/DetailAnimationListener;
.source "ScreenShotShareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->zoomOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-direct {p0}, Lcom/tudou/detail/DetailAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/tudou/detail/DetailAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 285
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->hide()V

    .line 286
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$202(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;Z)Z

    .line 287
    return-void
.end method
