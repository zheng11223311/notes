.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;
.super Landroid/widget/PopupWindow;
.source "FullScreenPlaylist.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Lcom/tudou/ui/activity/DetailActivity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPluginFullScreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

.field private mRootView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

.field private mVideolist:Lcom/tudou/detail/vo/VideoList;

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V
    .locals 1
    .param p1, "context"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p2, "plugin"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mWindowWidth:I

    .line 34
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mContext:Lcom/tudou/ui/activity/DetailActivity;

    .line 35
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mContext:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mPluginFullScreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 37
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->initWindow(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->setupViews()V

    .line 39
    return-void
.end method

.method private initWindow(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->setWindowLayoutMode(II)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->setFocusable(Z)V

    .line 44
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xbf

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030261

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mRootView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mRootView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->setContentView(Landroid/view/View;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setCurrentVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mRootView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->setSelection(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setVideoList(Lcom/tudou/detail/vo/VideoList;)V
    .locals 1
    .param p1, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    .line 60
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mRootView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->setVideoList(Lcom/tudou/detail/vo/VideoList;)V

    .line 61
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mRootView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->initialize()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->dismiss()V

    goto :goto_0
.end method

.method public show(Landroid/view/View;)Z
    .locals 2
    .param p1, "anthor"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mRootView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->initialize()V

    .line 74
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "number"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v1}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mWindowWidth:I

    .line 80
    :goto_0
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mWindowWidth:I

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->showAsDropDown(Landroid/view/View;II)V

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_1
    return v0

    .line 78
    :cond_0
    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylist;->mWindowWidth:I

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
