.class public Lcom/baseproject/image/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseproject/image/ImageCache$ImageCacheParams;
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

.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mDiskCache:Lcom/baseproject/image/DiskLruCache;

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
    .line 42
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/baseproject/image/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baseproject/image/ImageCache$ImageCacheParams;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheParams"    # Lcom/baseproject/image/ImageCache$ImageCacheParams;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/baseproject/image/ImageCache;->init(Landroid/content/Context;Lcom/baseproject/image/ImageCache$ImageCacheParams;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/baseproject/image/ImageCache$ImageCacheParams;

    invoke-direct {v0, p2}, Lcom/baseproject/image/ImageCache$ImageCacheParams;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/baseproject/image/ImageCache;->init(Landroid/content/Context;Lcom/baseproject/image/ImageCache$ImageCacheParams;)V

    .line 75
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baseproject/image/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Lcom/baseproject/image/ImageCache$ImageCacheParams;)Lcom/baseproject/image/ImageCache;
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "cacheParams"    # Lcom/baseproject/image/ImageCache$ImageCacheParams;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/baseproject/image/RetainFragment;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/baseproject/image/RetainFragment;

    move-result-object v1

    .line 121
    .local v1, "mRetainFragment":Lcom/baseproject/image/RetainFragment;
    invoke-virtual {v1}, Lcom/baseproject/image/RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baseproject/image/ImageCache;

    .line 124
    .local v0, "imageCache":Lcom/baseproject/image/ImageCache;
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/baseproject/image/ImageCache;

    .end local v0    # "imageCache":Lcom/baseproject/image/ImageCache;
    invoke-direct {v0, p0, p1}, Lcom/baseproject/image/ImageCache;-><init>(Landroid/content/Context;Lcom/baseproject/image/ImageCache$ImageCacheParams;)V

    .line 126
    .restart local v0    # "imageCache":Lcom/baseproject/image/ImageCache;
    invoke-virtual {v1, v0}, Lcom/baseproject/image/RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-object v0
.end method

.method public static findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/baseproject/image/ImageCache;
    .locals 4
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v1, Lcom/baseproject/image/ImageCache$ImageCacheParams;

    invoke-direct {v1, p1}, Lcom/baseproject/image/ImageCache$ImageCacheParams;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "mImageCacheParams":Lcom/baseproject/image/ImageCache$ImageCacheParams;
    const/high16 v2, 0x100000

    invoke-static {p0}, Lcom/baseproject/image/Utils;->getMemoryClass(Landroid/content/Context;)I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x8

    .line 94
    .local v0, "cacheSize":I
    if-lez v0, :cond_0

    .line 95
    iput v0, v1, Lcom/baseproject/image/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 97
    :cond_0
    invoke-static {p0, v1}, Lcom/baseproject/image/ImageCache;->findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Lcom/baseproject/image/ImageCache$ImageCacheParams;)Lcom/baseproject/image/ImageCache;

    move-result-object v2

    return-object v2
.end method

.method private init(Landroid/content/Context;Lcom/baseproject/image/ImageCache$ImageCacheParams;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheParams"    # Lcom/baseproject/image/ImageCache$ImageCacheParams;

    .prologue
    .line 141
    iget-object v1, p2, Lcom/baseproject/image/ImageCache$ImageCacheParams;->uniqueName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/baseproject/image/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-boolean v1, p2, Lcom/baseproject/image/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v1, :cond_0

    .line 146
    iget v1, p2, Lcom/baseproject/image/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v2, v1

    invoke-static {p1, v0, v2, v3}, Lcom/baseproject/image/DiskLruCache;->openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/baseproject/image/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    .line 148
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    iget-object v2, p2, Lcom/baseproject/image/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p2, Lcom/baseproject/image/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {v1, v2, v3}, Lcom/baseproject/image/DiskLruCache;->setCompressParams(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 151
    iget-boolean v1, p2, Lcom/baseproject/image/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    invoke-virtual {v1}, Lcom/baseproject/image/DiskLruCache;->clearCache()V

    .line 158
    :cond_0
    iget-boolean v1, p2, Lcom/baseproject/image/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Lcom/baseproject/image/ImageCache$1;

    iget v2, p2, Lcom/baseproject/image/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v1, p0, v2}, Lcom/baseproject/image/ImageCache$1;-><init>(Lcom/baseproject/image/ImageCache;I)V

    iput-object v1, p0, Lcom/baseproject/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 171
    :cond_1
    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-static {p1}, Lcom/baseproject/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    invoke-virtual {v1, v0}, Lcom/baseproject/image/DiskLruCache;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/baseproject/image/DiskLruCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public clearCaches()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    invoke-virtual {v0}, Lcom/baseproject/image/DiskLruCache;->clearCache()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/baseproject/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/baseproject/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 230
    :cond_1
    return-void
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    if-eqz v1, :cond_0

    .line 217
    invoke-static {p1}, Lcom/baseproject/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    invoke-virtual {v1, v0}, Lcom/baseproject/image/DiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 220
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
    .line 197
    iget-object v2, p0, Lcom/baseproject/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v2, :cond_0

    .line 198
    invoke-static {p1}, Lcom/baseproject/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/baseproject/image/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 200
    .local v1, "memBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 205
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "memBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDiskCache()Lcom/baseproject/image/DiskLruCache;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baseproject/image/ImageCache;->mDiskCache:Lcom/baseproject/image/DiskLruCache;

    invoke-virtual {v0}, Lcom/baseproject/image/DiskLruCache;->getFileSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
