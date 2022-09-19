.class public Lcom/youtu/apps/image/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/apps/image/ImageCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLEAR_DISK_CACHE_ON_START:Z = false

.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0x3200000

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x500000


# instance fields
.field private mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/youtu/apps/image/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youtu/apps/image/ImageCache$ImageCacheParams;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheParams"    # Lcom/youtu/apps/image/ImageCache$ImageCacheParams;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/youtu/apps/image/ImageCache;->init(Landroid/content/Context;Lcom/youtu/apps/image/ImageCache$ImageCacheParams;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;

    invoke-direct {v0, p2}, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/youtu/apps/image/ImageCache;->init(Landroid/content/Context;Lcom/youtu/apps/image/ImageCache$ImageCacheParams;)V

    .line 71
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/youtu/apps/image/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Lcom/youtu/apps/image/ImageCache$ImageCacheParams;)Lcom/youtu/apps/image/ImageCache;
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "cacheParams"    # Lcom/youtu/apps/image/ImageCache$ImageCacheParams;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/youtu/apps/image/RetainFragment;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/youtu/apps/image/RetainFragment;

    move-result-object v1

    .line 117
    .local v1, "mRetainFragment":Lcom/youtu/apps/image/RetainFragment;
    invoke-virtual {v1}, Lcom/youtu/apps/image/RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/image/ImageCache;

    .line 120
    .local v0, "imageCache":Lcom/youtu/apps/image/ImageCache;
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/youtu/apps/image/ImageCache;

    .end local v0    # "imageCache":Lcom/youtu/apps/image/ImageCache;
    invoke-direct {v0, p0, p1}, Lcom/youtu/apps/image/ImageCache;-><init>(Landroid/content/Context;Lcom/youtu/apps/image/ImageCache$ImageCacheParams;)V

    .line 122
    .restart local v0    # "imageCache":Lcom/youtu/apps/image/ImageCache;
    invoke-virtual {v1, v0}, Lcom/youtu/apps/image/RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-object v0
.end method

.method public static findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/youtu/apps/image/ImageCache;
    .locals 4
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v1, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;

    invoke-direct {v1, p1}, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "mImageCacheParams":Lcom/youtu/apps/image/ImageCache$ImageCacheParams;
    const/high16 v2, 0x100000

    invoke-static {p0}, Lcom/youtu/apps/image/Utils;->getMemoryClass(Landroid/content/Context;)I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x8

    .line 90
    .local v0, "cacheSize":I
    if-lez v0, :cond_0

    .line 91
    iput v0, v1, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 93
    :cond_0
    invoke-static {p0, v1}, Lcom/youtu/apps/image/ImageCache;->findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Lcom/youtu/apps/image/ImageCache$ImageCacheParams;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v2

    return-object v2
.end method

.method private init(Landroid/content/Context;Lcom/youtu/apps/image/ImageCache$ImageCacheParams;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheParams"    # Lcom/youtu/apps/image/ImageCache$ImageCacheParams;

    .prologue
    .line 137
    iget-object v1, p2, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->uniqueName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/youtu/apps/image/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 141
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-boolean v1, p2, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v1, :cond_0

    .line 142
    iget v1, p2, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v2, v1

    invoke-static {p1, v0, v2, v3}, Lcom/youtu/apps/image/DiskLruCache;->openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/youtu/apps/image/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    .line 144
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    iget-object v2, p2, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p2, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {v1, v2, v3}, Lcom/youtu/apps/image/DiskLruCache;->setCompressParams(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 147
    iget-boolean v1, p2, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    invoke-virtual {v1}, Lcom/youtu/apps/image/DiskLruCache;->clearCache()V

    .line 154
    :cond_0
    iget-boolean v1, p2, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v1, :cond_1

    .line 155
    new-instance v1, Lcom/youtu/apps/image/ImageCache$1;

    iget v2, p2, Lcom/youtu/apps/image/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v1, p0, v2}, Lcom/youtu/apps/image/ImageCache$1;-><init>(Lcom/youtu/apps/image/ImageCache;I)V

    iput-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {p1}, Lcom/youtu/apps/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    invoke-virtual {v1, v0}, Lcom/youtu/apps/image/DiskLruCache;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/youtu/apps/image/DiskLruCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public clearCaches()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    invoke-virtual {v0}, Lcom/youtu/apps/image/DiskLruCache;->clearCache()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/youtu/apps/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 225
    :cond_1
    return-void
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    if-eqz v1, :cond_0

    .line 212
    invoke-static {p1}, Lcom/youtu/apps/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    invoke-virtual {v1, v0}, Lcom/youtu/apps/image/DiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    .end local v0    # "fileName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/youtu/apps/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v2, :cond_0

    .line 194
    invoke-static {p1}, Lcom/youtu/apps/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/youtu/apps/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 196
    .local v1, "memBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 200
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "memBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDiskCache()Lcom/youtu/apps/image/DiskLruCache;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/youtu/apps/image/ImageCache;->mDiskCache:Lcom/youtu/apps/image/DiskLruCache;

    return-object v0
.end method
