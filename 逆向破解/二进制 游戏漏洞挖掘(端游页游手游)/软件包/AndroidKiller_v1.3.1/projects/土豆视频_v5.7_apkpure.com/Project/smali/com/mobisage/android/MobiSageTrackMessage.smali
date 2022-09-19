.class public Lcom/mobisage/android/MobiSageTrackMessage;
.super Lcom/mobisage/android/MobiSageMessage;
.source "MobiSageTrackMessage.java"


# instance fields
.field public trackPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageMessage;-><init>()V

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobisage/android/MobiSageTrackMessage;->messageType:I

    .line 16
    return-void
.end method


# virtual methods
.method public createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 5

    .prologue
    .line 22
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageTrackMessage;->trackPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "trackFile":Ljava/io/File;
    invoke-static {v1}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "trackText":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "Connection"

    const-string v4, "close"

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-object v0
.end method

.method public createMessageRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/mobisage/android/MobiSageTrackRunnable;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageTrackRunnable;-><init>(Lcom/mobisage/android/MobiSageTrackMessage;)V

    return-object v0
.end method
