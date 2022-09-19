.class public abstract Lcom/youku/player/base/YoukuBasePlayerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "YoukuBasePlayerActivity.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;
.implements Lcom/youku/player/apiservice/ScreenChangeListener;
.implements Lcom/youku/player/apiservice/OnInitializedListener;
.implements Lcom/youku/player/ad/api/IAdControlListener;
.implements Lcom/youku/player/apiservice/IUserCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final END_PLAY:I = 0xca

.field public static final END_REQUEST:I = 0xc9

.field protected static handler:Landroid/os/Handler;

.field public static isHighEnd:Z


# instance fields
.field public is3GPause:Z

.field mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/youku/player/base/YoukuBasePlayerActivity$1;

    invoke-direct {v0}, Lcom/youku/player/base/YoukuBasePlayerActivity$1;-><init>()V

    sput-object v0, Lcom/youku/player/base/YoukuBasePlayerActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->is3GPause:Z

    return-void
.end method

.method public static getCurrentFormat()I
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 189
    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 193
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    invoke-static {p0}, Lcom/youku/player/ui/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    .line 195
    return-void
.end method


# virtual methods
.method public addDanmaku(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->addDanmaku(Ljava/util/ArrayList;)V

    .line 304
    return-void
.end method

.method public addPlugins()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->addPlugins()V

    .line 132
    return-void
.end method

.method protected changeConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->changeConfiguration(Landroid/content/res/Configuration;)V

    .line 221
    return-void
.end method

.method public clearUpDownFav()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->clearUpDownFav()V

    .line 208
    return-void
.end method

.method public closeDanmaku()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->closeDanmaku()V

    .line 300
    return-void
.end method

.method protected detectPlugin()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/youku/player/base/YoukuBasePlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/youku/player/base/YoukuBasePlayerActivity$2;-><init>(Lcom/youku/player/base/YoukuBasePlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public dissmissPauseAD()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->dissmissPauseAD()V

    .line 284
    return-void
.end method

.method public getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    return-object v0
.end method

.method public getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    return-object v0
.end method

.method public goFullScreen()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 128
    return-void
.end method

.method public goSmall()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goSmall()V

    .line 124
    return-void
.end method

.method public hideTipsPlugin()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideTipsPlugin()V

    .line 244
    return-void
.end method

.method public hideWebView()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideWebView()V

    .line 120
    return-void
.end method

.method public initDanmakuManager(Ljava/lang/String;I)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "cid"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->initDanmakuManager(Ljava/lang/String;IZ)V

    .line 316
    return-void
.end method

.method public isDanmakuClosed()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isDanmakuClosed()Z

    move-result v0

    return v0
.end method

.method public isMidAdShowing()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isMidAdShowing()Z

    move-result v0

    return v0
.end method

.method public isWebViewShown()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isWebViewShown()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1, p2, p3}, Lcom/youku/player/apiservice/IPlayerUiControl;->onActivityResult(IILandroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public onAdvInfoGetted(Z)V
    .locals 0
    .param p1, "hasAd"    # Z

    .prologue
    .line 272
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 150
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onBackPressed()V

    .line 151
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onDestroy()V

    .line 90
    return-void
.end method

.method public abstract onFullscreenListener()V
.end method

.method public onInitializationSuccess(Lcom/youku/player/base/YoukuPlayer;)V
    .locals 1
    .param p1, "player"    # Lcom/youku/player/base/YoukuPlayer;

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/youku/player/base/YoukuPlayer;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 156
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setUserCallback(Lcom/youku/player/apiservice/IUserCallback;)V

    .line 157
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1, p2}, Lcom/youku/player/apiservice/IPlayerUiControl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onLowMemory()V

    .line 177
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onLowMemory()V

    .line 178
    return-void
.end method

.method public onMidAdLoadingEndListener()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onMidAdLoadingStartListener()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 76
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->onNewIntent(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 64
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onPause()V

    .line 65
    return-void
.end method

.method public onPayClick()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onPayClick()V

    .line 237
    return-void
.end method

.method public onQualitySmoothChangeEnd(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 343
    return-void
.end method

.method public onQualitySmoothChangeStart(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 338
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onResume()V

    .line 83
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSkipAdClicked()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public abstract onSmallscreenListener()V
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 226
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onStart()V

    .line 227
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 70
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->onStop()V

    .line 71
    return-void
.end method

.method public openDanmaku()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->openDanmaku()V

    .line 296
    return-void
.end method

.method public resizeMediaPlayer(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->resizeMediaPlayer(I)V

    .line 172
    return-void
.end method

.method public sendDanmaku(IIILjava/lang/String;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "position"    # I
    .param p3, "color"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/youku/player/apiservice/IPlayerUiControl;->sendDanmaku(IIILjava/lang/String;)V

    .line 288
    return-void
.end method

.method public sendDanmaku(Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;)V
    .locals 1
    .param p1, "liveDanmakuInfo"    # Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->sendDanmaku(Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;)V

    .line 292
    return-void
.end method

.method public setAdState(Lcom/youku/player/ad/AdState;)V
    .locals 1
    .param p1, "state"    # Lcom/youku/player/ad/AdState;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 280
    return-void
.end method

.method public abstract setPadHorizontalLayout()V
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 330
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 333
    return-void
.end method

.method public setmPluginFullScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 1
    .param p1, "mPluginFullScreenPlay"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->setmPluginFullScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V

    .line 200
    return-void
.end method

.method public setmPluginSmallScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 1
    .param p1, "mPluginSmallScreenPlay"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->setmPluginSmallScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V

    .line 204
    return-void
.end method

.method public showWebView(ILandroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1, p2}, Lcom/youku/player/apiservice/IPlayerUiControl;->showWebView(ILandroid/support/v4/app/Fragment;)V

    .line 109
    return-void
.end method

.method public unHideTipsPlugin()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->unHideTipsPlugin()V

    .line 251
    return-void
.end method

.method public updatePlugin(I)V
    .locals 1
    .param p1, "pluginId"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 326
    return-void
.end method
