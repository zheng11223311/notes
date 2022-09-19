.class public abstract Lcom/youku/player/ad/imagead/ImageAd;
.super Ljava/lang/Object;
.source "ImageAd.java"


# static fields
.field protected static final COUNTDOWN_DEFAULT:I = 0x5

.field protected static final TIME_OUT:I = 0x2710

.field protected static mHandler:Landroid/os/Handler;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAdView:Landroid/view/View;

.field protected mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

.field protected mContainerParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

.field protected mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field protected mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field protected mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field protected mSavedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/youku/player/ad/imagead/ImageAd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    .line 49
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAd;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/youku/player/ad/imagead/ImageAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 51
    iput-object p3, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 52
    iput-object p4, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method


# virtual methods
.method protected creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isWifi"    # Z
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v0, Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-direct {v0, p1}, Lcom/youku/player/ui/widget/YpYoukuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    .line 142
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    sget v1, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_cancel:I

    new-instance v2, Lcom/youku/player/ad/imagead/ImageAd$1;

    invoke-direct {v2, p0}, Lcom/youku/player/ad/imagead/ImageAd$1;-><init>(Lcom/youku/player/ad/imagead/ImageAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    sget v1, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_ok:I

    new-instance v2, Lcom/youku/player/ad/imagead/ImageAd$2;

    invoke-direct {v2, p0, p3}, Lcom/youku/player/ad/imagead/ImageAd$2;-><init>(Lcom/youku/player/ad/imagead/ImageAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAd$3;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAd$3;-><init>(Lcom/youku/player/ad/imagead/ImageAd;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 181
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz p2, :cond_2

    sget v0, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_message_wifi:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setMessage(I)V

    .line 182
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAd$4;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAd$4;-><init>(Lcom/youku/player/ad/imagead/ImageAd;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 192
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setCanceledOnTouchOutside(Z)V

    .line 193
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->show()V

    .line 197
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAd;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->onDownloadDialogShow(Lcom/youku/player/goplay/AdvInfo;)V

    .line 198
    invoke-virtual {p0}, Lcom/youku/player/ad/imagead/ImageAd;->pauseTimer()V

    goto :goto_0

    .line 181
    :cond_2
    sget v0, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_message_3g:I

    goto :goto_1
.end method

.method public abstract dismiss()V
.end method

.method protected disposeAdLoss(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v2, "mp"

    invoke-static {v0, p1, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected getParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 89
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mContainerParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mContainerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mContainerParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public abstract isAutoPlayAfterClick()Z
.end method

.method protected isDownLoadDialogNotShowing()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLand()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAd;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 117
    .local v0, "getOrient":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    .line 119
    .end local v0    # "getOrient":Landroid/view/Display;
    :cond_0
    return v1
.end method

.method public abstract isSaveOnOrientChange()Z
.end method

.method public abstract isSaveOnResume()Z
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/ad/imagead/ImageAd;->startTimer()V

    .line 130
    :cond_1
    return-void
.end method

.method public abstract onStop()V
.end method

.method public abstract pauseTimer()V
.end method

.method public abstract release()V
.end method

.method public abstract setAutoPlayAfterClick(Z)V
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 84
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mAdView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/player/ad/imagead/ImageAd;->getParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected setImageAdShowing(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerAdControl;->setImageAdShowing(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method protected setPluginHolderPaddingZero()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setPluginHolderPaddingZero()V

    .line 111
    :cond_0
    return-void
.end method

.method public abstract start(Lcom/youku/player/goplay/AdvInfo;Lcom/youku/player/ad/imagead/IImageAdCallback;)V
.end method

.method public abstract startTimer()V
.end method

.method protected updateImageAdPlugin()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 105
    :cond_0
    return-void
.end method
