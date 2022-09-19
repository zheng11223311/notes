.class Lcom/youku/player/ad/pausead/PauseAdYouku$2;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "PauseAdYouku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdYouku;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCanceled:Z

.field private isLoaded:Z

.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdYouku;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    .line 129
    iput-boolean v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->isLoaded:Z

    .line 130
    iput-boolean v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->isCanceled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ad/pausead/PauseAdYouku$2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdYouku$2;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->isLoaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/youku/player/ad/pausead/PauseAdYouku$2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdYouku$2;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->isCanceled:Z

    return p1
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 149
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "image onLoadingComplete"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->isCanceled:Z

    if-ne v1, v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iput-boolean v3, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->isLoaded:Z

    .line 154
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-virtual {v1, v4}, Lcom/youku/player/ad/pausead/PauseAdYouku;->disposeAdLoss(I)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-virtual {v1, v4}, Lcom/youku/player/ad/pausead/PauseAdYouku;->disposeAdLoss(I)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$300(Lcom/youku/player/ad/pausead/PauseAdYouku;)V

    .line 164
    move-object v0, p3

    .line 165
    .local v0, "image":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdYouku;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdYouku;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/ad/pausead/PauseAdYouku$2$2;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/ad/pausead/PauseAdYouku$2$2;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-static {}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdYouku$2$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/pausead/PauseAdYouku$2$1;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku$2;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method
