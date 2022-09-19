.class public Lcom/youku/player/ad/PlayerAdControl;
.super Ljava/lang/Object;
.source "PlayerAdControl.java"

# interfaces
.implements Lcom/youku/player/apiservice/IPlayerAdControl;
.implements Lcom/youku/player/util/DetailMessage;


# instance fields
.field private isImageADShowing:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

.field private mAdDialogHint:Landroid/app/Dialog;

.field private mAdState:Lcom/youku/player/ad/AdState;

.field private mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

.field private mImageAD:Lcom/youku/player/plugin/PluginImageAD;

.field private mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mMidAdModel:Lcom/youku/player/ad/MidAdModel;

.field private mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

.field private mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

.field private mSavedPlayVideoInfo:Lcom/youku/player/module/PlayVideoInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mSavedPlayVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    .line 46
    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdDialogHint:Landroid/app/Dialog;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/PlayerAdControl;->isImageADShowing:Z

    .line 53
    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    .line 59
    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    .line 61
    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    .line 64
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/PlayerAdControl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/player/ad/PlayerAdControl;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/PlayerAdControl;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdDialogHint:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/youku/player/ad/PlayerAdControl;Lcom/youku/player/module/PlayVideoInfo;)Lcom/youku/player/module/PlayVideoInfo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/PlayerAdControl;
    .param p1, "x1"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl;->mSavedPlayVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/youku/player/ad/PlayerAdControl;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/PlayerAdControl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/plugin/PluginInvestigate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/PlayerAdControl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/ad/api/IAdControlListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/PlayerAdControl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    return-object v0
.end method


# virtual methods
.method public cancelSuggestLoginDialog()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdDialogHint:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdDialogHint:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdDialogHint:Landroid/app/Dialog;

    .line 182
    :cond_0
    return-void
.end method

.method public changeConfiguration()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate;->updateLayout()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->onBaseConfigurationChanged()V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->updateBackBtn()V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->updateBackBtn()V

    .line 269
    :cond_3
    return-void
.end method

.method public clearMidAD()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->clear()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    .line 465
    :cond_0
    return-void
.end method

.method public creatDialogToLogin(Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 3
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    .line 356
    :try_start_0
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showLoginDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v0, Lcom/youku/player/ui/widget/YpYoukuDialog;

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, "dialog":Lcom/youku/player/ui/widget/YpYoukuDialog;
    sget v1, Lcom/youku/android/player/R$string;->playersdk_ad_hint_tologin_cancel:I

    new-instance v2, Lcom/youku/player/ad/PlayerAdControl$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/youku/player/ad/PlayerAdControl$1;-><init>(Lcom/youku/player/ad/PlayerAdControl;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/ui/widget/YpYoukuDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 368
    sget v1, Lcom/youku/android/player/R$string;->playersdk_ad_hint_tologin_ok:I

    new-instance v2, Lcom/youku/player/ad/PlayerAdControl$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/youku/player/ad/PlayerAdControl$2;-><init>(Lcom/youku/player/ad/PlayerAdControl;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/ui/widget/YpYoukuDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 388
    new-instance v1, Lcom/youku/player/ad/PlayerAdControl$3;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/ad/PlayerAdControl$3;-><init>(Lcom/youku/player/ad/PlayerAdControl;Lcom/youku/player/module/PlayVideoInfo;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 395
    sget v1, Lcom/youku/android/player/R$string;->playersdk_ad_hint_tologin_des:I

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setMessage(I)V

    .line 396
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setCancelable(Z)V

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setCanceledOnTouchOutside(Z)V

    .line 398
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    .end local v0    # "dialog":Lcom/youku/player/ui/widget/YpYoukuDialog;
    :cond_0
    :goto_0
    return-void

    .line 401
    .restart local v0    # "dialog":Lcom/youku/player/ui/widget/YpYoukuDialog;
    :cond_1
    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->show()V

    .line 402
    iput-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdDialogHint:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    .end local v0    # "dialog":Lcom/youku/player/ui/widget/YpYoukuDialog;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public createAdPlugins(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 3
    .param p1, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 79
    iput-object p2, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 80
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/youku/player/plugin/PluginADPlay;

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/youku/player/plugin/PluginADPlay;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/youku/player/plugin/PluginMidADPlay;

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/youku/player/plugin/PluginMidADPlay;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Lcom/youku/player/plugin/PluginImageAD;

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/youku/player/plugin/PluginImageAD;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    .line 89
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginImageAD;->setVisibility(I)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    if-nez v0, :cond_3

    .line 93
    new-instance v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    if-nez v0, :cond_4

    .line 98
    new-instance v0, Lcom/youku/player/plugin/PluginInvestigate;

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/youku/player/plugin/PluginInvestigate;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    .line 102
    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->release()V

    .line 240
    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate;->release()V

    .line 244
    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/youku/player/ad/PlayerAdControl;->clearMidAD()V

    .line 247
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->release()V

    .line 249
    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .line 251
    :cond_2
    return-void
.end method

.method public dismissImageAD()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V

    .line 441
    :cond_0
    return-void
.end method

.method public dismissInteractiveAD()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->closeInteractiveAd()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->closeInteractiveAd()V

    .line 552
    :cond_1
    return-void
.end method

.method public dismissPauseAD()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->setVisible(Z)V

    .line 535
    :cond_0
    return-void
.end method

.method public doOnResumeDelayedOperation(Z)V
    .locals 2
    .param p1, "isAutoPlay"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/PluginADPlay;->onBaseResume(Z)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdState:Lcom/youku/player/ad/AdState;

    sget-object v1, Lcom/youku/player/ad/AdState;->MIDAD:Lcom/youku/player/ad/AdState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->isCurrentAdvEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/youku/player/ad/api/IAdControlListener;->updatePlugin(I)V

    .line 283
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->showPlayIcon()V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/youku/player/ad/api/IAdControlListener;->updatePlugin(I)V

    goto :goto_0
.end method

.method public doOnResumeOperation()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->onBaseResume()V

    .line 302
    :cond_0
    return-void
.end method

.method public getAdState()Lcom/youku/player/ad/AdState;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdState:Lcom/youku/player/ad/AdState;

    return-object v0
.end method

.method public getMidAdModel()Lcom/youku/player/ad/MidAdModel;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    return-object v0
.end method

.method public getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;
    .locals 1
    .param p1, "adType"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "plugin":Lcom/youku/player/plugin/PluginOverlay;
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return-object v0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    .line 112
    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .line 115
    goto :goto_0

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    .line 118
    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getVideoADCallBack(I)Lcom/youku/player/apiservice/IAdPlayerCallback;
    .locals 1
    .param p1, "adType"    # I

    .prologue
    .line 130
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public imageAdOnOrientChange()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->isStartToShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/ad/PlayerAdControl;->isImageADShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->isSaveOnOrientChange()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V

    .line 333
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 337
    :cond_1
    return-void
.end method

.method public initInvestigate(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 1
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/PluginInvestigate;->initData(Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 502
    :cond_0
    return-void
.end method

.method public interuptAD()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    .line 586
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/ad/PlayerAdControl$5;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/PlayerAdControl$5;-><init>(Lcom/youku/player/ad/PlayerAdControl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 596
    :cond_0
    return-void
.end method

.method public isImageADShowingAndNoSave()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/youku/player/ad/PlayerAdControl;->isImageADShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->isSaveOnOrientChange()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageAdShowing()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/youku/player/ad/PlayerAdControl;->isImageADShowing:Z

    return v0
.end method

.method public isImageAdStartToShow()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->isStartToShow()Z

    move-result v0

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteractiveAdShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 188
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginADPlay;->isInteractiveAdShow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginADPlay;->isInteractiveAdHide()Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/youku/player/ad/PlayerAdControl;->isMidAdShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginMidADPlay;->isInteractiveAdShow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginMidADPlay;->isInteractiveAdHide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMidAdShowing()Z
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdState:Lcom/youku/player/ad/AdState;

    sget-object v1, Lcom/youku/player/ad/AdState;->MIDAD:Lcom/youku/player/ad/AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPauseAdVisible()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestLoginDialogShowing()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdDialogHint:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdDialogHint:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdvInfoGetted(Z)V
    .locals 1
    .param p1, "hasAd"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    invoke-interface {v0, p1}, Lcom/youku/player/ad/api/IAdControlListener;->onAdvInfoGetted(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public onDownloadDialogShow(Lcom/youku/player/goplay/AdvInfo;)V
    .locals 2
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 578
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/youku/player/goplay/AdvInfo;->CUF:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 579
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    iget-object v1, p1, Lcom/youku/player/goplay/AdvInfo;->CU:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IDownloadApk;->onDownloadDialogShow(Ljava/lang/String;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onLoginDialogComplete()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetting()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mSavedPlayVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoUrlInfo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0
.end method

.method public onMidAdLoadingEndListener()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    invoke-interface {v0}, Lcom/youku/player/ad/api/IAdControlListener;->onMidAdLoadingEndListener()V

    .line 489
    :cond_0
    return-void
.end method

.method public onMidAdLoadingStartListener()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    invoke-interface {v0}, Lcom/youku/player/ad/api/IAdControlListener;->onMidAdLoadingStartListener()V

    .line 482
    :cond_0
    return-void
.end method

.method public onMidAdPlay()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->initMuteButton()V

    .line 495
    :cond_0
    return-void
.end method

.method public onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 573
    new-instance v0, Lcom/youku/player/plugin/AdvClickProcessor;

    invoke-direct {v0}, Lcom/youku/player/plugin/AdvClickProcessor;-><init>()V

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/youku/player/plugin/AdvClickProcessor;->processAdvClick(Landroid/app/Activity;Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    .line 574
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->isInteractiveAdShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->isInteractiveAdHide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->closeInteractiveAd()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginADPlay;->setInteractiveAdVisible(Z)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/ad/PlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->isInteractiveAdShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->isInteractiveAdHide()Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->closeInteractiveAd()V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginMidADPlay;->setInteractiveAdVisible(Z)V

    goto :goto_0
.end method

.method public onSkipAdClicked()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    invoke-interface {v0}, Lcom/youku/player/ad/api/IAdControlListener;->onSkipAdClicked()V

    .line 569
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/youku/player/ad/PlayerAdControl;->isImageADShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->getAdType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->onStop()V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/ad/PlayerAdControl;->dismissPauseAD()V

    .line 232
    return-void
.end method

.method public pauseInteractiveAd()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginADPlay:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->pauseInteractiveAd()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mPluginMidADPlay:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->pauseInteractiveAd()V

    .line 149
    :cond_1
    return-void
.end method

.method public releaseInvestigate()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate;->release()V

    .line 520
    :cond_0
    return-void
.end method

.method public setAdState(Lcom/youku/player/ad/AdState;)V
    .locals 0
    .param p1, "state"    # Lcom/youku/player/ad/AdState;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdState:Lcom/youku/player/ad/AdState;

    .line 557
    return-void
.end method

.method public setImageAdShowing(Z)V
    .locals 0
    .param p1, "isShowing"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/youku/player/ad/PlayerAdControl;->isImageADShowing:Z

    .line 425
    return-void
.end method

.method public setInvestigateAdHide(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    if-eqz p1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate;->hide()V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mInvestigate:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate;->unHide()V

    goto :goto_0
.end method

.method public setListener(Lcom/youku/player/ad/api/IAdControlListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/player/ad/api/IAdControlListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl;->mAdControlListener:Lcom/youku/player/ad/api/IAdControlListener;

    .line 73
    return-void
.end method

.method public setMidADInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .param p2, "adTest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    invoke-virtual {v1}, Lcom/youku/player/ad/MidAdModel;->clear()V

    .line 448
    :cond_0
    if-eqz p1, :cond_2

    .line 449
    new-instance v1, Lcom/youku/player/ad/MidAdModel;

    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/youku/player/ad/PlayerAdControl;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v1, v2, v3, p0, p2}, Lcom/youku/player/ad/MidAdModel;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerAdControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 451
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/Point;

    iget-wide v2, v1, Lcom/youku/player/goplay/Point;->start:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 452
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid ad point: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/Point;

    iget-wide v4, v1, Lcom/youku/player/goplay/Point;->start:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/youku/player/ad/PlayerAdControl;->mMidAdModel:Lcom/youku/player/ad/MidAdModel;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/Point;

    iget-wide v4, v1, Lcom/youku/player/goplay/Point;->start:D

    double-to-int v1, v4

    invoke-virtual {v2, v1}, Lcom/youku/player/ad/MidAdModel;->addMidAdTimestamp(I)V

    .line 450
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setPauseTestAd(Ljava/lang/String;)V
    .locals 1
    .param p1, "adext"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->setTestAd(Ljava/lang/String;)V

    .line 542
    :cond_0
    return-void
.end method

.method public showImageAD(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 2
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/youku/player/ad/PlayerAdControl;->isImageADShowing:Z

    if-eqz v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "show Image AD"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mImageAD:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/PluginImageAD;->showAD(Lcom/youku/player/goplay/VideoAdvInfo;)V

    goto :goto_0
.end method

.method public showInvestigate()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/ad/PlayerAdControl$4;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/PlayerAdControl$4;-><init>(Lcom/youku/player/ad/PlayerAdControl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method

.method public showPauseAD()V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->showPauseAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl;->mFullScreenPauseAD:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->showPauseAD()V

    goto :goto_0
.end method
