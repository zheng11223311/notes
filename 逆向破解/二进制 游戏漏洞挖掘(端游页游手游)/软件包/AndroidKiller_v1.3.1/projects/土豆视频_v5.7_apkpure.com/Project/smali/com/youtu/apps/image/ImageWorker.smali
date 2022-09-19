.class public abstract Lcom/youtu/apps/image/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;,
        Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;,
        Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final FADE_IN_TIME:I = 0xc8


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z

.field private mImageCache:Lcom/youtu/apps/image/ImageCache;

.field protected mImageWorkerAdapter:Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;

.field private mLoadingBitmap:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youtu/apps/image/ImageWorker;->mFadeInBitmap:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youtu/apps/image/ImageWorker;->mExitTasksEarly:Z

    .line 52
    iput-object p1, p0, Lcom/youtu/apps/image/ImageWorker;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/youtu/apps/image/ImageWorker;)Lcom/youtu/apps/image/ImageCache;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/image/ImageWorker;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youtu/apps/image/ImageWorker;->mImageCache:Lcom/youtu/apps/image/ImageCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youtu/apps/image/ImageWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/image/ImageWorker;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/youtu/apps/image/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/youtu/apps/image/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/youtu/apps/image/ImageWorker;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/youtu/apps/image/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ImageView;)Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/youtu/apps/image/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x1

    .line 217
    invoke-static {p1}, Lcom/youtu/apps/image/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 219
    .local v1, "bitmapWorkerTask":Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 220
    invoke-static {v1}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->access$000(Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "bitmapData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 222
    :cond_0
    invoke-virtual {v1, v2}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 228
    .end local v0    # "bitmapData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v2

    .line 225
    .restart local v0    # "bitmapData":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/youtu/apps/image/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 206
    .local v0, "bitmapWorkerTask":Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
    if-eqz v0, :cond_0

    .line 207
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 209
    :cond_0
    return-void
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 238
    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 240
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 241
    check-cast v0, Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;

    .line 242
    .local v0, "asyncDrawable":Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 245
    .end local v0    # "asyncDrawable":Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

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
    .line 386
    iget-boolean v3, p0, Lcom/youtu/apps/image/ImageWorker;->mFadeInBitmap:Z

    if-eqz v3, :cond_2

    .line 389
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

    iget-object v6, p0, Lcom/youtu/apps/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 392
    .local v1, "td":Landroid/graphics/drawable/TransitionDrawable;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 394
    .local v2, "tdReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/TransitionDrawable;>;"
    const/4 v1, 0x0

    .line 396
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/youtu/apps/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/youtu/apps/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 398
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 399
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    :goto_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 405
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 412
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "td":Landroid/graphics/drawable/TransitionDrawable;
    .end local v2    # "tdReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/TransitionDrawable;>;"
    :cond_0
    :goto_1
    return-void

    .line 401
    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "td":Landroid/graphics/drawable/TransitionDrawable;
    .restart local v2    # "tdReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/TransitionDrawable;>;"
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 409
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "td":Landroid/graphics/drawable/TransitionDrawable;
    .end local v2    # "tdReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/TransitionDrawable;>;"
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method public getAdapter()Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/youtu/apps/image/ImageWorker;->mImageWorkerAdapter:Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;

    return-object v0
.end method

.method public getImageCache()Lcom/youtu/apps/image/ImageCache;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/youtu/apps/image/ImageWorker;->mImageCache:Lcom/youtu/apps/image/ImageCache;

    return-object v0
.end method

.method public loadImage(ILandroid/widget/ImageView;)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/youtu/apps/image/ImageWorker;->mImageWorkerAdapter:Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/youtu/apps/image/ImageWorker;->mImageWorkerAdapter:Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;

    invoke-virtual {v0, p1}, Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/youtu/apps/image/ImageWorker;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 141
    return-void

    .line 138
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
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/youtu/apps/image/ImageWorker;->mImageCache:Lcom/youtu/apps/image/ImageCache;

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/youtu/apps/image/ImageWorker;->mImageCache:Lcom/youtu/apps/image/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youtu/apps/image/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    :cond_0
    if-eqz v1, :cond_2

    .line 77
    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    invoke-static {p1, p2}, Lcom/youtu/apps/image/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    new-instance v2, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p2}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;-><init>(Lcom/youtu/apps/image/ImageWorker;Landroid/widget/ImageView;)V

    .line 82
    .local v2, "task":Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
    new-instance v0, Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Lcom/youtu/apps/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/youtu/apps/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;)V

    .line 84
    .local v0, "asyncDrawable":Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;
    if-eqz p2, :cond_3

    .line 85
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->execute([Ljava/lang/Object;)Lcom/youtu/apps/image/ImageAsyncTask;

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Lcom/youtu/apps/image/ImageCallback;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "imageCallback"    # Lcom/youtu/apps/image/ImageCallback;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/youtu/apps/image/ImageWorker;->mImageCache:Lcom/youtu/apps/image/ImageCache;

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/youtu/apps/image/ImageWorker;->mImageCache:Lcom/youtu/apps/image/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youtu/apps/image/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    :cond_0
    if-eqz v1, :cond_3

    .line 101
    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    :cond_1
    if-eqz p3, :cond_2

    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Lcom/youtu/apps/image/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 117
    :cond_2
    :goto_0
    return-void

    .line 107
    :cond_3
    invoke-static {p1, p2}, Lcom/youtu/apps/image/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    new-instance v2, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p2, p3}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;-><init>(Lcom/youtu/apps/image/ImageWorker;Landroid/widget/ImageView;Lcom/youtu/apps/image/ImageCallback;)V

    .line 110
    .local v2, "task":Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;
    new-instance v0, Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Lcom/youtu/apps/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/youtu/apps/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;)V

    .line 112
    .local v0, "asyncDrawable":Lcom/youtu/apps/image/ImageWorker$AsyncDrawable;
    if-eqz p2, :cond_4

    .line 113
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_4
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/youtu/apps/image/ImageWorker$BitmapWorkerTask;->execute([Ljava/lang/Object;)Lcom/youtu/apps/image/ImageAsyncTask;

    goto :goto_0
.end method

.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public setAdapter(Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/youtu/apps/image/ImageWorker;->mImageWorkerAdapter:Lcom/youtu/apps/image/ImageWorker$ImageWorkerAdapter;

    .line 421
    return-void
.end method

.method public setExitTasksEarly(Z)V
    .locals 0
    .param p1, "exitTasksEarly"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/youtu/apps/image/ImageWorker;->mExitTasksEarly:Z

    .line 189
    return-void
.end method

.method public setImageCache(Lcom/youtu/apps/image/ImageCache;)V
    .locals 0
    .param p1, "cacheCallback"    # Lcom/youtu/apps/image/ImageCache;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/youtu/apps/image/ImageWorker;->mImageCache:Lcom/youtu/apps/image/ImageCache;

    .line 171
    return-void
.end method

.method public setImageFadeIn(Z)V
    .locals 0
    .param p1, "fadeIn"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/youtu/apps/image/ImageWorker;->mFadeInBitmap:Z

    .line 185
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/youtu/apps/image/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youtu/apps/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 162
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/youtu/apps/image/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 151
    return-void
.end method
