.class public Lcom/youku/player/ad/imagead/ImageAdContext;
.super Ljava/lang/Object;
.source "ImageAdContext.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdsage:Lcom/youku/player/ad/imagead/ImageAd;

.field private mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

.field private mDomob:Lcom/youku/player/ad/imagead/ImageAd;

.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field private mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field private mPunchBox:Lcom/youku/player/ad/imagead/ImageAd;

.field private mYouku:Lcom/youku/player/ad/imagead/ImageAd;

.field private mYoukuHtml5:Lcom/youku/player/ad/imagead/ImageAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYouku:Lcom/youku/player/ad/imagead/ImageAd;

    .line 17
    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPunchBox:Lcom/youku/player/ad/imagead/ImageAd;

    .line 18
    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mAdsage:Lcom/youku/player/ad/imagead/ImageAd;

    .line 19
    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mDomob:Lcom/youku/player/ad/imagead/ImageAd;

    .line 20
    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYoukuHtml5:Lcom/youku/player/ad/imagead/ImageAd;

    .line 21
    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    .line 30
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mActivity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 32
    iput-object p3, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 33
    iput-object p4, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 34
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->dismiss()V

    .line 149
    :cond_0
    return-void
.end method

.method public isAutoPlayAfterClick()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->isAutoPlayAfterClick()Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSaveOnOrientChange()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->isSaveOnOrientChange()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveOnResume()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->isSaveOnResume()Z

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->onResume()V

    .line 167
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->onStop()V

    .line 84
    :cond_0
    return-void
.end method

.method public pauseTimer()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->pauseTimer()V

    .line 161
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPunchBox:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPunchBox:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->release()V

    .line 98
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPunchBox:Lcom/youku/player/ad/imagead/ImageAd;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mAdsage:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mAdsage:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->release()V

    .line 102
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mAdsage:Lcom/youku/player/ad/imagead/ImageAd;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mDomob:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mDomob:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->release()V

    .line 106
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mDomob:Lcom/youku/player/ad/imagead/ImageAd;

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYouku:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYouku:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->release()V

    .line 110
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYouku:Lcom/youku/player/ad/imagead/ImageAd;

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYoukuHtml5:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYoukuHtml5:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->release()V

    .line 114
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYoukuHtml5:Lcom/youku/player/ad/imagead/ImageAd;

    .line 116
    :cond_4
    return-void
.end method

.method public setAutoPlayAfterClick(Z)V
    .locals 1
    .param p1, "autoPlay"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0, p1}, Lcom/youku/player/ad/imagead/ImageAd;->setAutoPlayAfterClick(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0, p1}, Lcom/youku/player/ad/imagead/ImageAd;->setContainer(Landroid/view/ViewGroup;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 42
    :sswitch_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYouku:Lcom/youku/player/ad/imagead/ImageAd;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/imagead/ImageAdYouku;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYouku:Lcom/youku/player/ad/imagead/ImageAd;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYouku:Lcom/youku/player/ad/imagead/ImageAd;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    goto :goto_0

    .line 48
    :sswitch_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYoukuHtml5:Lcom/youku/player/ad/imagead/ImageAd;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYoukuHtml5:Lcom/youku/player/ad/imagead/ImageAd;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mYoukuHtml5:Lcom/youku/player/ad/imagead/ImageAd;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    goto :goto_0

    .line 54
    :sswitch_2
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPunchBox:Lcom/youku/player/ad/imagead/ImageAd;

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPunchBox:Lcom/youku/player/ad/imagead/ImageAd;

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPunchBox:Lcom/youku/player/ad/imagead/ImageAd;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    goto :goto_0

    .line 60
    :sswitch_3
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mAdsage:Lcom/youku/player/ad/imagead/ImageAd;

    if-nez v0, :cond_3

    .line 61
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/imagead/ImageAdAdsage;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mAdsage:Lcom/youku/player/ad/imagead/ImageAd;

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mAdsage:Lcom/youku/player/ad/imagead/ImageAd;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    goto :goto_0

    .line 66
    :sswitch_4
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mDomob:Lcom/youku/player/ad/imagead/ImageAd;

    if-nez v0, :cond_4

    .line 67
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/imagead/ImageAdDomob;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mDomob:Lcom/youku/player/ad/imagead/ImageAd;

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mDomob:Lcom/youku/player/ad/imagead/ImageAd;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method public show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/imagead/IImageAdCallback;)V
    .locals 1
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "request"    # I
    .param p3, "callback"    # Lcom/youku/player/ad/imagead/IImageAdCallback;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0, p1, p3}, Lcom/youku/player/ad/imagead/ImageAd;->start(Lcom/youku/player/goplay/AdvInfo;Lcom/youku/player/ad/imagead/IImageAdCallback;)V

    .line 93
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdContext;->mCurrentAd:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->startTimer()V

    .line 155
    :cond_0
    return-void
.end method
