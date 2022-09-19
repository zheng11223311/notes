.class Lcom/youku/player/ad/imagead/ImageAd$2;
.super Ljava/lang/Object;
.source "ImageAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAd;->creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAd;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iput-object p2, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 170
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 172
    :cond_2
    return-void

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAd$2;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v2, v2, Lcom/youku/player/ad/imagead/ImageAd;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method
