.class public final Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;
.super Ljava/lang/Object;
.source "BitmapCacheWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/BitmapCacheWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final DEFAULT_MEMORY_CACHE_HEAP_PERCENTAGE:F = 12.5f

.field static final DEFAULT_MEMORY_CACHE_HEAP_RATIO:F = 0.125f

.field static final DEFAULT_MEM_CACHE_MAX_SIZE_MB:I = 0x3

.field static final DEFAULT_RECYCLE_POLICY:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

.field static final MAX_MEMORY_CACHE_HEAP_PERCENTAGE:F = 75.0f

.field static final MAX_MEMORY_CACHE_HEAP_RATIO:F = 0.75f

.field static final MEGABYTE:I = 0x100000


# instance fields
.field private mCache:Lcom/sea_monster/cache/BaseCache;

.field private mContext:Landroid/content/Context;

.field private mMemoryCacheEnabled:Z

.field private mMemoryCacheMaxSize:I

.field private mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/sea_monster/cache/BaseCache$RecyclePolicy;->PRE_HONEYCOMB_ONLY:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    sput-object v0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->DEFAULT_RECYCLE_POLICY:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mContext:Landroid/content/Context;

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mMemoryCacheEnabled:Z

    .line 490
    const/high16 v0, 0x300000

    iput v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mMemoryCacheMaxSize:I

    .line 491
    sget-object v0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->DEFAULT_RECYCLE_POLICY:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    iput-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .line 492
    return-void
.end method

.method private static getHeapSize()J
    .locals 2

    .prologue
    .line 472
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method private isValidOptionsForMemoryCache()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mMemoryCacheEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mMemoryCacheMaxSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/sea_monster/cache/BitmapCacheWrapper;
    .locals 4

    .prologue
    .line 498
    new-instance v0, Lcom/sea_monster/cache/BitmapCacheWrapper;

    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, "cache":Lcom/sea_monster/cache/BitmapCacheWrapper;
    invoke-direct {p0}, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->isValidOptionsForMemoryCache()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    sget-boolean v1, Lcom/sea_monster/cache/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 502
    const-string v1, "BitmapLruCache.Builder"

    const-string v2, "Creating Memory Cache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    new-instance v1, Lcom/sea_monster/cache/BitmapMemoryLruCache;

    iget v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mMemoryCacheMaxSize:I

    iget-object v3, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    invoke-direct {v1, v2, v3}, Lcom/sea_monster/cache/BitmapMemoryLruCache;-><init>(ILcom/sea_monster/cache/BaseCache$RecyclePolicy;)V

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->setMemoryCache(Lcom/sea_monster/cache/BitmapMemoryLruCache;)V

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->setCache(Lcom/sea_monster/cache/BaseCache;)V

    .line 511
    :cond_2
    return-object v0
.end method

.method public setCache(Lcom/sea_monster/cache/BaseCache;)Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;
    .locals 0
    .param p1, "cache"    # Lcom/sea_monster/cache/BaseCache;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mCache:Lcom/sea_monster/cache/BaseCache;

    .line 516
    return-object p0
.end method

.method public setMemoryCacheEnabled(Z)Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 526
    iput-boolean p1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mMemoryCacheEnabled:Z

    .line 527
    return-object p0
.end method

.method public setMemoryCacheMaxSize(I)Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 537
    iput p1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mMemoryCacheMaxSize:I

    .line 538
    return-object p0
.end method

.method public setMemoryCacheMaxSizeUsingHeapSize()Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;
    .locals 1

    .prologue
    .line 548
    const/high16 v0, 0x3e000000    # 0.125f

    invoke-virtual {p0, v0}, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->setMemoryCacheMaxSizeUsingHeapSize(F)Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMemoryCacheMaxSizeUsingHeapSize(F)Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;
    .locals 4
    .param p1, "percentageOfHeap"    # F

    .prologue
    .line 560
    invoke-static {}, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->getHeapSize()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 562
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->setMemoryCacheMaxSize(I)Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setRecyclePolicy(Lcom/sea_monster/cache/BaseCache$RecyclePolicy;)Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;
    .locals 2
    .param p1, "recyclePolicy"    # Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The recycle policy can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    iput-object p1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .line 578
    return-object p0
.end method
