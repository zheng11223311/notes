.class Lcom/youku/player/ad/pausead/PauseAdOffline$2;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "PauseAdOffline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdOffline;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCanceled:Z

.field private isLoaded:Z

.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdOffline;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->isLoaded:Z

    .line 113
    iput-boolean v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->isCanceled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ad/pausead/PauseAdOffline$2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdOffline$2;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->isLoaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/youku/player/ad/pausead/PauseAdOffline$2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdOffline$2;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->isCanceled:Z

    return p1
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 131
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "image onLoadingComplete"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->isCanceled:Z

    if-ne v1, v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iput-boolean v3, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->isLoaded:Z

    .line 136
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdOffline;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdOffline;->access$300(Lcom/youku/player/ad/pausead/PauseAdOffline;)V

    .line 144
    move-object v0, p3

    .line 145
    .local v0, "image":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdOffline;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/ad/pausead/PauseAdOffline$2$2;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/ad/pausead/PauseAdOffline$2$2;-><init>(Lcom/youku/player/ad/pausead/PauseAdOffline$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-static {}, Lcom/youku/player/ad/pausead/PauseAdOffline;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdOffline$2$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/pausead/PauseAdOffline$2$1;-><init>(Lcom/youku/player/ad/pausead/PauseAdOffline$2;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method
