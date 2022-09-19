.class Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$3;
.super Lcom/tudou/detail/DetailAnimationListener;
.source "ScreenShotShareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->zoomIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

.field final synthetic val$tBackTran:Landroid/view/animation/TranslateAnimation;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$3;->val$tBackTran:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Lcom/tudou/detail/DetailAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/tudou/detail/DetailAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 250
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zoomIn onAnimationEnd"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$3;->val$tBackTran:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    return-void
.end method
