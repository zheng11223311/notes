.class final Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;
.super Lcom/sea_monster/common/BackgroundThread;
.source "AsyncImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/AsyncImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhotoLoadRunnable"
.end annotation


# instance fields
.field private final mHandler:Lcom/sea_monster/resource/ResourceHandler;

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/rong/imkit/widget/AsyncImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mResource:Lcom/sea_monster/resource/Resource;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/AsyncImageView;Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;)V
    .locals 1
    .param p1, "imageView"    # Lio/rong/imkit/widget/AsyncImageView;
    .param p2, "handler"    # Lcom/sea_monster/resource/ResourceHandler;
    .param p3, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/sea_monster/common/BackgroundThread;-><init>()V

    .line 322
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mImageView:Ljava/lang/ref/WeakReference;

    .line 323
    iput-object p2, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mHandler:Lcom/sea_monster/resource/ResourceHandler;

    .line 324
    iput-object p3, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mResource:Lcom/sea_monster/resource/Resource;

    .line 325
    return-void
.end method

.method static synthetic access$100(Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;)Lcom/sea_monster/resource/Resource;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;

    .prologue
    .line 315
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mResource:Lcom/sea_monster/resource/Resource;

    return-object v0
.end method


# virtual methods
.method public runImpl()V
    .locals 7

    .prologue
    .line 329
    iget-object v4, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/AsyncImageView;

    .line 331
    .local v3, "imageView":Lio/rong/imkit/widget/AsyncImageView;
    if-nez v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v0, 0x0

    .line 335
    .local v0, "diskDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mResource:Lcom/sea_monster/resource/Resource;

    monitor-enter v5

    .line 336
    :try_start_0
    iget-object v4, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mHandler:Lcom/sea_monster/resource/ResourceHandler;

    iget-object v6, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v4, v6}, Lcom/sea_monster/resource/ResourceHandler;->getDrawable(Lcom/sea_monster/resource/Resource;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    .line 337
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 340
    invoke-static {v3}, Lio/rong/imkit/widget/AsyncImageView;->access$000(Lio/rong/imkit/widget/AsyncImageView;)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lio/rong/imkit/widget/AsyncImageView;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v4, v5}, Lcom/sea_monster/resource/Resource;->equals(Lcom/sea_monster/resource/Resource;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lio/rong/imkit/widget/AsyncImageView;->isAttached:Z

    if-eqz v4, :cond_2

    .line 341
    move-object v1, v0

    .line 342
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v4, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$1;

    invoke-direct {v4, p0, v3, v1}, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$1;-><init>(Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;Lio/rong/imkit/widget/AsyncImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/AsyncImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 337
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 362
    :cond_2
    move-object v1, v0

    .line 363
    .restart local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v4, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;

    invoke-direct {v4, p0, v3, v1}, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;-><init>(Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;Lio/rong/imkit/widget/AsyncImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v4, v3, Lio/rong/imkit/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 385
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    iget-boolean v4, v3, Lio/rong/imkit/widget/AsyncImageView;->isAttached:Z

    if-eqz v4, :cond_5

    .line 386
    new-instance v4, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$3;

    invoke-direct {v4, p0, v3}, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$3;-><init>(Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;Lio/rong/imkit/widget/AsyncImageView;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/AsyncImageView;->post(Ljava/lang/Runnable;)Z

    .line 400
    :goto_1
    iget-object v4, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v4}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v4}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    :cond_4
    :try_start_2
    iget-object v4, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mHandler:Lcom/sea_monster/resource/ResourceHandler;

    iget-object v5, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->mResource:Lcom/sea_monster/resource/Resource;

    invoke-virtual {v4, v5}, Lcom/sea_monster/resource/ResourceHandler;->requestResource(Lcom/sea_monster/resource/Resource;)Lcom/sea_monster/network/AbstractHttpRequest;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 393
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_5
    new-instance v4, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$4;

    invoke-direct {v4, p0, v3}, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$4;-><init>(Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;Lio/rong/imkit/widget/AsyncImageView;)V

    iput-object v4, v3, Lio/rong/imkit/widget/AsyncImageView;->mAttachedRunnable:Ljava/lang/Runnable;

    goto :goto_1
.end method
