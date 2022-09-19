.class public Lcom/youku/player/config/YoukuController;
.super Lcom/youku/player/apiservice/PlantformController;
.source "YoukuController.java"


# static fields
.field private static final IR_UAID:Ljava/lang/String; = "UA-YOUKU-140001"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/player/apiservice/PlantformController;-><init>()V

    .line 44
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/player/config/YoukuController;->mSiteValue:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "vid"

    iput-object v0, p0, Lcom/youku/player/config/YoukuController;->mVidText:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->YOUKU_LIVE:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    iput-object v0, p0, Lcom/youku/player/config/YoukuController;->mLiveEncryptType:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    .line 47
    return-void
.end method

.method private showInputPassWordDialog(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 232
    sget v1, Lcom/youku/android/player/R$string;->player_error_dialog_password_required:I

    new-instance v2, Lcom/youku/player/config/YoukuController$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/youku/player/config/YoukuController$1;-><init>(Lcom/youku/player/config/YoukuController;Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-static {v1, v2}, Lcom/youku/player/ui/widget/PasswordInputDialog;->newInstance(ILcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;)Lcom/youku/player/ui/widget/PasswordInputDialog;

    move-result-object v0

    .line 252
    .local v0, "newFragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 253
    return-void
.end method


# virtual methods
.method public getAdDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/youku/player/util/URLContainer;->YOUKU_AD_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fieldId"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "oip"    # Ljava/lang/String;
    .param p5, "sid"    # Ljava/lang/String;
    .param p6, "is"    # Ljava/io/InputStream;
    .param p7, "did"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-object v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    sget-object v6, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lcom/baseproject/utils/Util;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string v0, "&e="

    return-object v0
.end method

.method public handleCallbackIfVideoEncrypted(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V
    .locals 2
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 109
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x69

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x6b

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/youku/player/config/YoukuController;->showInputPassWordDialog(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 112
    :cond_1
    return-void
.end method

.method public initIRVideo(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const-string v0, "UA-YOUKU-140001"

    const-string/jumbo v1, "youku"

    invoke-static {p1, v0, v1}, Lcom/youku/statistics/IRVideoWrapper;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public isTrialOver(Lcom/youku/player/module/VideoUrlInfo;I)Z
    .locals 2
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "position"    # I

    .prologue
    .line 221
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

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

    if-lt v0, v1, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noRightPlay(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x68

    if-ne v3, v4, :cond_1

    .line 82
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->hasRight:Z

    .line 83
    invoke-virtual {p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 84
    invoke-virtual {p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 85
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v4, "\u65e0\u7248\u6743\u64ad\u653e"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v3, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v3}, Lcom/youku/player/BaseMediaPlayer;->resetSurfaceHolder()V

    .line 88
    :cond_0
    iget-object v3, p3, Lcom/youku/player/goplay/GoplayException;->webUrl:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 89
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIToast:Lcom/youku/player/apiservice/IToast;

    if-eqz v3, :cond_1

    .line 90
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIToast:Lcom/youku/player/apiservice/IToast;

    const-string/jumbo v4, "\u8be5\u89c6\u9891\u6682\u65e0\u9002\u5408\u672c\u673a\u64ad\u653e\u7684\u683c\u5f0f"

    invoke-interface {v3, v4}, Lcom/youku/player/apiservice/IToast;->showToast(Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string/jumbo v3, "\u8be5\u89c6\u9891\u6682\u65e0\u4f18\u9177\u5ba2\u6237\u7aef\u7248\u6743\uff0c\u9700\u8fdb\u5165\u4f18\u9177\u7f51\u89c2\u770b"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual {p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    .line 96
    iget-object v3, p3, Lcom/youku/player/goplay/GoplayException;->webUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 97
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGetHLSVideoInfoFailed(Ljava/lang/ref/WeakReference;Lcom/youku/player/goplay/GoplayException;)V
    .locals 5
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
    .line 203
    .local p1, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 204
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_1

    .line 217
    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0xd

    if-ne v3, v4, :cond_0

    .line 207
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.youku.ui.activity.LoginRegistCardViewDialogActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v3, "from"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string/jumbo v3, "track_login_source"

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGetVideoInfoFailed(Ljava/lang/ref/WeakReference;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
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
    const/4 v1, 0x0

    const/16 v5, -0x70

    .line 53
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 54
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/youku/player/config/YoukuController;->noRightPlay(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V

    .line 57
    invoke-virtual {p0, p2, p3}, Lcom/youku/player/config/YoukuController;->payVideo(Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    :cond_2
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 63
    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 65
    :cond_3
    iget-object v2, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x190

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0xca

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    if-eq v3, v5, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x6a

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x64

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x65

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x66

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x68

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x69

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x6b

    if-ne v3, v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v2, v1}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetFail(Z)V

    .line 73
    invoke-virtual {p0, v0, p2, p3}, Lcom/youku/player/config/YoukuController;->handleCallbackIfVideoEncrypted(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V

    goto/16 :goto_0
.end method

.method public onQualitySmoothChangeEnd(Lcom/youku/player/apiservice/IPlayerUiControl;I)V
    .locals 1
    .param p1, "uiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p2, "quality"    # I

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->showSmoothChangeQualityTip(Z)V

    .line 272
    :cond_0
    return-void
.end method

.method public onQualitySmoothChangeStart(Lcom/youku/player/apiservice/IPlayerUiControl;I)V
    .locals 1
    .param p1, "uiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p2, "quality"    # I

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->showSmoothChangeQualityTip(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method payVideo(Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;)V
    .locals 3
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 152
    invoke-virtual {p2}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x70

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v0, p2, Lcom/youku/player/goplay/GoplayException;->payInfo:Lcom/youku/player/module/PayInfo;

    .line 154
    .local v0, "payInfo":Lcom/youku/player/module/PayInfo;
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIPayCallBack:Lcom/youku/player/apiservice/IPayCallBack;

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIPayCallBack:Lcom/youku/player/apiservice/IPayCallBack;

    iget-object v2, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/youku/player/apiservice/IPayCallBack;->needPay(Ljava/lang/String;Lcom/youku/player/module/PayInfo;)V

    .line 159
    .end local v0    # "payInfo":Lcom/youku/player/module/PayInfo;
    :cond_0
    return-void
.end method

.method public playHLS(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p3, "liveId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 175
    new-instance v0, Lcom/youku/player/service/GetHlsUrlServiceYouku;

    invoke-direct {v0, p1}, Lcom/youku/player/service/GetHlsUrlServiceYouku;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "getHlsUrlServiceYouku":Lcom/youku/player/service/GetHlsUrlServiceYouku;
    invoke-virtual {v0, p2, p3, p4}, Lcom/youku/player/service/GetHlsUrlServiceYouku;->getHlsUrl(Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 178
    return-void
.end method

.method public playVideoWithPassword(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayRequest()Lcom/youku/player/request/PlayRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/request/PlayRequest;->getPlayVideoinfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 138
    .local v0, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    if-eqz v0, :cond_0

    .line 139
    iput-object p2, v0, Lcom/youku/player/module/PlayVideoInfo;->password:Ljava/lang/String;

    .line 140
    invoke-virtual {p1, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 142
    :cond_0
    return-void
.end method

.method public processHttpError(Lcom/youku/player/goplay/TaskGetVideoUrl;ILjava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "task"    # Lcom/youku/player/goplay/TaskGetVideoUrl;
    .param p2, "response"    # I
    .param p3, "httpConn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 169
    const-string v0, "400"

    sput-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public processRawData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 132
    return-object p1
.end method

.method public setPlayCode(Lcom/youku/player/goplay/GoplayException;)V
    .locals 2
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/youku/player/goplay/GoplayException;->getErrorCode()I

    move-result v0

    .line 118
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

    .line 123
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v1, "400"

    sput-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWaterMarkInvisible(Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 1
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/youku/player/base/YoukuPlayerView;->setWaterMarkVisible(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public setWaterMarkVisible(Lcom/youku/player/base/YoukuPlayerView;I)V
    .locals 1
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "type"    # I

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/youku/player/base/YoukuPlayerView;->setWaterMarkVisible(Z)V

    .line 197
    :cond_0
    return-void
.end method
