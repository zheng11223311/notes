.class public Lcom/tudou/ui/activity/DetailHLSActivity;
.super Lcom/youku/player/base/YoukuBasePlayerActivity;
.source "DetailHLSActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;
    }
.end annotation


# instance fields
.field private batteryreceiver:Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;

.field private id:Ljava/lang/String;

.field islock:Z

.field private isplay:Z

.field mFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

.field mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

.field mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

.field private mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field mplugsmall:Lcom/tudou/detail/plugin/hls/PluginSmallHLS;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;-><init>()V

    .line 101
    return-void
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->id:Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method

.method private initPlayer()V
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/tudou/android/Youku;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "video_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->islock:Z

    .line 179
    const-string/jumbo v0, "video_lock"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->setOrientLocked()V

    .line 181
    new-instance v0, Lcom/tudou/ui/activity/DetailHLSActivity$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailHLSActivity$1;-><init>(Lcom/tudou/ui/activity/DetailHLSActivity;)V

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setIUserInfo(Lcom/youku/player/apiservice/IUserInfo;)V

    .line 215
    new-instance v0, Lcom/tudou/ui/activity/DetailHLSActivity$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailHLSActivity$2;-><init>(Lcom/tudou/ui/activity/DetailHLSActivity;)V

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setILanguageCode(Lcom/youku/player/apiservice/ILanguageCode;)V

    .line 222
    return-void
.end method

.method private setOrientLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-static {}, Lcom/youku/util/UIUtils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 166
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 167
    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/DetailHLSActivity;->setRequestedOrientation(I)V

    .line 175
    .end local v0    # "display":Landroid/view/Display;
    :goto_0
    return-void

    .line 169
    .restart local v0    # "display":Landroid/view/Display;
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/DetailHLSActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 172
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/DetailHLSActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public goPlayVideo()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playHLS(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailHLSActivity;->requestWindowFeature(I)Z

    .line 56
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailHLSActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->getIntentData()V

    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->initPlayer()V

    .line 59
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailHLSActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f0c0109

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailHLSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/player/base/YoukuPlayerView;

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    .line 61
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    const/16 v2, 0x2712

    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    sget-object v5, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    const/4 v6, 0x0

    sget-wide v8, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "6b72db72a6639e1d5a2488ed485192f6"

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/youku/player/base/YoukuPlayerView;->initialize(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;-><init>(Lcom/tudou/ui/activity/DetailHLSActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->batteryreceiver:Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;

    .line 66
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->batteryreceiver:Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tudou/ui/activity/DetailHLSActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 154
    const-string/jumbo v0, "test1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy islock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->islock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/tudou/android/Youku;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "video_lock"

    iget-boolean v2, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->islock:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->batteryreceiver:Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->batteryreceiver:Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailHLSActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->batteryreceiver:Lcom/tudou/ui/activity/DetailHLSActivity$BatteryBroadcastReceiver;

    .line 161
    :cond_0
    return-void
.end method

.method public onFullscreenListener()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onInitializationSuccess(Lcom/youku/player/base/YoukuPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/youku/player/base/YoukuPlayer;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onInitializationSuccess(Lcom/youku/player/base/YoukuPlayer;)V

    .line 80
    const-string v0, "PlayFlow"

    const-string v1, "onInitializationSuccess \u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    .line 83
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 86
    new-instance v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, p0, p0, v1}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;-><init>(Landroid/content/Context;Lcom/tudou/ui/activity/DetailHLSActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .line 88
    new-instance v0, Lcom/tudou/detail/plugin/hls/PluginSmallHLS;

    invoke-direct {v0, p0}, Lcom/tudou/detail/plugin/hls/PluginSmallHLS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mplugsmall:Lcom/tudou/detail/plugin/hls/PluginSmallHLS;

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayer;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setScreenChangeListener(Lcom/youku/player/apiservice/ScreenChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mYoukuPlayer:Lcom/youku/player/base/YoukuPlayer;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayer;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/youku/player/apiservice/IPlayerAdControl;->setListener(Lcom/youku/player/ad/api/IAdControlListener;)V

    .line 91
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mplugsmall:Lcom/tudou/detail/plugin/hls/PluginSmallHLS;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailHLSActivity;->setmPluginSmallScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V

    .line 92
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DetailHLSActivity;->setmPluginFullScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V

    .line 93
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->addPlugins()V

    .line 94
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->goPlayVideo()V

    .line 95
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->getIsplay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->isplay:Z

    .line 131
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onPause()V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/youku/player/base/YoukuBasePlayerActivity;->onResume()V

    .line 122
    iget-boolean v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->isplay:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailHLSActivity;->mFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->startPlay()V

    .line 126
    :cond_0
    return-void
.end method

.method public onSmallscreenListener()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onkeyback()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/tudou/ui/activity/DetailHLSActivity;->finish()V

    .line 100
    return-void
.end method

.method public setPadHorizontalLayout()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
