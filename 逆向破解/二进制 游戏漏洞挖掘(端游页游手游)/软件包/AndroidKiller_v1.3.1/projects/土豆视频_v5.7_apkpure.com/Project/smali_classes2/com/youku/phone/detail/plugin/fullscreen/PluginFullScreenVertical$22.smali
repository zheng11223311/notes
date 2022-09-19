.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PluginFullScreenVertical.java"


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
    .line 2128
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2140
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2141
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2142
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2143
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2144
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2145
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2146
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v0

    instance-of v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;

    if-eqz v0, :cond_1

    .line 2150
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Z)Z

    .line 2153
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2132
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2133
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v0

    instance-of v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionStart(ZZ)V

    .line 2136
    :cond_0
    return-void
.end method
