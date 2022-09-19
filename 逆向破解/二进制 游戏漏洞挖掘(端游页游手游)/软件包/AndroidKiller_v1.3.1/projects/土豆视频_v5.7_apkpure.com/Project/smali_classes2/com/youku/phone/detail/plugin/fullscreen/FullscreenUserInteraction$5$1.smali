.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Lcom/youku/util/IAlert;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;

.field final synthetic val$finalformat:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;I)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;->val$finalformat:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNegative(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;->val$finalformat:I

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->addToCache(I)V

    .line 487
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 488
    const-string v0, "\u5c06\u5728wifi\u7f51\u7edc\u81ea\u52a8\u5f00\u59cb\u7f13\u5b58"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public alertPositive(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;->val$finalformat:I

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->addToCache(I)V

    .line 478
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 479
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 481
    const v0, 0x7f0d0115

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 482
    return-void
.end method
