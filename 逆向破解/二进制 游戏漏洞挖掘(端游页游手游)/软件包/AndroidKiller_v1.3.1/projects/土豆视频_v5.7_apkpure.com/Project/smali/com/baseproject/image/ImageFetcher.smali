.class public Lcom/baseproject/image/ImageFetcher;
.super Lcom/baseproject/image/ImageResizer;
.source "ImageFetcher.java"


# static fields
.field public static final HTTP_CACHE_DIR:Ljava/lang/String; = "http"

.field private static final TAG:Ljava/lang/String; = "ImageFetcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageResizer;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageFetcher;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/baseproject/image/ImageResizer;-><init>(Landroid/content/Context;I)V

    .line 67
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageFetcher;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/baseproject/image/ImageResizer;-><init>(Landroid/content/Context;II)V

    .line 55
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageFetcher;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private checkConnection(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 88
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    const-string v2, "ImageFetcher"

    const-string v3, "checkConnection - no connection found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageFetcher;->checkConnection(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private processBitmap(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/baseproject/image/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/baseproject/image/ImageFetcher;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 110
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 113
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/baseproject/image/ImageFetcher;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 125
    :goto_0
    return-object v2

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/baseproject/image/ImageFetcher;->mImageWidth:I

    iget v4, p0, Lcom/baseproject/image/ImageFetcher;->mImageHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/baseproject/image/ImageFetcher;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Lcom/baseproject/image/ImageFetcher;->getImageCache()Lcom/baseproject/image/ImageCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baseproject/image/ImageCache;->clearCaches()V

    .line 120
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 125
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/baseproject/image/ImageFetcher;->getImageCache()Lcom/baseproject/image/ImageCache;

    move-result-object v11

    invoke-virtual {v11}, Lcom/baseproject/image/ImageCache;->getDiskCache()Lcom/baseproject/image/DiskLruCache;

    move-result-object v2

    .line 147
    .local v2, "cache":Lcom/baseproject/image/DiskLruCache;
    if-nez v2, :cond_1

    .line 148
    const/4 v3, 0x0

    .line 190
    :cond_0
    :goto_0
    return-object v3

    .line 151
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/baseproject/image/Utils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2, v5}, Lcom/baseproject/image/DiskLruCache;->createFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, "cacheFile":Ljava/io/File;
    invoke-static {}, Lcom/baseproject/image/Utils;->disableConnectionReuseIfNecessary()V

    .line 158
    const/4 v10, 0x0

    .line 159
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 162
    .local v7, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 163
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 164
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const/16 v12, 0x2000

    invoke-direct {v6, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 166
    .local v6, "in":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x2000

    invoke-direct {v8, v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .local v8, "out":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "b":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_4

    .line 171
    invoke-virtual {v8, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 176
    .end local v1    # "b":I
    :catch_0
    move-exception v11

    move-object v7, v8

    .line 178
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    if-eqz v10, :cond_2

    .line 179
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 181
    :cond_2
    if-eqz v7, :cond_3

    .line 183
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 190
    :cond_3
    :goto_3
    const/4 v3, 0x0

    goto :goto_0

    .line 178
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "b":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_4
    if-eqz v10, :cond_5

    .line 179
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 181
    :cond_5
    if-eqz v8, :cond_0

    .line 183
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 184
    :catch_1
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in downloadBitmap - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v1    # "b":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v4

    .line 185
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in downloadBitmap - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 178
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v10, :cond_6

    .line 179
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 181
    :cond_6
    if-eqz v7, :cond_7

    .line 183
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 186
    :cond_7
    :goto_5
    throw v11

    .line 184
    :catch_3
    move-exception v4

    .line 185
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "ImageFetcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in downloadBitmap - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 178
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 176
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "url":Ljava/net/URL;
    :catch_4
    move-exception v11

    goto :goto_2
.end method

.method protected processBitmap(Ljava/lang/Object;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 130
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/baseproject/image/ImageFetcher;->processBitmap(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
