.class Lcom/mobisage/android/MobiSageResMessage;
.super Lcom/mobisage/android/MobiSageMessage;
.source "MobiSageResMessage.java"


# instance fields
.field cacheLength:J

.field isNeedRange:Ljava/lang/Boolean;

.field public sourceURL:Ljava/lang/String;

.field public targetURL:Ljava/lang/String;

.field public tempURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageMessage;-><init>()V

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/mobisage/android/MobiSageResMessage;->messageType:I

    .line 16
    return-void
.end method


# virtual methods
.method public createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 27
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageResMessage;->tempURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/mobisage/android/MobiSageResMessage;->isNeedRange:Ljava/lang/Boolean;

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mobisage/android/MobiSageResMessage;->cacheLength:J

    .line 32
    const-string v2, "Range"

    const-string v3, "bytes=%d-"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-object v0

    .line 35
    :cond_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/mobisage/android/MobiSageResMessage;->isNeedRange:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public createMessageRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/mobisage/android/MobiSageResRunnable;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageResRunnable;-><init>(Lcom/mobisage/android/MobiSageResMessage;)V

    return-object v0
.end method
