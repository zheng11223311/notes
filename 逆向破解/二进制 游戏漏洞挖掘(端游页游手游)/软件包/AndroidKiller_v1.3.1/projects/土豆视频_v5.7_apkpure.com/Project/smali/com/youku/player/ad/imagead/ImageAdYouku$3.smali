.class Lcom/youku/player/ad/imagead/ImageAdYouku$3;
.super Ljava/lang/Object;
.source "ImageAdYouku.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYouku;->showADImageWhenLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYouku;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u70b9\u51fb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v2}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$400(Lcom/youku/player/ad/imagead/ImageAdYouku;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v0, v1}, Lcom/youku/player/util/DisposableStatsUtils;->disposeCUM(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 209
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v1}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$400(Lcom/youku/player/ad/imagead/ImageAdYouku;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/AdUtil;->isDownloadAPK(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_4

    .line 212
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v1}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$400(Lcom/youku/player/ad/imagead/ImageAdYouku;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v2, v2, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 221
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 239
    :cond_2
    :goto_0
    return-void

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/imagead/ImageAdYouku;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v3}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$400(Lcom/youku/player/ad/imagead/ImageAdYouku;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/player/ad/imagead/ImageAdYouku;->creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$502(Lcom/youku/player/ad/imagead/ImageAdYouku;Z)Z

    .line 229
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_5

    .line 230
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget v0, v0, Lcom/youku/player/goplay/AdvInfo;->CUF:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 233
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoaded()V

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v1}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$400(Lcom/youku/player/ad/imagead/ImageAdYouku;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v2, v2, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method
