.class final Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;
.super Ljava/lang/Object;
.source "FullScreenUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->showPlayNextDialog(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/service/download/DownloadInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$currentInfo:Lcom/tudou/service/download/DownloadInfo;

.field final synthetic val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field final synthetic val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadInfo;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$currentInfo:Lcom/tudou/service/download/DownloadInfo;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 289
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 290
    const-string v2, "setNormalNegtiveBtn"

    invoke-static {v2}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    :goto_0
    return-void

    .line 293
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 295
    .local v1, "nextVidRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$currentInfo:Lcom/tudou/service/download/DownloadInfo;

    iget-object v2, v2, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/http/TudouURLContainer;->getNextVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method
