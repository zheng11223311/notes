.class Lcom/tudou/detail/DetailModel$6;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getNextVideoAsyn(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field final synthetic val$tVid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$6;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$6;->val$tVid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1433
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getNextVideoAsyn onFailed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 1437
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, v3}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    .line 1438
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$6;->this$0:Lcom/tudou/detail/DetailModel;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$6;->val$tVid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/tudou/detail/DetailModel;->access$1100(Lcom/tudou/detail/DetailModel;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1439
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 11
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v10, 0x0

    .line 1443
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getNextVideoAsyn onSuccess"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 1446
    .local v6, "str":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v1, "jsobj":Lorg/json/JSONObject;
    const-string v7, "next_video"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1448
    .local v4, "nextobj":Lorg/json/JSONObject;
    const-string v7, "itemCode"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1449
    .local v2, "nextVideoId":Ljava/lang/String;
    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1450
    .local v3, "nextVideoTitle":Ljava/lang/String;
    const-string v7, "playlist_code"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1452
    .local v5, "playlistcode":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v2, v7, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 1453
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v3, v7, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 1454
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v5, v7, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 1455
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    .line 1456
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->this$0:Lcom/tudou/detail/DetailModel;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/tudou/detail/DetailModel$6;->val$tVid:Ljava/lang/String;

    invoke-static {v7, v8, v9, v2}, Lcom/tudou/detail/DetailModel;->access$1100(Lcom/tudou/detail/DetailModel;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    .end local v1    # "jsobj":Lorg/json/JSONObject;
    .end local v2    # "nextVideoId":Ljava/lang/String;
    .end local v3    # "nextVideoTitle":Ljava/lang/String;
    .end local v4    # "nextobj":Lorg/json/JSONObject;
    .end local v5    # "playlistcode":Ljava/lang/String;
    :goto_0
    return-void

    .line 1457
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v7, :cond_0

    .line 1460
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v8, ""

    iput-object v8, v7, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 1461
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v8, ""

    iput-object v8, v7, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 1462
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v8, ""

    iput-object v8, v7, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 1463
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->val$mediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7, v10}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    .line 1465
    :cond_0
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$6;->this$0:Lcom/tudou/detail/DetailModel;

    iget-object v8, p0, Lcom/tudou/detail/DetailModel$6;->val$tVid:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v10, v8, v9}, Lcom/tudou/detail/DetailModel;->access$1100(Lcom/tudou/detail/DetailModel;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
