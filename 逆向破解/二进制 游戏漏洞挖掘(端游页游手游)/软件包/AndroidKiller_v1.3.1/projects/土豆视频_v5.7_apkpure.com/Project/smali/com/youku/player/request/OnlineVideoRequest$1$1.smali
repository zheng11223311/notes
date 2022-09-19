.class Lcom/youku/player/request/OnlineVideoRequest$1$1;
.super Ljava/lang/Object;
.source "OnlineVideoRequest.java"

# interfaces
.implements Lcom/youku/player/drm/DRMTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/OnlineVideoRequest$1;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/request/OnlineVideoRequest$1;

.field final synthetic val$videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/request/OnlineVideoRequest$1;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/player/request/OnlineVideoRequest$1$1;->this$1:Lcom/youku/player/request/OnlineVideoRequest$1;

    iput-object p2, p0, Lcom/youku/player/request/OnlineVideoRequest$1$1;->val$videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v0}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 63
    .local v0, "exception":Lcom/youku/player/goplay/GoplayException;
    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    sget v2, Lcom/youku/android/player/R$string;->Player_error_f100:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 65
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u5931\u8d25"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/youku/player/request/OnlineVideoRequest$1$1;->this$1:Lcom/youku/player/request/OnlineVideoRequest$1;

    invoke-virtual {v1, v0}, Lcom/youku/player/request/OnlineVideoRequest$1;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 67
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1$1;->this$1:Lcom/youku/player/request/OnlineVideoRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/youku/player/request/OnlineVideoRequest$1$1;->val$videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, p0, Lcom/youku/player/request/OnlineVideoRequest$1$1;->this$1:Lcom/youku/player/request/OnlineVideoRequest$1;

    iget-object v2, v2, Lcom/youku/player/request/OnlineVideoRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoInfoSuccess(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    .line 57
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1$1;->this$1:Lcom/youku/player/request/OnlineVideoRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    iget-object v1, p0, Lcom/youku/player/request/OnlineVideoRequest$1$1;->val$videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-interface {v0, v1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 58
    return-void
.end method
