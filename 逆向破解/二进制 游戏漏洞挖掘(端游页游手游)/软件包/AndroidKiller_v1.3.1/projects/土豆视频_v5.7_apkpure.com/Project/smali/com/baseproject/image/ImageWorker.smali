.class public abstract Lcom/baseproject/image/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;,
        Lcom/baseproject/image/ImageWorker$AsyncDrawable;,
        Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final FADE_IN_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ImageWorker"

.field private static imageWorker:Lcom/baseproject/image/ImageWorker;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z

.field private mImageCache:Lcom/baseproject/image/ImageCache;

.field protected mImageWorkerAdapter:Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;

.field private mLoadingBitmap:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baseproject/image/ImageWorker;->mFadeInBitmap:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baseproject/image/ImageWorker;->mExitTasksEarly:Z

    .line 74
    iput-object p1, p0, Lcom/baseproject/image/ImageWorker;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/baseproject/image/ImageWorker;)Lcom/baseproject/image/ImageCache;
    .locals 1
    .param p0, "x0"    # Lcom/baseproject/image/ImageWorker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baseproject/image/ImageWorker;->mImageCache:Lcom/baseproject/image/ImageCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baseproject/image/ImageWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/baseproject/image/ImageWorker;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/baseproject/image/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/baseproject/image/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/baseproject/image/ImageWorker;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baseproject/image/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ImageView;)Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/baseproject/image/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x1

    .line 241
    invoke-static {p1}, Lcom/baseproject/image/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 243
    .local v1, "bitmapWorkerTask":Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 244
    invoke-static {v1}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->access$000(Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "bitmapData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    :cond_0
    invoke-virtual {v1, v2}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 253
    .end local v0    # "bitmapData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v2

    .line 250
    .restart local v0    # "bitmapData":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 227
    invoke-static {p0}, Lcom/baseproject/image/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 228
    .local v0, "bitmapWorkerTask":Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
    if-eqz v0, :cond_0

    .line 229
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 230
    invoke-static {v0}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->access$000(Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    .line 233
    :cond_0
    return-void
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 263
    if-eqz p0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 265
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/baseproject/image/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 266
    check-cast v0, Lcom/baseproject/image/ImageWorker$AsyncDrawable;

    .line 267
    .local v0, "asyncDrawable":Lcom/baseproject/image/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Lcom/baseproject/image/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 270
    .end local v0    # "asyncDrawable":Lcom/baseproject/image/ImageWorker$AsyncDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getInstance(Landroid/support/v4/app/FragmentActivity;)Lcom/baseproject/image/ImageWorker;
    .locals 5
    .param p0, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 61
    sget-object v3, Lcom/baseproject/image/ImageWorker;->imageWorker:Lcom/baseproject/image/ImageWorker;

    if-nez v3, :cond_0

    .line 62
    sget v0, Lcom/youku/analytics/data/Device;->ht:I

    .line 63
    .local v0, "height":I
    sget v2, Lcom/youku/analytics/data/Device;->wt:I

    .line 64
    .local v2, "width":I
    if-le v0, v2, :cond_1

    move v1, v2

    .line 65
    .local v1, "shortest":I
    :goto_0
    new-instance v3, Lcom/baseproject/image/ImageFetcher;

    invoke-direct {v3, p0, v1}, Lcom/baseproject/image/ImageFetcher;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/baseproject/image/ImageWorker;->imageWorker:Lcom/baseproject/image/ImageWorker;

    .line 66
    sget-object v3, Lcom/baseproject/image/ImageWorker;->imageWorker:Lcom/baseproject/image/ImageWorker;

    const-string v4, "images"

    invoke-static {p0, v4}, Lcom/baseproject/image/ImageCache;->findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/baseproject/image/ImageCache;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baseproject/image/ImageWorker;->setImageCache(Lcom/baseproject/image/ImageCache;)V

    .line 68
    sget-object v3, Lcom/baseproject/image/ImageWorker;->imageWorker:Lcom/baseproject/image/ImageWorker;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baseproject/image/ImageWorker;->setImageFadeIn(Z)V

    .line 70
    .end local v0    # "height":I
    .end local v1    # "shortest":I
    .end local v2    # "width":I
    :cond_0
    sget-object v3, Lcom/baseproject/image/ImageWorker;->imageWorker:Lcom/baseproject/image/ImageWorker;

    return-object v3

    .restart local v0    # "height":I
    .restart local v2    # "width":I
    :cond_1
    move v1, v0

    .line 64
    goto :goto_0
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 413
    iget-boolean v3, p0, Lcom/baseproject/image/ImageWorker;->mFadeInBitmap:Z

    if-eqz v3, :cond_3

    .line 414
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, "no_animation"

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, 0x106000d

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/baseproject/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 422
    .local v1, "td":Landroid/graphics/drawable/TransitionDrawable;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 424
    .local v2, "tdReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/TransitionDrawable;>;"
    const/4 v1, 0x0

    .line 426
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/baseproject/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/baseproject/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 428
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 429
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 435
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 440
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "td":Landroid/graphics/drawable/TransitionDrawable;
    .end local v2    # "tdReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/TransitionDrawable;>;"
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/baseproject/image/ImageWorker;->mImageWorkerAdapter:Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;

    return-object v0
.end method

.method public getImageCache()Lcom/baseproject/image/ImageCache;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/baseproject/image/ImageWorker;->mImageCache:Lcom/baseproject/image/ImageCache;

    return-object v0
.end method

.method public loadImage(ILandroid/widget/ImageView;)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baseproject/image/ImageWorker;->mImageWorkerAdapter:Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/baseproject/image/ImageWorker;->mImageWorkerAdapter:Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;

    invoke-virtual {v0, p1}, Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/baseproject/image/ImageWorker;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 163
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data not set, must call setAdapter() first."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker;->mImageCache:Lcom/baseproject/image/ImageCache;

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker;->mImageCache:Lcom/baseproject/image/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baseproject/image/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    :cond_0
    if-eqz v1, :cond_2

    .line 99
    if-eqz p2, :cond_1

    .line 100
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    invoke-static {p1, p2}, Lcom/baseproject/image/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    new-instance v2, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p2}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;-><init>(Lcom/baseproject/image/ImageWorker;Landroid/widget/ImageView;)V

    .line 104
    .local v2, "task":Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
    new-instance v0, Lcom/baseproject/image/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Lcom/baseproject/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/baseproject/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Lcom/baseproject/image/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;)V

    .line 106
    .local v0, "asyncDrawable":Lcom/baseproject/image/ImageWorker$AsyncDrawable;
    if-eqz p2, :cond_3

    .line 107
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->execute([Ljava/lang/Object;)Lcom/baseproject/image/ImageAsyncTask;

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Lcom/baseproject/image/ImageCallback;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "imageCallback"    # Lcom/baseproject/image/ImageCallback;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker;->mImageCache:Lcom/baseproject/image/ImageCache;

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/baseproject/image/ImageWorker;->mImageCache:Lcom/baseproject/image/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baseproject/image/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    :cond_0
    if-eqz v1, :cond_3

    .line 123
    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    :cond_1
    if-eqz p3, :cond_2

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Lcom/baseproject/image/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 139
    :cond_2
    :goto_0
    return-void

    .line 129
    :cond_3
    invoke-static {p1, p2}, Lcom/baseproject/image/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    new-instance v2, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p2, p3}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;-><init>(Lcom/baseproject/image/ImageWorker;Landroid/widget/ImageView;Lcom/baseproject/image/ImageCallback;)V

    .line 132
    .local v2, "task":Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;
    new-instance v0, Lcom/baseproject/image/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Lcom/baseproject/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/baseproject/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Lcom/baseproject/image/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;)V

    .line 134
    .local v0, "asyncDrawable":Lcom/baseproject/image/ImageWorker$AsyncDrawable;
    if-eqz p2, :cond_4

    .line 135
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_4
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/baseproject/image/ImageWorker$BitmapWorkerTask;->execute([Ljava/lang/Object;)Lcom/baseproject/image/ImageAsyncTask;

    goto :goto_0
.end method

.method protected abstract processBitmap(Ljava/lang/Object;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
.end method

.method public setAdapter(Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/baseproject/image/ImageWorker;->mImageWorkerAdapter:Lcom/baseproject/image/ImageWorker$ImageWorkerAdapter;

    .line 452
    return-void
.end method

.method public setExitTasksEarly(Z)V
    .locals 0
    .param p1, "exitTasksEarly"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/baseproject/image/ImageWorker;->mExitTasksEarly:Z

    .line 211
    return-void
.end method

.method public setImageCache(Lcom/baseproject/image/ImageCache;)V
    .locals 0
    .param p1, "cacheCallback"    # Lcom/baseproject/image/ImageCache;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/baseproject/image/ImageWorker;->mImageCache:Lcom/baseproject/image/ImageCache;

    .line 193
    return-void
.end method

.method public setImageFadeIn(Z)V
    .locals 0
    .param p1, "fadeIn"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/baseproject/image/ImageWorker;->mFadeInBitmap:Z

    .line 207
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baseproject/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baseproject/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 184
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/baseproject/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 173
    return-void
.end method
