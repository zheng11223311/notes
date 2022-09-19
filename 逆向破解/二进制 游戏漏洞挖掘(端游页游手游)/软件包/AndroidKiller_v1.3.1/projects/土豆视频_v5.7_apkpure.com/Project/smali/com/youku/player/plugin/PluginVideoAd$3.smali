.class Lcom/youku/player/plugin/PluginVideoAd$3;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginVideoAd;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginVideoAd;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$3;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$3;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->onSkipAdClicked()V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$3;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$3;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$3;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd$3;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd$3;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/AnalyticsWrapper;->adSkipClick(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 189
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$3;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
