.class public Lcom/youtu/apps/image/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# static fields
.field private static final CACHE_FILENAME_PREFIX:Ljava/lang/String; = "cache_"

.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAX_REMOVALS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DiskLruCache"

.field private static final cacheFileFilter:Ljava/io/FilenameFilter;


# instance fields
.field private cacheByteSize:I

.field private cacheSize:I

.field private final mCacheDir:Ljava/io/File;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private final mLinkedHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxCacheByteSize:J

.field private final maxCacheItemSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/youtu/apps/image/DiskLruCache$1;

    invoke-direct {v0}, Lcom/youtu/apps/image/DiskLruCache$1;-><init>()V

    sput-object v0, Lcom/youtu/apps/image/DiskLruCache;->cacheFileFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxByteSize"    # J

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheSize:I

    .line 51
    iput v0, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheByteSize:I

    .line 52
    const/16 v0, 0x80

    iput v0, p0, Lcom/youtu/apps/image/DiskLruCache;->maxCacheItemSize:I

    .line 53
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/youtu/apps/image/DiskLruCache;->maxCacheByteSize:J

    .line 54
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/youtu/apps/image/DiskLruCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 55
    const/16 v0, 0x46

    iput v0, p0, Lcom/youtu/apps/image/DiskLruCache;->mCompressQuality:I

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    .line 106
    iput-object p1, p0, Lcom/youtu/apps/image/DiskLruCache;->mCacheDir:Ljava/io/File;

    .line 107
    iput-wide p2, p0, Lcom/youtu/apps/image/DiskLruCache;->maxCacheByteSize:J

    .line 108
    return-void
.end method

.method public static clearCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p0, p1}, Lcom/youtu/apps/image/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 242
    .local v0, "cacheDir":Ljava/io/File;
    invoke-static {v0}, Lcom/youtu/apps/image/DiskLruCache;->clearCache(Ljava/io/File;)V

    .line 243
    return-void
.end method

.method private static clearCache(Ljava/io/File;)V
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 254
    sget-object v2, Lcom/youtu/apps/image/DiskLruCache;->cacheFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 257
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 298
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 304
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flushCache()V
    .locals 10

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 154
    .local v0, "count":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    iget v3, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheSize:I

    const/16 v6, 0x80

    if-gt v3, v6, :cond_0

    iget v3, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheByteSize:I

    int-to-long v6, v3

    iget-wide v8, p0, Lcom/youtu/apps/image/DiskLruCache;->maxCacheByteSize:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    .local v1, "eldestEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "eldestFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 158
    .local v4, "eldestFileSize":J
    iget-object v3, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 160
    iget-object v3, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iput v3, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheSize:I

    .line 161
    iget v3, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheByteSize:I

    int-to-long v6, v3

    sub-long/2addr v6, v4

    long-to-int v3, v6

    iput v3, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheByteSize:I

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "eldestEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "eldestFile":Ljava/io/File;
    .end local v4    # "eldestFileSize":J
    :cond_1
    return-void
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/youtu/apps/image/Utils;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/youtu/apps/image/Utils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/youtu/apps/image/Utils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "cachePath":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 276
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/youtu/apps/image/DiskLruCache;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxByteSize"    # J

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {p1}, Lcom/youtu/apps/image/Utils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_1

    .line 88
    new-instance v0, Lcom/youtu/apps/image/DiskLruCache;

    invoke-direct {v0, p1, p2, p3}, Lcom/youtu/apps/image/DiskLruCache;-><init>(Ljava/io/File;J)V

    .line 94
    :goto_0
    return-object v0

    .line 90
    :cond_1
    new-instance v0, Lcom/youtu/apps/image/DiskLruCache;

    const-wide/16 v2, 0x2

    div-long v2, p2, v2

    invoke-direct {v0, p1, v2, v3}, Lcom/youtu/apps/image/DiskLruCache;-><init>(Ljava/io/File;J)V

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 130
    .local v0, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v2, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iput v2, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheSize:I

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v2, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iput v2, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheSize:I

    .line 137
    iget v2, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheByteSize:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheByteSize:I

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/youtu/apps/image/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/youtu/apps/image/DiskLruCache;->clearCache(Ljava/io/File;)V

    .line 228
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/youtu/apps/image/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/youtu/apps/image/DiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v3, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "file":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 195
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3

    .line 204
    :goto_0
    return-object v2

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/youtu/apps/image/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v2, p1}, Lcom/youtu/apps/image/DiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "existingFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/youtu/apps/image/DiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 205
    .end local v0    # "existingFile":Ljava/lang/String;
    .end local v1    # "file":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 204
    .restart local v0    # "existingFile":Ljava/lang/String;
    .restart local v1    # "file":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/graphics/Bitmap;

    .prologue
    .line 119
    iget-object v2, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v2

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/youtu/apps/image/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/youtu/apps/image/DiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "file":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/youtu/apps/image/DiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/youtu/apps/image/DiskLruCache;->flushCache()V

    .line 125
    .end local v0    # "file":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v4, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, "file":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 174
    .local v2, "fLength":J
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v4, p0, Lcom/youtu/apps/image/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iput v4, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheSize:I

    .line 178
    iget v4, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheByteSize:I

    int-to-long v4, v4

    sub-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Lcom/youtu/apps/image/DiskLruCache;->cacheByteSize:I

    .line 182
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "fLength":J
    :cond_0
    return-void
.end method

.method public setCompressParams(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .prologue
    .line 326
    iput-object p1, p0, Lcom/youtu/apps/image/DiskLruCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 327
    iput p2, p0, Lcom/youtu/apps/image/DiskLruCache;->mCompressQuality:I

    .line 328
    return-void
.end method
