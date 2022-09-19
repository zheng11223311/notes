.class Lcom/youku/player/request/OnlineAdvRequest$1;
.super Ljava/lang/Object;
.source "OnlineAdvRequest.java"

# interfaces
.implements Lcom/youku/player/goplay/IGetAdvCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/OnlineAdvRequest;->requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/ref/WeakReference;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/request/OnlineAdvRequest;

.field final synthetic val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

.field final synthetic val$mActivity:Ljava/lang/ref/WeakReference;

.field final synthetic val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field final synthetic val$playRequest:Lcom/youku/player/request/PlayRequest;


# direct methods
.method constructor <init>(Lcom/youku/player/request/OnlineAdvRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/request/PlayRequest;Ljava/lang/ref/WeakReference;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->this$0:Lcom/youku/player/request/OnlineAdvRequest;

    iput-object p2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object p3, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$playRequest:Lcom/youku/player/request/PlayRequest;

    iput-object p4, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mActivity:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 4
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "GetVideoAdvService failed, but activity is finish, so we return directly."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    sget-object v2, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLossNew(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-interface {v0, p1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 131
    return-void

    .line 119
    :cond_1
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    const/16 v1, 0x15

    sget-object v2, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLossNew(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    .line 124
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u83b7\u53d6\u64ad\u653e\u5e7f\u544a\u4fe1\u606f GetVideoAdvService\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$playRequest:Lcom/youku/player/request/PlayRequest;

    invoke-virtual {v0}, Lcom/youku/player/request/PlayRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->releaseInvestigate()V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->onAdvInfoGetted(Z)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 6
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 49
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u53d6\u64ad\u653e\u5e7f\u544a\u4fe1\u606f GetVideoAdvService\u6210\u529f"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-eqz p1, :cond_7

    .line 51
    invoke-static {p1}, Lcom/youku/player/Track;->onAdReqEnd(Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 52
    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 53
    .local v1, "size":I
    if-nez v1, :cond_4

    .line 54
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u5e7f\u544aVC:\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->onAdvInfoGetted(Z)V

    .line 62
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/youku/player/util/AdUtil;->isAdvVideoType(Lcom/youku/player/goplay/VideoAdvInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    invoke-static {p1}, Lcom/youku/player/util/AdUtil;->isAdvImageTypeYouku(Lcom/youku/player/goplay/VideoAdvInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-static {p1}, Lcom/youku/player/util/AdUtil;->getAdvImageTypePosition(Lcom/youku/player/goplay/VideoAdvInfo;)I

    move-result v0

    .line 65
    .local v0, "i":I
    sget-object v3, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v3, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 68
    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_1
    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeVC(Lcom/youku/player/goplay/AdvInfo;)V

    .line 75
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    :cond_3
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v3, "GetVideoAdvService success, but activity is finish, so we return directly."

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v2, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    invoke-static {v2, v4, v3, v5}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLossNew(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    .line 82
    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-interface {v2, p1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 107
    .end local v1    # "size":I
    :goto_1
    return-void

    .line 57
    .restart local v1    # "size":I
    :cond_4
    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/youku/player/apiservice/IPlayerAdControl;->onAdvInfoGetted(Z)V

    .line 58
    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$playRequest:Lcom/youku/player/request/PlayRequest;

    invoke-virtual {v2}, Lcom/youku/player/request/PlayRequest;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/youku/player/apiservice/IPlayerAdControl;->initInvestigate(Lcom/youku/player/goplay/VideoAdvInfo;)V

    goto/16 :goto_0

    .line 86
    :cond_5
    sget-object v2, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    sget-object v4, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    iget-object v5, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4, v5}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLossNew(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    .line 91
    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isSatisfyChinaUnicomFreeFlow()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomManager;->getInstance()Lcom/youku/player/unicom/ChinaUnicomManager;

    move-result-object v2

    new-instance v3, Lcom/youku/player/request/OnlineAdvRequest$1$1;

    invoke-direct {v3, p0, p1}, Lcom/youku/player/request/OnlineAdvRequest$1$1;-><init>(Lcom/youku/player/request/OnlineAdvRequest$1;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v2, p1, v3}, Lcom/youku/player/unicom/ChinaUnicomManager;->replaceAdvUrl(Lcom/youku/player/goplay/VideoAdvInfo;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 104
    :cond_6
    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-interface {v2, p1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V

    goto :goto_1

    .line 106
    .end local v1    # "size":I
    :cond_7
    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-interface {v2, v5}, Lcom/youku/player/goplay/IGetAdvCallBack;->onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V

    goto :goto_1
.end method
