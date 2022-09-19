.class public abstract Lcom/youku/player/plugin/PluginOverlay;
.super Landroid/widget/FrameLayout;
.source "PluginOverlay.java"

# interfaces
.implements Lcom/youku/player/plugin/LoginObserver;
.implements Lcom/youku/player/plugin/MediaPlayerObserver;


# instance fields
.field public mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field public pluginEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginOverlay;->pluginEnable:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginOverlay;->pluginEnable:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginOverlay;->pluginEnable:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginOverlay;->pluginEnable:Z

    .line 23
    iput-object p2, p0, Lcom/youku/player/plugin/PluginOverlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract back()V
.end method

.method public download()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public loginFail()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public loginSucc()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public needDownloadDRMSo(Ljava/lang/String;)V
    .locals 0
    .param p1, "soName"    # Ljava/lang/String;

    .prologue
    .line 220
    return-void
.end method

.method public abstract newVideo()V
.end method

.method public abstract onADplaying()V
.end method

.method public onBufferPercentUpdate(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 216
    return-void
.end method

.method public abstract onClearUpDownFav()V
.end method

.method public abstract onDown()V
.end method

.method public onDownloadFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 153
    return-void
.end method

.method public onDownloadSucc()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public abstract onFavor()V
.end method

.method public abstract onMute(Z)V
.end method

.method public onNetSpeedChange(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 174
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
.end method

.method public abstract onPlayReleateNoRightVideo()V
.end method

.method public onPluginAdded()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public abstract onRealVideoStart()V
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onReplay()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public abstract onStart()V
.end method

.method public onSubscribe()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onSubtitlePrepared()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public abstract onUnFavor()V
.end method

.method public onUnSubscribe()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public abstract onUp()V
.end method

.method public abstract onVideoChange()V
.end method

.method public abstract onVideoInfoGetFail(Z)V
.end method

.method public abstract onVideoInfoGetted()V
.end method

.method public abstract onVideoInfoGetting()V
.end method

.method public abstract onVolumnDown()V
.end method

.method public abstract onVolumnUp()V
.end method

.method public set3GTips()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public abstract setVisible(Z)V
.end method
