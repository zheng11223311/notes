.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;
.super Lcom/tudou/service/download/OnPreparedCallback;
.source "FullscreenUserInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->addToCache(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-direct {p0}, Lcom/tudou/service/download/OnPreparedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOneFailed(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 193
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public onOnePrepared(Ljava/lang/String;)V
    .locals 2
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->disableDownloadIcon()V

    .line 206
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 207
    invoke-super {p0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOnePrepared(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onfinish(Z)V
    .locals 2
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 187
    return-void
.end method
