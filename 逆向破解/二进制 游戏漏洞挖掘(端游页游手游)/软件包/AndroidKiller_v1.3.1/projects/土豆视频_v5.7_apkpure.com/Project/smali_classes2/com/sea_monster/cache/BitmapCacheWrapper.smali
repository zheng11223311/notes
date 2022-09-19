.class public Lcom/sea_monster/cache/BitmapCacheWrapper;
.super Lcom/sea_monster/cache/BaseCache;
.source "BitmapCacheWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/cache/BitmapCacheWrapper$Builder;
    }
.end annotation


# instance fields
.field mCache:Lcom/sea_monster/cache/BaseCache;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

.field private mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

.field mResources:Landroid/content/res/Resources;

.field private mSizeLimit:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sea_monster/cache/BaseCache;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mResources:Landroid/content/res/Resources;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 35
    return-void
.end method

.method private addSimpleSizeBitmapOptions(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Landroid/graphics/BitmapFactory$Options;I)Z
    .locals 5
    .param p1, "ip"    # Lcom/sea_monster/cache/BaseCache$InputStreamProvider;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "sizeLimit"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 430
    invoke-interface {p1}, Lcom/sea_monster/cache/BaseCache$InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 432
    .local v1, "is":Ljava/io/InputStream;
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 433
    const/4 v4, 0x0

    invoke-static {v1, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 434
    invoke-static {v1}, Lcom/sea_monster/cache/IoUtils;->closeStream(Ljava/io/InputStream;)V

    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "i":I
    :goto_0
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v4, v0

    if-le v4, p3, :cond_0

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v4, v0

    if-le v4, p3, :cond_0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    if-lez v0, :cond_1

    .line 442
    add-int/lit8 v0, v0, -0x1

    .line 445
    :cond_1
    shl-int v4, v2, v0

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 447
    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 449
    if-eqz v0, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private decodeBitmap(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 1
    .param p1, "ip"    # Lcom/sea_monster/cache/BaseCache$InputStreamProvider;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sea_monster/cache/BitmapCacheWrapper;->decodeBitmap(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private decodeBitmap(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 9
    .param p1, "ip"    # Lcom/sea_monster/cache/BaseCache$InputStreamProvider;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "sizeLimit"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 390
    const/4 v3, 0x0

    .line 391
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 392
    .local v7, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 395
    .local v5, "source":I
    if-nez p3, :cond_0

    .line 396
    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .local v8, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object p3, v8

    .line 399
    .end local v8    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gt v1, v2, :cond_1

    .line 400
    const/4 v1, 0x1

    iput v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 403
    :cond_1
    if-lez p4, :cond_2

    .line 404
    invoke-direct {p0, p1, p3, p4}, Lcom/sea_monster/cache/BitmapCacheWrapper;->addSimpleSizeBitmapOptions(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Landroid/graphics/BitmapFactory$Options;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    sget-object v1, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_2
    invoke-interface {p1}, Lcom/sea_monster/cache/BaseCache$InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 410
    const/4 v1, 0x0

    invoke-static {v7, v1, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 414
    invoke-static {v7}, Lcom/sea_monster/cache/IoUtils;->closeStream(Ljava/io/InputStream;)V

    .line 417
    :goto_0
    if-eqz v3, :cond_3

    .line 418
    new-instance v0, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/cache/CacheableBitmapDrawable;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/sea_monster/cache/BaseCache$RecyclePolicy;I)V

    .line 420
    :cond_3
    return-object v0

    .line 411
    :catch_0
    move-exception v6

    .line 412
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to decode stream"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    invoke-static {v7}, Lcom/sea_monster/cache/IoUtils;->closeStream(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sea_monster/cache/IoUtils;->closeStream(Ljava/io/InputStream;)V

    throw v0
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->containsInMemoryCache(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->containsInDiskCache(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsInDiskCache(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache;->contains(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsInMemoryCache(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Landroid/net/Uri;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/cache/BitmapCacheWrapper;->get(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "decodeOpts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->getFromMemoryCache(Landroid/net/Uri;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    .line 116
    .local v0, "result":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    const-string v1, "BitmapCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->getFromDisk(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    const-string v1, "BitmapCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->getFromContent(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_3
    const-string v1, "BitmapCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->getFromDiskCache(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getFileFromDiskCache(Landroid/net/Uri;)Ljava/io/File;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getFromContent(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "decodeOpts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "result":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    if-eqz p1, :cond_0

    .line 175
    new-instance v1, Lcom/sea_monster/cache/BaseCache$ContentStreamProvider;

    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, p1}, Lcom/sea_monster/cache/BaseCache$ContentStreamProvider;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mSizeLimit:I

    invoke-direct {p0, v1, v2, p2, v3}, Lcom/sea_monster/cache/BitmapCacheWrapper;->decodeBitmap(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {v1, v0}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->put(Lcom/sea_monster/cache/CacheableBitmapDrawable;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v1, p1}, Lcom/sea_monster/cache/BaseCache;->remove(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public getFromDisk(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "decodeOpts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "result":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    if-eqz p1, :cond_1

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const/4 v2, 0x0

    .line 211
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 200
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v2, Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;

    invoke-direct {v2, v0}, Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->decodeBitmap(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_2

    .line 203
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {v2, v1}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->put(Lcom/sea_monster/cache/CacheableBitmapDrawable;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    move-object v2, v1

    .line 211
    goto :goto_0

    .line 207
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v2, p1}, Lcom/sea_monster/cache/BaseCache;->remove(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public getFromDiskCache(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "decodeOpts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, "result":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 151
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v2, p1}, Lcom/sea_monster/cache/BaseCache;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 153
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 154
    const/4 v2, 0x0

    .line 167
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 156
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v2, Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;

    invoke-direct {v2, v0}, Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->decodeBitmap(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_2

    .line 159
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {v2, v1}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->put(Lcom/sea_monster/cache/CacheableBitmapDrawable;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    move-object v2, v1

    .line 167
    goto :goto_0

    .line 163
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v2, p1}, Lcom/sea_monster/cache/BaseCache;->remove(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public getFromMemoryCache(Landroid/net/Uri;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "result":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 235
    iget-object v3, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    monitor-enter v3

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-object v1, v0

    .line 239
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->isBitmapValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const/4 v1, 0x0

    .line 243
    :cond_0
    monitor-exit v3

    .line 246
    :cond_1
    return-object v1

    .line 243
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isMemoryCacheEnabled()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 266
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x41

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sea_monster/cache/BitmapCacheWrapper;->put(Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/sea_monster/cache/CacheableBitmapDrawable;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "compressQuality"    # I

    .prologue
    .line 284
    if-nez p1, :cond_1

    .line 285
    const/4 v0, 0x0

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    new-instance v0, Lcom/sea_monster/cache/CacheableBitmapDrawable;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    const/4 v5, -0x1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/cache/CacheableBitmapDrawable;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/sea_monster/cache/BaseCache$RecyclePolicy;I)V

    .line 290
    .local v0, "d":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {v1, v0}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->put(Lcom/sea_monster/cache/CacheableBitmapDrawable;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v1, :cond_0

    .line 295
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2, p3, p4, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 297
    iget-object v1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, p1, v2}, Lcom/sea_monster/cache/BaseCache;->put(Landroid/net/Uri;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public put(Landroid/net/Uri;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sea_monster/cache/BitmapCacheWrapper;->put(Landroid/net/Uri;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V

    .line 318
    return-void
.end method

.method public put(Landroid/net/Uri;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "decodeOpts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 338
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v2, p1, p2}, Lcom/sea_monster/cache/BaseCache;->put(Landroid/net/Uri;Ljava/io/InputStream;)V

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "d":Lcom/sea_monster/cache/CacheableBitmapDrawable;
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v2, p1}, Lcom/sea_monster/cache/BaseCache;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 347
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 349
    new-instance v2, Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;

    invoke-direct {v2, v1}, Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lcom/sea_monster/cache/BitmapCacheWrapper;->decodeBitmap(Lcom/sea_monster/cache/BaseCache$InputStreamProvider;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/sea_monster/cache/CacheableBitmapDrawable;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v2, :cond_0

    .line 353
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->setCached(Z)V

    .line 354
    iget-object v2, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {v0}, Lcom/sea_monster/cache/CacheableBitmapDrawable;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/BaseCache;->remove(Landroid/net/Uri;)V

    .line 373
    :cond_1
    return-void
.end method

.method public setCache(Lcom/sea_monster/cache/BaseCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/sea_monster/cache/BaseCache;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mCache:Lcom/sea_monster/cache/BaseCache;

    .line 44
    return-void
.end method

.method setMemoryCache(Lcom/sea_monster/cache/BitmapMemoryLruCache;)V
    .locals 1
    .param p1, "memoryCache"    # Lcom/sea_monster/cache/BitmapMemoryLruCache;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    .line 39
    invoke-virtual {p1}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->getRecyclePolicy()Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mRecyclePolicy:Lcom/sea_monster/cache/BaseCache$RecyclePolicy;

    .line 40
    return-void
.end method

.method public setSizeLimit(I)V
    .locals 0
    .param p1, "sizeLimit"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mSizeLimit:I

    .line 88
    return-void
.end method

.method public trimMemory()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sea_monster/cache/BitmapCacheWrapper;->mMemoryCache:Lcom/sea_monster/cache/BitmapMemoryLruCache;

    invoke-virtual {v0}, Lcom/sea_monster/cache/BitmapMemoryLruCache;->trimMemory()V

    .line 384
    :cond_0
    return-void
.end method
