.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;
.super Ljava/lang/Object;
.source "FullScreenVideoSetting.java"


# instance fields
.field private containerView:Landroid/view/View;

.field private context:Landroid/app/Activity;

.field private listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

.field private mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field orientLock:Z

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;Landroid/content/SharedPreferences;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "containerView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;
    .param p4, "sp"    # Landroid/content/SharedPreferences;
    .param p5, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->orientLock:Z

    .line 54
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->context:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->containerView:Landroid/view/View;

    .line 56
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->sp:Landroid/content/SharedPreferences;

    .line 57
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    .line 58
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 59
    return-void
.end method

.method private setOrientUnlock()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/util/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->context:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->context:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method changeLoop(I)V
    .locals 0
    .param p1, "playMode"    # I

    .prologue
    .line 283
    return-void
.end method

.method varargs changeRadioPadding([Landroid/view/View;)V
    .locals 7
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 163
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 164
    move-object v0, p1

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 165
    .local v3, "view":Landroid/view/View;
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setOrientLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-static {}, Lcom/youku/util/UIUtils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 252
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->context:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 264
    .end local v0    # "display":Landroid/view/Display;
    :goto_0
    return-void

    .line 255
    .restart local v0    # "display":Landroid/view/Display;
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->context:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 258
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVideoSetting;->context:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method videoPlayRuleSetting()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method videoSizeChangeSetting()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
