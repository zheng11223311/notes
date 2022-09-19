.class public Lcom/youku/laifeng/sdk/util/NetworkImageCache;
.super Ljava/lang/Object;
.source "NetworkImageCache.java"


# static fields
.field private static instance:Lcom/youku/laifeng/sdk/util/NetworkImageCache;

.field private static mMemoryCache:Landroid/support/v4/util/LruCache;
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

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private mImagePathDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMutex:Ljava/lang/Object;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageCache;

    .line 22
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->getMemoryCache()Landroid/support/v4/util/LruCache;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getHeadDirPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private diskLoadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 78
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/corncop/virgo/VirgoPreDecodeAct;->getcompressedimage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 85
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private diskSaveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x0

    .line 94
    .local v1, "destFile":Ljava/io/File;
    :try_start_0
    iget-object v4, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 95
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v1    # "destFile":Ljava/io/File;
    .local v2, "destFile":Ljava/io/File;
    move-object v1, v2

    .line 99
    .end local v2    # "destFile":Ljava/io/File;
    .restart local v1    # "destFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 102
    :cond_3
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 105
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageCache;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageCache;

    if-nez v0, :cond_1

    .line 40
    sget-object v1, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageCache;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageCache;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageCache;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageCache;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "MemoryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemoryCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2}, Landroid/support/v4/util/LruCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->diskLoadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 54
    :cond_0
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide v8, 0x3fe999999999999aL    # 0.8

    .line 58
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4}, Landroid/support/v4/util/LruCache;->size()I

    move-result v4

    int-to-float v0, v4

    .line 59
    .local v0, "a":F
    sget-object v4, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4}, Landroid/support/v4/util/LruCache;->maxSize()I

    move-result v4

    int-to-float v1, v4

    .line 60
    .local v1, "b":F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v2, v4

    .line 61
    .local v2, "ma":F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    long-to-float v3, v4

    .line 62
    .local v3, "mb":F
    div-float v4, v0, v1

    float-to-double v4, v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_0

    div-float v4, v2, v3

    float-to-double v4, v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_0

    .line 63
    const-string v4, "MemoryCache"

    const-string v5, "clear MemoryCache"

    invoke-static {v4, v5}, Lcom/youku/laifeng/libcuteroom/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v4, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 67
    sget-object v4, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->diskSaveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    monitor-exit p0

    return-void

    .line 58
    .end local v0    # "a":F
    .end local v1    # "b":F
    .end local v2    # "ma":F
    .end local v3    # "mb":F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setImagePathDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->mImagePathDir:Ljava/lang/String;

    .line 74
    return-void
.end method
