.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;
.super Ljava/lang/Object;
.source "PluginFullScreenVertical.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2120
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2121
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2122
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2123
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2124
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2126
    :cond_0
    return-void
.end method
