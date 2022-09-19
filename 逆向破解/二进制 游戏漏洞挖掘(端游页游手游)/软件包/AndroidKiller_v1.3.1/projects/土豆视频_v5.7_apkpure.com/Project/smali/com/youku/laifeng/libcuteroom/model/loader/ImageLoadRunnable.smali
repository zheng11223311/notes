.class public Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;
.super Ljava/lang/Object;
.source "ImageLoadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private isGift:Z

.field private mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

.field private mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

.field mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "bl"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;
    .param p2, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    .line 37
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    .line 38
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->isGift:Z

    .line 50
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    .line 51
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    .line 52
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .line 53
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v0, p3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapUrl(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-static {p3}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapKey(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

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

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapPath(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;Ljava/lang/String;I)V
    .locals 3
    .param p1, "bl"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;
    .param p2, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    .line 37
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    .line 38
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->isGift:Z

    .line 60
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    .line 61
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    .line 62
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .line 63
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v0, p4}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setWidgetId(I)V

    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v0, p3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapUrl(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-static {p3}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapKey(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

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

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapPath(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    .line 37
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    .line 38
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->isGift:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->isGift:Z

    .line 43
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .line 44
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapUrl(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v0, p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapKey(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getGiftsDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapPath(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private getDiskBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private httpLoadImage()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v11}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 148
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 149
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v11, 0x1388

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 150
    const/16 v11, 0x2710

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 151
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 152
    const-string v11, "GET"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 154
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 155
    .local v6, "inStream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_0

    .line 156
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 158
    const/4 v11, 0x1

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 159
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 160
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 161
    const/4 v11, 0x0

    invoke-static {v6, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    iget-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v11, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 164
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 191
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "url":Ljava/net/URL;
    :goto_0
    return v10

    .line 167
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_0
    const-string v8, ""

    .line 168
    .local v8, "readerLine":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 169
    .local v4, "errStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 170
    .local v5, "iSr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 171
    .local v0, "bFr":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 172
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-direct {p0, v10, v8}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 176
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 177
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 179
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 180
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    .end local v0    # "bFr":Ljava/io/BufferedReader;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "errStream":Ljava/io/InputStream;
    .end local v5    # "iSr":Ljava/io/InputStreamReader;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v8    # "readerLine":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :goto_2
    const/4 v10, 0x0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v10, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 183
    :cond_2
    const/16 v10, 0x2000

    const-string v11, "ERR_CLIENT_PROTOCOL_EXCEPTION"

    invoke-direct {p0, v10, v11}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    goto :goto_2

    .line 184
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v10, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    :cond_3
    const/16 v10, 0x2001

    const-string v11, "ERR_IO_EXCEPTION"

    invoke-direct {p0, v10, v11}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    goto :goto_2

    .line 187
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 188
    .local v3, "e":Lorg/apache/http/ParseException;
    sget-boolean v10, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 189
    :cond_4
    const/16 v10, 0x2003

    const-string v11, "ERR_PARSE_EXCEPTION"

    invoke-direct {p0, v10, v11}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    goto :goto_2
.end method

.method private loadCaptcha()Z
    .locals 15

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v13}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapUrl()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 216
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 217
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v13, 0x1388

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 218
    const/16 v13, 0x2710

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 219
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 220
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 221
    const-string v13, "GET"

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 222
    const-string v13, "X-Wap-Proxy-Cookie"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 224
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 225
    .local v8, "inStream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_2

    .line 226
    const/4 v9, 0x0

    .local v9, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 227
    .local v3, "cookie":Ljava/lang/String;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 228
    const-string/jumbo v13, "set-cookie"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 229
    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 232
    :cond_1
    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v13, v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setCooike(Ljava/lang/String;)V

    .line 233
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 234
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 235
    const/4 v13, 0x1

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 236
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 237
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 238
    const/4 v13, 0x0

    invoke-static {v8, v13, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 239
    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v13, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    const-string v14, ""

    invoke-virtual {v13, v14}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapPath(Ljava/lang/String;)V

    .line 241
    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    const-string v14, "captcha"

    invoke-virtual {v13, v14}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmapKey(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 243
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 244
    const/4 v13, 0x1

    .line 270
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "inStream":Ljava/io/InputStream;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "url":Ljava/net/URL;
    :goto_1
    return v13

    .line 246
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "inStream":Ljava/io/InputStream;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_2
    const-string v11, ""

    .line 247
    .local v11, "readerLine":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 248
    .local v5, "errStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 249
    .local v7, "iSr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 250
    .local v0, "bFr":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 251
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 253
    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    invoke-direct {p0, v13, v11}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 255
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 256
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 258
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 259
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 270
    .end local v0    # "bFr":Ljava/io/BufferedReader;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "errStream":Ljava/io/InputStream;
    .end local v7    # "iSr":Ljava/io/InputStreamReader;
    .end local v8    # "inStream":Ljava/io/InputStream;
    .end local v11    # "readerLine":Ljava/lang/String;
    .end local v12    # "url":Ljava/net/URL;
    :goto_3
    const/4 v13, 0x0

    goto :goto_1

    .line 260
    :catch_0
    move-exception v4

    .line 261
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v13, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 262
    :cond_4
    const/16 v13, 0x2000

    const-string v14, "ERR_CLIENT_PROTOCOL_EXCEPTION"

    invoke-direct {p0, v13, v14}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    goto :goto_3

    .line 263
    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v4

    .line 264
    .local v4, "e":Ljava/io/IOException;
    sget-boolean v13, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v13, :cond_5

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    :cond_5
    const/16 v13, 0x2001

    const-string v14, "ERR_IO_EXCEPTION"

    invoke-direct {p0, v13, v14}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    goto :goto_3

    .line 266
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 267
    .local v4, "e":Lorg/apache/http/ParseException;
    sget-boolean v13, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v13, :cond_6

    invoke-virtual {v4}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 268
    :cond_6
    const/16 v13, 0x2003

    const-string v14, "ERR_PARSE_EXCEPTION"

    invoke-direct {p0, v13, v14}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    goto :goto_3
.end method

.method private postErr(ILjava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    invoke-interface {v0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;->onImageLoaderError(ILjava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method

.method private saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 195
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "destFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 203
    :cond_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 206
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized showCacheBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->getImageCache()Landroid/support/v4/util/LruCache;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 137
    :goto_0
    monitor-exit p0

    return-object v4

    .line 111
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getGiftDict()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->getDiskBitmap()Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v4, v0

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getGiftDict()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v6}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getGiftsDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dict"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 122
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    .local v3, "fout":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getGiftDict()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 124
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 125
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 108
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 128
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 130
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x2006

    .line 72
    iget-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->isGift:Z

    if-eqz v1, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->showCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 105
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->httpLoadImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 83
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->LOGIN_CAPTCHA_GET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->loadCaptcha()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-interface {v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;->onImageLoaderComplition(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;)V

    .line 103
    :goto_1
    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    .line 104
    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    goto :goto_0

    .line 87
    :cond_3
    const-string v1, "ERR_IMAGE_EXCEPTION"

    invoke-direct {p0, v3, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_4
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->showCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 92
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-interface {v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;->onImageLoaderComplition(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;)V

    goto :goto_1

    .line 95
    :cond_5
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->httpLoadImage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageLoaderListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mImageServiceListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-interface {v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;->onImageLoaderComplition(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;)V

    .line 97
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->mBitmap:Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 99
    :cond_6
    const-string v1, "ERR_IMAGE_EXCEPTION"

    invoke-direct {p0, v3, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;->postErr(ILjava/lang/String;)V

    goto :goto_1
.end method
