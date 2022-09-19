.class public abstract Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;
.super Ljava/lang/Object;
.source "AbsImageLoaderRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCacheable:Z

.field private mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

.field private mMessage:Ljava/lang/String;

.field private mSingleTag:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mUrl:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mMessage:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mCacheable:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mTag:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mSingleTag:Ljava/lang/String;

    return-void
.end method

.method private httpLoadImage()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 85
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 86
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 87
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v8

    const-wide/16 v10, 0x3a98

    invoke-virtual {v8, v10, v11}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->setTimeout(J)V

    .line 88
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 89
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 90
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 91
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 92
    .local v3, "inStream":Ljava/io/InputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 94
    const/4 v8, 0x1

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 95
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 96
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 97
    const/4 v8, 0x0

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 99
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 100
    iget-object v8, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    .line 113
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return v6

    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    move v6, v7

    .line 103
    goto :goto_0

    .line 105
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 106
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCategoryTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mSingleTag:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mCacheable:Z

    if-eqz v0, :cond_2

    .line 63
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;->onLoaderComplition(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->httpLoadImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/youku/laifeng/sdk/util/NetworkImageCache;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 69
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;->onLoaderComplition(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;->onLoaderError(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->httpLoadImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;->onLoaderComplition(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;->onLoaderError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCacheable(Z)V
    .locals 0
    .param p1, "cacheable"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mCacheable:Z

    .line 58
    return-void
.end method

.method public setCategoryTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mTag:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setListener(Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;)V
    .locals 0
    .param p1, "l"    # Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mListener:Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;

    .line 54
    return-void
.end method

.method public setSingleTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "stag"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mSingleTag:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->mUrl:Ljava/lang/String;

    .line 50
    return-void
.end method
