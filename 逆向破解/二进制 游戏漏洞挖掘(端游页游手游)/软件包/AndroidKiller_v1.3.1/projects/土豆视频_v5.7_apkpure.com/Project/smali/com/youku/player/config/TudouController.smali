.class public Lcom/youku/player/config/TudouController;
.super Lcom/youku/player/apiservice/PlantformController;
.source "TudouController.java"


# static fields
.field private static final IR_UAID:Ljava/lang/String; = "UA-TUDOU-140001"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/youku/player/apiservice/PlantformController;-><init>()V

    .line 41
    const-string v0, "-1"

    iput-object v0, p0, Lcom/youku/player/config/TudouController;->mSiteValue:Ljava/lang/String;

    .line 42
    const-string v0, "itemCode"

    iput-object v0, p0, Lcom/youku/player/config/TudouController;->mVidText:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->TUDOU_LIVE:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    iput-object v0, p0, Lcom/youku/player/config/TudouController;->mLiveEncryptType:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    .line 44
    return-void
.end method

.method private createEncryptDialog(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/ui/widget/TudouEncryptDialog;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 236
    new-instance v0, Lcom/youku/player/ui/widget/TudouEncryptDialog;

    sget v1, Lcom/youku/android/player/R$style;->tudou_encrypt_dialog:I

    invoke-direct {v0, p1, v1}, Lcom/youku/player/ui/widget/TudouEncryptDialog;-><init>(Landroid/content/Context;I)V

    .line 237
    .local v0, "encryptDialog":Lcom/youku/player/ui/widget/TudouEncryptDialog;
    new-instance v1, Lcom/youku/player/config/TudouController$1;

    invoke-direct {v1, p0, p2}, Lcom/youku/player/config/TudouController$1;-><init>(Lcom/youku/player/config/TudouController;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->setPositiveClickListener(Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;)V

    .line 243
    return-object v0
.end method


# virtual methods
.method public getAdDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/youku/player/util/URLContainer;->TUDOU_AD_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fieldId"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "oip"    # Ljava/lang/String;
    .param p5, "sid"    # Ljava/lang/String;
    .param p6, "is"    # Ljava/io/InputStream;
    .param p7, "did"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/baseproject/utils/Util;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const-string v0, "&_e_="

    return-object v0
.end method

.method public handleCallbackIfVideoEncrypted(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V
    .locals 3
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 109
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x69

    if-ne v1, v2, :cond_1

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/youku/player/config/TudouController;->createEncryptDialog(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/ui/widget/TudouEncryptDialog;

    move-result-object v0

    .line 111
    .local v0, "dialog":Lcom/youku/player/ui/widget/TudouEncryptDialog;
    invoke-virtual {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->show()V

    .line 112
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->tudou_dialog_input_password:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->setEncryptTips(Ljava/lang/String;)V

    .line 121
    .end local v0    # "dialog":Lcom/youku/player/ui/widget/TudouEncryptDialog;
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x6b

    if-ne v1, v2, :cond_0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/youku/player/config/TudouController;->createEncryptDialog(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/ui/widget/TudouEncryptDialog;

    move-result-object v0

    .line 118
    .restart local v0    # "dialog":Lcom/youku/player/ui/widget/TudouEncryptDialog;
    invoke-virtual {v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->show()V

    .line 119
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->tudou_dialog_password_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->setEncryptTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initIRVideo(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const-string v0, "UA-TUDOU-140001"

    const-string/jumbo v1, "tudou"

    invoke-static {p1, v0, v1}, Lcom/youku/statistics/IRVideoWrapper;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public isTrialOver(Lcom/youku/player/module/VideoUrlInfo;I)Z
    .locals 2
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "position"    # I

    .prologue
    .line 223
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "time"

    iget-object v1, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    div-int/lit16 v0, p2, 0x3e8

    iget-object v1, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->time:I

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "episodes"

    iget-object v1, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v0

    iget-object v1, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v0, v1, :cond_2

    .line 230
    :cond_1
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noRightPlay(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x68

    if-ne v1, v2, :cond_1

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->hasRight:Z

    .line 94
    invoke-virtual {p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 95
    invoke-virtual {p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 96
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u65e0\u7248\u6743\u64ad\u653e"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v1}, Lcom/youku/player/BaseMediaPlayer;->resetSurfaceHolder()V

    .line 99
    :cond_0
    iget-object v1, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v1, p3}, Lcom/youku/player/plugin/PluginManager;->onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGetHLSVideoInfoFailed(Ljava/lang/ref/WeakReference;Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p2, "e"    # Lcom/youku/player/goplay/GoplayException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;",
            "Lcom/youku/player/goplay/GoplayException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;"
    return-void
.end method

.method public onGetVideoInfoFailed(Ljava/lang/ref/WeakReference;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "e"    # Lcom/youku/player/goplay/GoplayException;
    .param p4, "vid"    # Ljava/lang/String;
    .param p5, "isTudouAlbum"    # Z
    .param p6, "playlistCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;",
            "Lcom/youku/player/plugin/MediaPlayerDelegate;",
            "Lcom/youku/player/goplay/GoplayException;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;"
    const/4 v3, 0x1

    const/16 v8, -0x69

    const/16 v7, -0x6b

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 51
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v1, Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v1}, Lcom/youku/player/module/VideoUrlInfo;-><init>()V

    .line 54
    .local v1, "videoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    if-eqz p5, :cond_7

    .line 55
    iget-object v4, p3, Lcom/youku/player/goplay/GoplayException;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, p4}, Lcom/youku/player/module/VideoUrlInfo;->setShowId(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v3}, Lcom/youku/player/module/VideoUrlInfo;->setAlbum(Z)V

    .line 62
    :goto_1
    iput-object p6, v1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 63
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getVideoUrlInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 64
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getVideoUrlInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getTip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setTip(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getVideoUrlInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVipError()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setVipError(I)V

    .line 66
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getVideoUrlInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iput-object v4, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    .line 68
    :cond_2
    iput-object v1, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 69
    invoke-virtual {p0, v0, p2, p3}, Lcom/youku/player/config/TudouController;->noRightPlay(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v4}, Lcom/youku/player/BaseMediaPlayer;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    :cond_3
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v4

    if-eq v4, v8, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v4

    if-eq v4, v7, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->showTip()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 77
    :cond_4
    iget-object v4, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v5

    const/16 v6, -0x6a

    if-eq v5, v6, :cond_5

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v5

    const/16 v6, -0x64

    if-eq v5, v6, :cond_5

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v5

    const/16 v6, -0x65

    if-eq v5, v6, :cond_5

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v5

    const/16 v6, -0x66

    if-eq v5, v6, :cond_5

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v5

    if-eq v5, v8, :cond_5

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v5

    if-ne v5, v7, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {v4, v2}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetFail(Z)V

    .line 83
    invoke-virtual {p0, v0, p2, p3}, Lcom/youku/player/config/TudouController;->handleCallbackIfVideoEncrypted(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V

    goto/16 :goto_0

    .line 59
    :cond_7
    invoke-virtual {v1, p4}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setAlbum(Z)V

    goto/16 :goto_1
.end method

.method public onQualitySmoothChangeEnd(Lcom/youku/player/apiservice/IPlayerUiControl;I)V
    .locals 1
    .param p1, "uiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p2, "quality"    # I

    .prologue
    .line 260
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getUserCallback()Lcom/youku/player/apiservice/IUserCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getUserCallback()Lcom/youku/player/apiservice/IUserCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/youku/player/apiservice/IUserCallback;->onQualitySmoothChangeEnd(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public onQualitySmoothChangeStart(Lcom/youku/player/apiservice/IPlayerUiControl;I)V
    .locals 1
    .param p1, "uiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p2, "quality"    # I

    .prologue
    .line 253
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getUserCallback()Lcom/youku/player/apiservice/IUserCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getUserCallback()Lcom/youku/player/apiservice/IUserCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/youku/player/apiservice/IUserCallback;->onQualitySmoothChangeStart(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public playHLS(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p3, "liveId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 191
    new-instance v0, Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-direct {v0, p1}, Lcom/youku/player/service/GetHlsUrlServiceTudou;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "getHlsUrlServiceTudou":Lcom/youku/player/service/GetHlsUrlServiceTudou;
    const-string v1, "flv"

    invoke-virtual {v0, p2, p3, v1, p4}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->getHlsUrl(Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 194
    return-void
.end method

.method public playVideoWithPassword(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouVideoWithPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public processHttpError(Lcom/youku/player/goplay/TaskGetVideoUrl;ILjava/net/HttpURLConnection;)V
    .locals 10
    .param p1, "task"    # Lcom/youku/player/goplay/TaskGetVideoUrl;
    .param p2, "response"    # I
    .param p3, "httpConn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 171
    const/16 v3, 0x190

    if-lt p2, v3, :cond_1

    .line 173
    const/16 v3, 0x19a

    if-ne p2, v3, :cond_0

    .line 174
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 175
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/baseproject/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 176
    .local v0, "d":D
    double-to-long v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lcom/baseproject/utils/Util;->TIME_STAMP:Ljava/lang/Long;

    .line 177
    invoke-virtual {p1}, Lcom/youku/player/goplay/TaskGetVideoUrl;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-static {v3, v4}, Lcom/youku/player/util/URLContainer;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setRequestUrl(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/youku/player/goplay/TaskGetVideoUrl;->connectAPI()V

    .line 186
    .end local v0    # "d":D
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_1
    const-string v3, "400"

    sput-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public processRawData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-object p1

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    const-string v3, "094b2a34e812a4282f25c7ca1987789f"

    invoke-static {v2, v3}, Lcom/youku/player/util/PlayerUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .end local p1    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    move-object p1, v0

    .end local v0    # "data":Ljava/lang/String;
    .restart local p1    # "data":Ljava/lang/String;
    goto :goto_0
.end method

.method public setPlayCode(Lcom/youku/player/goplay/GoplayException;)V
    .locals 2
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v0

    .line 126
    .local v0, "code":I
    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const/16 v1, -0x65

    if-eq v0, v1, :cond_0

    const/16 v1, -0x66

    if-eq v0, v1, :cond_0

    const/16 v1, -0x68

    if-eq v0, v1, :cond_0

    const/16 v1, -0x69

    if-eq v0, v1, :cond_0

    const/16 v1, -0x6a

    if-eq v0, v1, :cond_0

    const/16 v1, -0x6b

    if-eq v0, v1, :cond_0

    const/16 v1, -0x6c

    if-eq v0, v1, :cond_0

    const/16 v1, -0x70

    if-eq v0, v1, :cond_0

    const/16 v1, -0x7d

    if-eq v0, v1, :cond_0

    const/16 v1, -0x7e

    if-eq v0, v1, :cond_0

    const/16 v1, -0x7f

    if-eq v0, v1, :cond_0

    const/16 v1, -0x80

    if-eq v0, v1, :cond_0

    const/16 v1, -0xca

    if-eq v0, v1, :cond_0

    const/16 v1, -0xcc

    if-eq v0, v1, :cond_0

    const/16 v1, -0x12d

    if-eq v0, v1, :cond_0

    const/16 v1, -0x134

    if-eq v0, v1, :cond_0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    const/16 v1, -0x3e4

    if-ne v0, v1, :cond_1

    .line 131
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v1, "400"

    sput-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWaterMarkInvisible(Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 0
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/youku/player/base/YoukuPlayerView;->setTudouWaterMarkInvisible()V

    .line 206
    :cond_0
    return-void
.end method

.method public setWaterMarkVisible(Lcom/youku/player/base/YoukuPlayerView;I)V
    .locals 0
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "type"    # I

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1, p2}, Lcom/youku/player/base/YoukuPlayerView;->setTudouWaterMarkFrameType(I)V

    .line 213
    :cond_0
    return-void
.end method
