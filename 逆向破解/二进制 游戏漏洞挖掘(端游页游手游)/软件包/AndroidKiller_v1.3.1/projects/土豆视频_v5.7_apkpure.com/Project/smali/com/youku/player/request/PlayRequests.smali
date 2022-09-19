.class public Lcom/youku/player/request/PlayRequests;
.super Ljava/lang/Object;
.source "PlayRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/request/PlayRequests$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static newPlayRequest(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)Lcom/youku/player/request/PlayRequest;
    .locals 4
    .param p0, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 18
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newPlayRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/youku/player/module/PlayVideoInfo;->getPlayType()Lcom/youku/player/base/PlayType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/base/PlayType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/youku/player/request/PlayRequests$1;->$SwitchMap$com$youku$player$base$PlayType:[I

    invoke-virtual {p0}, Lcom/youku/player/module/PlayVideoInfo;->getPlayType()Lcom/youku/player/base/PlayType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/base/PlayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 21
    :pswitch_0
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->requestAsync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "request asynchronous"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/youku/player/request/AsyncPlayRequest;

    new-instance v1, Lcom/youku/player/request/OnlineVideoRequest;

    invoke-direct {v1, p1, p2}, Lcom/youku/player/request/OnlineVideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/youku/player/request/AsyncPlayRequest;-><init>(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/VideoRequest;)V

    .line 41
    .local v0, "playRequest":Lcom/youku/player/request/PlayRequest;
    :goto_0
    return-object v0

    .line 25
    .end local v0    # "playRequest":Lcom/youku/player/request/PlayRequest;
    :cond_0
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "request synchronous"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/youku/player/request/SyncPlayRequest;

    new-instance v1, Lcom/youku/player/request/OnlineVideoRequest;

    invoke-direct {v1, p1, p2}, Lcom/youku/player/request/OnlineVideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/youku/player/request/SyncPlayRequest;-><init>(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/VideoRequest;)V

    .line 28
    .restart local v0    # "playRequest":Lcom/youku/player/request/PlayRequest;
    goto :goto_0

    .line 30
    .end local v0    # "playRequest":Lcom/youku/player/request/PlayRequest;
    :pswitch_1
    new-instance v0, Lcom/youku/player/request/SyncPlayRequest;

    new-instance v1, Lcom/youku/player/request/LocalDownloadVideoRequest;

    invoke-direct {v1, p1, p2}, Lcom/youku/player/request/LocalDownloadVideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/youku/player/request/SyncPlayRequest;-><init>(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/VideoRequest;)V

    .line 31
    .restart local v0    # "playRequest":Lcom/youku/player/request/PlayRequest;
    goto :goto_0

    .line 33
    .end local v0    # "playRequest":Lcom/youku/player/request/PlayRequest;
    :pswitch_2
    new-instance v0, Lcom/youku/player/request/SyncPlayRequest;

    new-instance v1, Lcom/youku/player/request/LiveVideoRequest;

    invoke-direct {v1, p1, p2}, Lcom/youku/player/request/LiveVideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/youku/player/request/SyncPlayRequest;-><init>(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/VideoRequest;)V

    .line 34
    .restart local v0    # "playRequest":Lcom/youku/player/request/PlayRequest;
    goto :goto_0

    .line 36
    .end local v0    # "playRequest":Lcom/youku/player/request/PlayRequest;
    :pswitch_3
    new-instance v0, Lcom/youku/player/request/SyncPlayRequest;

    new-instance v1, Lcom/youku/player/request/LocalFileVideoRequest;

    invoke-direct {v1, p1, p2}, Lcom/youku/player/request/LocalFileVideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/youku/player/request/SyncPlayRequest;-><init>(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/VideoRequest;)V

    .line 37
    .restart local v0    # "playRequest":Lcom/youku/player/request/PlayRequest;
    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
