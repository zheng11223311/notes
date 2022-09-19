.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/youku/player/plugin/SimpleMsgResult;)V
    .locals 3
    .param p1, "result"    # Lcom/youku/player/plugin/SimpleMsgResult;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 308
    invoke-virtual {p1}, Lcom/youku/player/plugin/SimpleMsgResult;->getSucc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onUnFavor()V

    .line 310
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    .line 311
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/SwitchButton;->setClickable(Z)V

    .line 312
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v0, 0x7f0d01e8

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/SwitchButton;->setClickable(Z)V

    .line 316
    const-string v0, "\u64ad\u653e\u9875\u53d6\u6d88\u6536\u85cf\u5931\u8d25"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u64ad\u653e\u9875\u6536\u85cf\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
