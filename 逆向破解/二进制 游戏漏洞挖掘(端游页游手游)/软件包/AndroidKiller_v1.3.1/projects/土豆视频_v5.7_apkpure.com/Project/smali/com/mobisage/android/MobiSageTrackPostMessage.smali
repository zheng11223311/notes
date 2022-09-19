.class public Lcom/mobisage/android/MobiSageTrackPostMessage;
.super Lcom/mobisage/android/MobiSageTrackMessage;
.source "MobiSageTrackPostMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageTrackMessage;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 5

    .prologue
    .line 17
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageTrackPostMessage;->trackPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v1, "trackFile":Ljava/io/File;
    invoke-static {v1}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "trackText":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v3

    const-string/jumbo v4, "trcsvr"

    invoke-virtual {v3, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getSVRUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    const-string v3, "Connection"

    const-string v4, "close"

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-object v0

    .line 23
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public createMessageRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/mobisage/android/MobiSageTrackRunnable;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageTrackRunnable;-><init>(Lcom/mobisage/android/MobiSageTrackMessage;)V

    return-object v0
.end method
