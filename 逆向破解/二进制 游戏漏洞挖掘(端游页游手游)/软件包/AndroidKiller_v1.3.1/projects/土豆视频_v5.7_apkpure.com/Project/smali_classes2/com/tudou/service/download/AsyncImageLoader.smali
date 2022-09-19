.class public Lcom/tudou/service/download/AsyncImageLoader;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncImageLoader"

.field private static instance:Lcom/tudou/service/download/AsyncImageLoader;


# instance fields
.field private imageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/service/download/AsyncImageLoader;->instance:Lcom/tudou/service/download/AsyncImageLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/service/download/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/download/AsyncImageLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/AsyncImageLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tudou/service/download/AsyncImageLoader;->loadImageFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/service/download/AsyncImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/AsyncImageLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/service/download/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/tudou/service/download/AsyncImageLoader;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/tudou/service/download/AsyncImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/service/download/AsyncImageLoader;->instance:Lcom/tudou/service/download/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/tudou/service/download/AsyncImageLoader;

    invoke-direct {v0}, Lcom/tudou/service/download/AsyncImageLoader;-><init>()V

    sput-object v0, Lcom/tudou/service/download/AsyncImageLoader;->instance:Lcom/tudou/service/download/AsyncImageLoader;

    .line 60
    :cond_0
    sget-object v0, Lcom/tudou/service/download/AsyncImageLoader;->instance:Lcom/tudou/service/download/AsyncImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadImageFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "u":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 175
    .local v0, "c":Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 176
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 177
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 183
    .end local v0    # "c":Ljava/net/HttpURLConnection;
    .end local v2    # "u":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v3, "AsyncImageLoader"

    const-string v4, "loadImageFromUrl"

    invoke-static {v3, v4, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "AsyncImageLoader"

    const-string v4, "loadImageFromUrl"

    invoke-static {v3, v4, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public loadDrawable(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "pathName"    # Ljava/lang/String;
    .param p4, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tudou/service/download/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tudou/service/download/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 72
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 143
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v7

    .line 75
    :cond_0
    const/4 v6, 0x0

    .line 77
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 83
    :goto_1
    if-eqz v6, :cond_1

    .line 84
    iget-object v0, p0, Lcom/tudou/service/download/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    .line 85
    goto :goto_0

    .line 78
    :catch_0
    move-exception v8

    .line 80
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 81
    const-string v0, "AsyncImageLoader"

    const-string v1, "AsyncImageLoader#loadDrawable()"

    invoke-static {v0, v1, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 97
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p4, Lcom/tudou/service/download/DownloadInfo;->isThumbnailDownloading:Z

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Lcom/tudou/service/download/AsyncImageLoader$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tudou/service/download/AsyncImageLoader$1;-><init>(Lcom/tudou/service/download/AsyncImageLoader;Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/service/download/AsyncImageLoader$1;->start()V

    .line 143
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public loadDrawable(Ljava/lang/String;Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageCallback"    # Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;

    .prologue
    .line 147
    iget-object v3, p0, Lcom/tudou/service/download/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/tudou/service/download/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 149
    .local v2, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 150
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 168
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    return-object v0

    .line 154
    :cond_0
    new-instance v1, Lcom/tudou/service/download/AsyncImageLoader$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/tudou/service/download/AsyncImageLoader$2;-><init>(Lcom/tudou/service/download/AsyncImageLoader;Lcom/tudou/service/download/AsyncImageLoader$ImageCallback;Ljava/lang/String;)V

    .line 159
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/tudou/service/download/AsyncImageLoader$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/tudou/service/download/AsyncImageLoader$3;-><init>(Lcom/tudou/service/download/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v3}, Lcom/tudou/service/download/AsyncImageLoader$3;->start()V

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method
