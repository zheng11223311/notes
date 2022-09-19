.class public Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;
.super Ljava/lang/Object;
.source "ImageLoadCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .line 33
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .line 34
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapUrl(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-static {p1}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapKey(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getImageDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapPath(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private getDiskBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable<TV;>;"
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private httpLoadImage()Z
    .locals 13

    .prologue
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable<TV;>;"
    const/4 v10, 0x1

    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v11}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 90
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v11, 0x1388

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 91
    const/16 v11, 0x2710

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 92
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 93
    const-string v11, "GET"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 95
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 96
    .local v6, "inStream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_0

    .line 97
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 99
    const/4 v11, 0x1

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 100
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 101
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 102
    const/4 v11, 0x0

    invoke-static {v6, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    iget-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v11, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 105
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 128
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "url":Ljava/net/URL;
    :goto_0
    return v10

    .line 108
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_0
    const-string v8, ""

    .line 109
    .local v8, "readerLine":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 110
    .local v4, "errStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 111
    .local v5, "iSr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v0, "bFr":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 116
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 117
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 119
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 120
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    .end local v0    # "bFr":Ljava/io/BufferedReader;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "errStream":Ljava/io/InputStream;
    .end local v5    # "iSr":Ljava/io/InputStreamReader;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v8    # "readerLine":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :cond_2
    :goto_2
    const/4 v10, 0x0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v10, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 123
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v3

    .line 124
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v10, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 125
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 126
    .local v3, "e":Lorg/apache/http/ParseException;
    sget-boolean v10, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable<TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "destFile":Ljava/io/File;
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 78
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 79
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private showCacheBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 56
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable<TV;>;"
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->getImageCache()Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 57
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 63
    :goto_0
    return-object v1

    .line 59
    :cond_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->getDiskBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable<TV;>;"
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->showCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 52
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    return-object v1

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->httpLoadImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
