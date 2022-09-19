.class Lcom/youku/player/request/OfflineAdvRequest$1$1;
.super Ljava/lang/Object;
.source "OfflineAdvRequest.java"

# interfaces
.implements Lcom/youku/player/goplay/IGetOfflineAdvCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/OfflineAdvRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/request/OfflineAdvRequest$1;


# direct methods
.method constructor <init>(Lcom/youku/player/request/OfflineAdvRequest$1;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/youku/player/request/OfflineAdvRequest$1$1;->this$1:Lcom/youku/player/request/OfflineAdvRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 2
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 45
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u83b7\u53d6\u79bb\u7ebf\u5e7f\u544a\u4fe1\u606f getPrerollAd\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/youku/player/request/OfflineAdvRequest$1$1;->this$1:Lcom/youku/player/request/OfflineAdvRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/OfflineAdvRequest$1;->val$playRequest:Lcom/youku/player/request/PlayRequest;

    invoke-virtual {v0}, Lcom/youku/player/request/PlayRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/youku/player/request/OfflineAdvRequest$1$1;->this$1:Lcom/youku/player/request/OfflineAdvRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/OfflineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->onAdvInfoGetted(Z)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/youku/player/request/OfflineAdvRequest$1$1;->this$1:Lcom/youku/player/request/OfflineAdvRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/OfflineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-interface {v0, p1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 49
    return-void
.end method

.method public onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;Lcom/youdo/vo/XAdInstance;)V
    .locals 2
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;
    .param p2, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 37
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "MediaPlayerDelegate -> getOfflineADV  success!!!!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/youku/player/request/OfflineAdvRequest$1$1;->this$1:Lcom/youku/player/request/OfflineAdvRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/OfflineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setXAdInstance(Lcom/youdo/vo/XAdInstance;)V

    .line 39
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u83b7\u53d6\u79bb\u7ebf\u5e7f\u544a\u4fe1\u606f getPrerollAd\u6210\u529f"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/youku/player/request/OfflineAdvRequest$1$1;->this$1:Lcom/youku/player/request/OfflineAdvRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/OfflineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-interface {v0, p1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 41
    return-void
.end method
