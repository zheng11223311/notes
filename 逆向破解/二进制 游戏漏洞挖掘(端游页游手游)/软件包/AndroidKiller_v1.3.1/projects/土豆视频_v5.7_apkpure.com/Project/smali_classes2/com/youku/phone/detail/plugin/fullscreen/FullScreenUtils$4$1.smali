.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;
.super Ljava/lang/Object;
.source "FullScreenUtils.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 13
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v12

    .line 302
    .local v12, "str":Ljava/lang/String;
    const-string v3, "yueliang"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nextVideo url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 310
    .local v10, "jsobj":Lorg/json/JSONObject;
    const-string v3, "next_code"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "nextVid":Ljava/lang/String;
    const-string v3, "next_title"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    const-string v3, "\u5f53\u524d\u5df2\u662f\u6700\u65b0\u4e00\u96c6"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->finish()V

    .line 355
    .end local v0    # "nextVid":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v10    # "jsobj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 317
    .restart local v0    # "nextVid":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v10    # "jsobj":Lorg/json/JSONObject;
    :cond_1
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    const-string v3, "\u8be5\u89c6\u9891\u5df2\u6dfb\u52a0\u5230\u7f13\u5b58\u961f\u5217"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    .end local v0    # "nextVid":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v10    # "jsobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 350
    .local v8, "e":Ljava/lang/Exception;
    const-string v3, "Youku"

    const-string v4, "FullScreenUtils.showPlayNextDialog(...).new OnClickListener() {...}.onClick(...).new IHttpRequestCallBack() {...}#onSuccess()"

    invoke-static {v3, v4, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 324
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "nextVid":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v10    # "jsobj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v3, "\u6b63\u5728\u6dfb\u52a0\u5230\u7f13\u5b58\u961f\u5217\u8bf7\u7a0d\u5019"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVideoLanguage()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "lanuage":Ljava/lang/String;
    const/4 v9, 0x0

    .line 327
    .local v9, "format":I
    const-string v3, "resolution_save"

    const-string v4, "\u9ad8\u6e05"

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 328
    .local v11, "mPersFormat":Ljava/lang/String;
    const-string v3, "\u8d85\u6e05"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 329
    const/4 v9, 0x7

    .line 335
    :cond_3
    :goto_1
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getType()I

    move-result v3

    sget v4, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    if-ne v3, v4, :cond_6

    sget-object v3, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    :goto_2
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getType()I

    move-result v4

    sget v5, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    if-ne v4, v5, :cond_7

    move v4, v9

    :goto_3
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getimgUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 347
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils$4;->val$context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->finish()V

    goto/16 :goto_0

    .line 330
    :cond_4
    const-string v3, "\u9ad8\u6e05"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 331
    const/4 v9, 0x1

    goto :goto_1

    .line 332
    :cond_5
    const-string v3, "\u6807\u6e05"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    const/4 v9, 0x5

    goto :goto_1

    .line 335
    :cond_6
    sget-object v3, Lcom/tudou/android/Youku$FromType;->Tudou:Lcom/tudou/android/Youku$FromType;

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->getCacheLastFormat()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_3
.end method
