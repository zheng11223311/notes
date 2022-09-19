.class public abstract Lcom/youku/player/request/VideoRequest;
.super Ljava/lang/Object;
.source "VideoRequest.java"


# instance fields
.field protected mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/youku/player/request/VideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/youku/player/request/VideoRequest;->mActivity:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/request/VideoRequest;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
.end method

.method public abstract requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
.end method
