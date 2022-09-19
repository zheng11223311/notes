.class Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;
.super Ljava/lang/Object;
.source "ImageAdYouku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYouku$2;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYouku$2;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->access$000(Lcom/youku/player/ad/imagead/ImageAdYouku$2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->access$102(Lcom/youku/player/ad/imagead/ImageAdYouku$2;Z)Z

    .line 145
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdYouku;->setImageAdShowing(Z)V

    .line 146
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_1

    .line 148
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v1, v1, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdYouku;->disposeAdLoss(I)V

    .line 171
    :cond_2
    return-void
.end method
