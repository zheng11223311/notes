.class public Lcom/sea_monster/cache/CacheableBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "CacheableBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/cache/CacheableBitmapDrawable$CheckStateRunnable;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CacheableBitmapDrawable"

.field public static final SOURCE_INBITMAP:I = 0x1

.field public static final SOURCE_NEW:I = 0x0

.field public static final SOURCE_UNKNOWN:I = -0x1

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mCacheCount:I

.field private mCheckStateRunnable:Ljava/lang/Runnable;

.field private mDisplayingCount:I

.field private mHasBeenDisplayed:Z

.field private final mMemorySize:I

.field private mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

.field private final mSource:I

.field private mStackTraceWhenRecycled:Ljava/lang/Throwable;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/sea_monster/cache/BaseCache$RecyclePolicy;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "recyclePolicy"    # Lcom/sea_monster/cache/BaseCache$RecyclePolicy;
    .param p5, "source"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 66
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mMemorySize:I

    .line 67
    iput-object p1, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mUrl:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .line 69
    iput v1, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mDisplayingCount:I

    .line 70
    iput v1, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCacheCount:I

    .line 71
    iput p5, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mSource:I

    .line 72
    return-void

    :cond_0
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sea_monster/cache/CacheableBitmapDrawable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->checkState(Z)V

    return-void
.end method

.method private cancelCheckStateCallback()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCheckStateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 171
    sget-boolean v0, Lcom/sea_monster/cache/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "CacheableBitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling checkState() callback for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    sget-object v0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCheckStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCheckStateRunnable:Ljava/lang/Runnable;

    .line 177
    :cond_1
    return-void
.end method

.method private checkState()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->checkState(Z)V

    .line 184
    return-void
.end method

.method private declared-synchronized checkState(Z)V
    .locals 5
    .param p1, "ignoreBeenDisplayed"    # Z

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sea_monster/cache/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "CacheableBitmapDrawable"

    const-string v1, "checkState(). Been Displayed: %b, Displaying: %d, Caching: %d, URL: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mHasBeenDisplayed:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mDisplayingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCacheCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    invoke-virtual {v0}, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->canRecycle()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 240
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->cancelCheckStateCallback()V

    .line 215
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCacheCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mDisplayingCount:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->isBitmapValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-boolean v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mHasBeenDisplayed:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_5

    .line 222
    :cond_3
    sget-boolean v0, Lcom/sea_monster/cache/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 223
    const-string v0, "CacheableBitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycling bitmap with url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_4
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Recycled Bitmap Method Stack"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mStackTraceWhenRecycled:Ljava/lang/Throwable;

    .line 228
    invoke-virtual {p0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_5
    :try_start_2
    sget-boolean v0, Lcom/sea_monster/cache/Constants;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 231
    const-string v0, "CacheableBitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unused Bitmap which hasn\'t been displayed, delaying recycle(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_6
    new-instance v0, Lcom/sea_monster/cache/CacheableBitmapDrawable$CheckStateRunnable;

    invoke-direct {v0, p0}, Lcom/sea_monster/cache/CacheableBitmapDrawable$CheckStateRunnable;-><init>(Lcom/sea_monster/cache/CacheableBitmapDrawable;)V

    iput-object v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCheckStateRunnable:Ljava/lang/Runnable;

    .line 236
    sget-object v0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCheckStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    :try_start_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 81
    .local v0, "re":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mStackTraceWhenRecycled:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mStackTraceWhenRecycled:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :cond_0
    throw v0
.end method

.method getMemorySize()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mMemorySize:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mSource:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isBeingDisplayed()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mDisplayingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBitmapMutable()Z
    .locals 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 123
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isBitmapValid()Z
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isReferencedByCache()Z
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCacheCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBeingUsed(Z)V
    .locals 1
    .param p1, "beingUsed"    # Z

    .prologue
    .line 146
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 147
    :try_start_0
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mDisplayingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mDisplayingCount:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mHasBeenDisplayed:Z

    .line 152
    :goto_0
    invoke-direct {p0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->checkState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mDisplayingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mDisplayingCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCached(Z)V
    .locals 1
    .param p1, "added"    # Z

    .prologue
    .line 161
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 162
    :try_start_0
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCacheCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCacheCount:I

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->checkState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCacheCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sea_monster/cache/CacheableBitmapDrawable;->mCacheCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
