.class public Lcom/youku/player/plugin/PluginChangeQuality;
.super Lcom/youku/player/plugin/PluginPayTip;
.source "PluginChangeQuality.java"


# static fields
.field private static final STATE_CHANGE_QUALITY_TIP:I = 0x1

.field private static final STATE_SMOOTH_CHANGE_QUALITY:I = 0x2

.field private static handler:Landroid/os/Handler;


# instance fields
.field private isClosed:Z

.field private isLoading:Z

.field private mIsStartToShowStartTip:Z

.field private mNextQuality:I

.field private mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field private mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field private mSmoothTips:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/youku/player/plugin/PluginChangeQuality$1;

    invoke-direct {v0}, Lcom/youku/player/plugin/PluginChangeQuality$1;-><init>()V

    sput-object v0, Lcom/youku/player/plugin/PluginChangeQuality;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "PlayerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginPayTip;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mSmoothTips:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 33
    iput-object p4, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mState:I

    .line 35
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/youku/player/plugin/PluginChangeQuality;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/player/plugin/PluginChangeQuality;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isLoading:Z

    return p1
.end method

.method static synthetic access$202(Lcom/youku/player/plugin/PluginChangeQuality;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mSmoothTips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/youku/player/plugin/PluginChangeQuality;)Lcom/youku/player/apiservice/IPlayerUiControl;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/plugin/PluginChangeQuality;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;

    .prologue
    .line 14
    iget v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mState:I

    return v0
.end method

.method static synthetic access$402(Lcom/youku/player/plugin/PluginChangeQuality;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/youku/player/plugin/PluginChangeQuality;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mIsStartToShowStartTip:Z

    return v0
.end method

.method static synthetic access$600(Lcom/youku/player/plugin/PluginChangeQuality;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isClosed:Z

    return v0
.end method

.method static synthetic access$602(Lcom/youku/player/plugin/PluginChangeQuality;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isClosed:Z

    return p1
.end method

.method static synthetic access$702(Lcom/youku/player/plugin/PluginChangeQuality;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginChangeQuality;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mNextQuality:I

    return p1
.end method

.method private showChangeQualityTip()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginChangeQuality$4;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginChangeQuality$4;-><init>(Lcom/youku/player/plugin/PluginChangeQuality;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isHide:Z

    .line 189
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginChangeQuality;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginChangeQuality;->close(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCloseClick()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isClosed:Z

    .line 172
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isClosed:Z

    .line 184
    invoke-super {p0, p1, p2}, Lcom/youku/player/plugin/PluginPayTip;->onErrorListener(II)Z

    move-result v0

    return v0
.end method

.method public onLoadedListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginChangeQuality;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginChangeQuality;->close(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    :cond_0
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isClosed:Z

    .line 161
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isLoading:Z

    .line 162
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->showChangeQualityTip()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    :goto_0
    return-void

    .line 46
    :cond_3
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginChangeQuality;->showChangeQualityTip()V

    goto :goto_0
.end method

.method protected onOkClick()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 143
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget v1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mNextQuality:I

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQuality(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public onRealVideoStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginChangeQuality;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginChangeQuality;->close(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    :cond_0
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isClosed:Z

    .line 152
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isLoading:Z

    .line 153
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-super {p0}, Lcom/youku/player/plugin/PluginPayTip;->onRelease()V

    .line 177
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isClosed:Z

    .line 178
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isLoading:Z

    .line 179
    return-void
.end method

.method protected onTextAndArrowButtonClick()V
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-super {p0}, Lcom/youku/player/plugin/PluginPayTip;->onTextAndArrowButtonClick()V

    goto :goto_0
.end method

.method public showSmoothChangeQualityTip(Z)V
    .locals 6
    .param p1, "start"    # Z

    .prologue
    .line 51
    iget v1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isLoading:Z

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/youku/player/goplay/Profile;->videoQuality:I

    invoke-static {v1, p1, v2}, Lcom/youku/player/util/DetailUtil;->getQualityChangeTips(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "tip":Ljava/lang/String;
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mIsStartToShowStartTip:Z

    .line 56
    iget-object v1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/plugin/PluginChangeQuality$2;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginChangeQuality$2;-><init>(Lcom/youku/player/plugin/PluginChangeQuality;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    if-nez p1, :cond_0

    sget-object v1, Lcom/youku/player/plugin/PluginChangeQuality;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/youku/player/plugin/PluginChangeQuality;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/player/plugin/PluginChangeQuality$3;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginChangeQuality$3;-><init>(Lcom/youku/player/plugin/PluginChangeQuality;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public unHide()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isHide:Z

    .line 195
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->isLoading:Z

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mSmoothTips:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 198
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginChangeQuality;->mIsStartToShowStartTip:Z

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginChangeQuality;->showSmoothChangeQualityTip(Z)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginChangeQuality;->showChangeQualityTip()V

    goto :goto_0
.end method
