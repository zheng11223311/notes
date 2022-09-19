.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;
.super Ljava/lang/Object;
.source "FullScreenUtils.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->goEndPage()V

    .line 270
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 272
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v6, 0x0

    .line 234
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "jsobj":Lorg/json/JSONObject;
    const-string v7, "next_code"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "nextVid":Ljava/lang/String;
    const-string v7, "next_title"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "title":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 241
    const-string v6, "\u5f53\u524d\u5df2\u662f\u6700\u65b0\u4e00\u96c6"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v6, :cond_0

    .line 243
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->finish()V

    .line 265
    .end local v2    # "jsobj":Lorg/json/JSONObject;
    .end local v3    # "nextVid":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v2    # "jsobj":Lorg/json/JSONObject;
    .restart local v3    # "nextVid":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v8, "net"

    iput-object v8, v7, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 247
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->resetFirstPlay()V

    .line 251
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    invoke-direct {v0, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 253
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-boolean v8, v8, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$auto:Z

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {v7, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 254
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 255
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->enableOrientation()V

    .line 256
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->getDetailLayoutData()V

    .line 257
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v6}, Lcom/youku/widget/TudouDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .end local v2    # "jsobj":Lorg/json/JSONObject;
    .end local v3    # "nextVid":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->goEndPage()V

    .line 261
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v6}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 262
    const-string v6, "Youku"

    const-string v7, "FullScreenUtils#showPlayNextDialog()"

    invoke-static {v6, v7, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
