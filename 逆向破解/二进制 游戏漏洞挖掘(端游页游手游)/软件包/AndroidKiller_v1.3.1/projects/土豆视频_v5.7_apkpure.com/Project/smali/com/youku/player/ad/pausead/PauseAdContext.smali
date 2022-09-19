.class public Lcom/youku/player/ad/pausead/PauseAdContext;
.super Ljava/lang/Object;
.source "PauseAdContext.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

.field private mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

.field private mDomob:Lcom/youku/player/ad/pausead/PauseAd;

.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mOffline:Lcom/youku/player/ad/pausead/PauseAd;

.field private mOfflineAdInstance:Lcom/youdo/vo/XAdInstance;

.field private mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field private mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field private mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

.field private mYouku:Lcom/youku/player/ad/pausead/PauseAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    .line 19
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    .line 20
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    .line 21
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    .line 22
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    .line 23
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    .line 33
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mActivity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 35
    iput-object p3, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 36
    iput-object p4, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 37
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->release()V

    .line 118
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->release()V

    .line 122
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->release()V

    .line 126
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->release()V

    .line 130
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->release()V

    .line 134
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    .line 136
    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->isMobiSageSDKInit:Z

    .line 137
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mActivity:Landroid/app/Activity;

    .line 138
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 139
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 140
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 141
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    .line 142
    return-void
.end method

.method public removeAllAd()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->removeAd()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->removeAd()V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->removeAd()V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->removeAd()V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAd;->removeAd()V

    .line 113
    :cond_4
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0, p1}, Lcom/youku/player/ad/pausead/PauseAd;->setContainer(Landroid/view/ViewGroup;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setOfflineAdInstance(Lcom/youdo/vo/XAdInstance;)V
    .locals 0
    .param p1, "offlineAdInstance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOfflineAdInstance:Lcom/youdo/vo/XAdInstance;

    .line 41
    return-void
.end method

.method public setType(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    return-void

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/pausead/PauseAdYouku;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mYouku:Lcom/youku/player/ad/pausead/PauseAd;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPunchBox:Lcom/youku/player/ad/pausead/PauseAd;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    goto :goto_0

    .line 61
    :pswitch_3
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Lcom/youku/player/ad/pausead/PauseAdAdsage;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/pausead/PauseAdAdsage;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mAdsage:Lcom/youku/player/ad/pausead/PauseAd;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    if-nez v0, :cond_3

    .line 68
    new-instance v0, Lcom/youku/player/ad/pausead/PauseAdDomob;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/player/ad/pausead/PauseAdDomob;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mDomob:Lcom/youku/player/ad/pausead/PauseAd;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    goto :goto_0

    .line 73
    :pswitch_5
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    if-nez v0, :cond_4

    .line 74
    new-instance v0, Lcom/youku/player/ad/pausead/PauseAdOffline;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v4, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v5, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOfflineAdInstance:Lcom/youdo/vo/XAdInstance;

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/ad/pausead/PauseAdOffline;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youdo/vo/XAdInstance;)V

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mOffline:Lcom/youku/player/ad/pausead/PauseAd;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V
    .locals 1
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "request"    # I
    .param p3, "callback"    # Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/youku/player/ad/pausead/PauseAdContext;->removeAllAd()V

    .line 93
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdContext;->mCurrentAd:Lcom/youku/player/ad/pausead/PauseAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/player/ad/pausead/PauseAd;->start(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V

    .line 95
    :cond_0
    return-void
.end method
