.class public Lcom/youku/player/danmaku/LocalDanmakuManager;
.super Ljava/lang/Object;
.source "LocalDanmakuManager.java"

# interfaces
.implements Lcom/youku/player/danmaku/IDanmakuManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;
    }
.end annotation


# static fields
.field public static final DANMAKUOPEN:I = 0x1

.field public static final DANMAKUPAUSE:I = 0x4

.field public static final DANMAKUPLAY:I = 0x2

.field public static TAG:Ljava/lang/String;

.field public static danmakuHandler:Landroid/os/Handler;


# instance fields
.field public beginMs:I

.field private context:Landroid/content/Context;

.field public danmakuLooper:Landroid/os/Looper;

.field public danmakuProcessStatus:I

.field public danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

.field public isCanSeek:Z

.field public isPaused:Z

.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "LocalDanmu"

    sput-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p3, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    .line 30
    iput v1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->beginMs:I

    .line 31
    iput-boolean v1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isCanSeek:Z

    .line 41
    iput-object p1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    .line 43
    iput-object p3, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 44
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->getDanmakuUtils()Lcom/youku/player/danmaku/DanmakuUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "danmuThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuLooper:Landroid/os/Looper;

    .line 48
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/danmaku/LocalDanmakuManager;)Lcom/youku/player/base/YoukuPlayerView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/LocalDanmakuManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/danmaku/LocalDanmakuManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/LocalDanmakuManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/youku/player/danmaku/LocalDanmakuManager;->fileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/danmaku/LocalDanmakuManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/LocalDanmakuManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private fileToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/youku/libmanager/FileUtils;->file2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addDanmaku(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 322
    return-void
.end method

.method public addDanmaku(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    return-void
.end method

.method public beginDanmaku(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "beginTime"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5355\u89c6\u9891\u91cd\u590d\u64ad\u653e\uff0c\u4e0d\u518dbegin"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/LocalDanmakuManager$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/danmaku/LocalDanmakuManager$1;-><init>(Lcom/youku/player/danmaku/LocalDanmakuManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public closeCMSDanmaku()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public closeDanmaku()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5173\u95ed\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    const-string v1, "danmakuSwith"

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/danmaku/LocalDanmakuManager;->setDanmakuPreferences(ZLjava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->hideDanmaku()V

    .line 113
    :cond_0
    return-void
.end method

.method public continueDanmaku()V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    .line 215
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->showDanmaku()V

    .line 219
    :cond_0
    return-void
.end method

.method public getDanmakuCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "danmakuInfo"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public handleDanmakuEnable(Z)V
    .locals 0
    .param p1, "danmakuEnable"    # Z

    .prologue
    .line 282
    return-void
.end method

.method public handleDanmakuInfo(Ljava/lang/String;II)V
    .locals 0
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "minute_at"    # I
    .param p3, "minute_count"    # I

    .prologue
    .line 302
    return-void
.end method

.method public hideDanmaku()V
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->hideDanmaku()V

    .line 190
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u9690\u85cf\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public hideDanmakuAgain()V
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->hideDanmaku()V

    .line 228
    :cond_0
    return-void
.end method

.method public hideDanmakuWhenOpen()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    .line 206
    invoke-virtual {p0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->hideDanmaku()V

    .line 207
    invoke-virtual {p0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->pauseDanmaku()V

    .line 209
    :cond_0
    return-void
.end method

.method public hideDanmakuWhenRotate()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public isDanmakuClosed()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public isHls()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public onPositionChanged(I)V
    .locals 0
    .param p1, "currentPosition"    # I

    .prologue
    .line 272
    return-void
.end method

.method public openDanmaku()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    const-string v1, "danmakuSwith"

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/danmaku/LocalDanmakuManager;->setDanmakuPreferences(ZLjava/lang/String;)V

    .line 99
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u6253\u5f00\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->showDanmaku()V

    .line 104
    :cond_0
    return-void
.end method

.method public pauseDanmaku()V
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x5

    iput v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    .line 121
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->pauseDanmaku()V

    .line 122
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u6682\u505c\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public releaseDanmaku()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->releaseDanmaku()V

    .line 198
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u91ca\u653e\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public releaseDanmakuWhenDestroy()V
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->hideDanmaku()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->releaseDanmaku()V

    .line 258
    :cond_0
    return-void
.end method

.method public resetAndReleaseDanmakuInfo()V
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->hideDanmaku()V

    .line 241
    invoke-virtual {p0}, Lcom/youku/player/danmaku/LocalDanmakuManager;->resetDanmakuInfo()V

    .line 242
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/LocalDanmakuManager$2;

    invoke-direct {v1, p0}, Lcom/youku/player/danmaku/LocalDanmakuManager$2;-><init>(Lcom/youku/player/danmaku/LocalDanmakuManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :cond_0
    return-void
.end method

.method public resetDanmakuInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    .line 233
    iput-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    .line 234
    iput v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->beginMs:I

    .line 235
    iput-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isCanSeek:Z

    .line 236
    return-void
.end method

.method public resumeDanmaku()V
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    .line 136
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->resumeDanmaku()V

    .line 137
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u7ee7\u7eed\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekToDanmaku(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 145
    iput p1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->beginMs:I

    .line 146
    iget-boolean v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->isCanSeek:Z

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;

    invoke-direct {v0, p0, p1}, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;-><init>(Lcom/youku/player/danmaku/LocalDanmakuManager;I)V

    invoke-virtual {v0}, Lcom/youku/player/danmaku/LocalDanmakuManager$seekDanmakuRunnable;->run()V

    .line 150
    :cond_0
    return-void
.end method

.method public sendDanmaku(IIILjava/lang/String;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "position"    # I
    .param p3, "color"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 307
    return-void
.end method

.method public sendDanmaku(ILjava/lang/String;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 312
    return-void
.end method

.method public setDanmakuEffect(I)V
    .locals 0
    .param p1, "effect"    # I

    .prologue
    .line 332
    return-void
.end method

.method public setDanmakuPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 327
    return-void
.end method

.method public setDanmakuPreferences(ZLjava/lang/String;)V
    .locals 2
    .param p1, "danmakuSwith"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public setDanmakuTextScale(Z)V
    .locals 0
    .param p1, "isFullScreenPlay"    # Z

    .prologue
    .line 277
    return-void
.end method

.method public setDanmakuVisibleWhenLive()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public setVid(Ljava/lang/String;I)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "cid"    # I

    .prologue
    .line 297
    return-void
.end method

.method public showDanmaku()V
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->danmakuProcessStatus:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/youku/player/danmaku/LocalDanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->showDanmaku()V

    .line 182
    sget-object v0, Lcom/youku/player/danmaku/LocalDanmakuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5c55\u793a\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method public showDanmakuWhenRotate()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public startLiveDanmaku()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method
