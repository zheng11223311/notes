.class public Lcom/youtu/apps/image/ImageFetcher;
.super Lcom/youtu/apps/image/ImageResizer;
.source "ImageFetcher.java"


# static fields
.field public static final HTTP_CACHE_DIR:Ljava/lang/String; = "http"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageResizer;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageFetcher;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/youtu/apps/image/ImageResizer;-><init>(Landroid/content/Context;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageFetcher;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/youtu/apps/image/ImageResizer;-><init>(Landroid/content/Context;II)V

    .line 49
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageFetcher;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private checkConnection(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 82
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageFetcher;->checkConnection(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v2, p0, Lcom/youtu/apps/image/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/youtu/apps/image/ImageFetcher;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 96
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/youtu/apps/image/ImageFetcher;->mImageWidth:I

    iget v4, p0, Lcom/youtu/apps/image/ImageFetcher;->mImageHeight:I

    invoke-static {v2, v3, v4}, Lcom/youtu/apps/image/ImageFetcher;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 107
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Lcom/youtu/apps/image/ImageFetcher;->getImageCache()Lcom/youtu/apps/image/ImageCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youtu/apps/image/ImageCache;->clearCaches()V

    .line 103
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 107
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/youtu/apps/image/ImageFetcher;->getImageCache()Lcom/youtu/apps/image/ImageCache;

    move-result-object v10

    invoke-virtual {v10}, Lcom/youtu/apps/image/ImageCache;->getDiskCache()Lcom/youtu/apps/image/DiskLruCache;

    move-result-object v2

    .line 129
    .local v2, "cache":Lcom/youtu/apps/image/DiskLruCache;
    if-nez v2, :cond_1

    move-object v3, v11

    .line 168
    :cond_0
    :goto_0
    return-object v3

    .line 133
    :cond_1
    invoke-static {p2}, Lcom/youtu/apps/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2, v4}, Lcom/youtu/apps/image/DiskLruCache;->createFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "cacheFile":Ljava/io/File;
    invoke-static {}, Lcom/youtu/apps/image/Utils;->disableConnectionReuseIfNecessary()V

    .line 137
    const/4 v9, 0x0

    .line 138
    .local v9, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 141
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 142
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 143
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v12, 0x2000

    invoke-direct {v5, v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 145
    .local v5, "in":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x2000

    invoke-direct {v7, v10, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .local v7, "out":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "b":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_4

    .line 150
    invoke-virtual {v7, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 155
    .end local v1    # "b":I
    :catch_0
    move-exception v10

    move-object v6, v7

    .line 157
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    if-eqz v9, :cond_2

    .line 158
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_2
    if-eqz v6, :cond_3

    .line 162
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    move-object v3, v11

    .line 168
    goto :goto_0

    .line 157
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "b":I
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_4
    if-eqz v9, :cond_5

    .line 158
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_5
    if-eqz v7, :cond_0

    .line 162
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 163
    :catch_1
    move-exception v10

    goto :goto_0

    .line 157
    .end local v1    # "b":I
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v9, :cond_6

    .line 158
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_6
    if-eqz v6, :cond_7

    .line 162
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 164
    :cond_7
    :goto_5
    throw v10

    .line 163
    :catch_2
    move-exception v10

    goto :goto_3

    :catch_3
    move-exception v11

    goto :goto_5

    .line 157
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 155
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "url":Ljava/net/URL;
    :catch_4
    move-exception v10

    goto :goto_2
.end method

.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youtu/apps/image/ImageFetcher;->processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
