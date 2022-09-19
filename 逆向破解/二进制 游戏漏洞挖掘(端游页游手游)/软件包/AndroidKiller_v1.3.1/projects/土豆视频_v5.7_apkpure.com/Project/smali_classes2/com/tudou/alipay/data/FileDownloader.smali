.class public final Lcom/tudou/alipay/data/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;,
        Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;
    }
.end annotation


# instance fields
.field private fetch:Lcom/tudou/alipay/data/FileFetch;

.field private fileUrl:Ljava/lang/String;

.field private progressOutput:Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

.field private savePath:Ljava/lang/String;

.field private showProgress:Z

.field private tmpPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/alipay/data/FileDownloader;->showProgress:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "showProgress"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Lcom/tudou/alipay/data/FileDownloader;->showProgress:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/alipay/data/FileDownloader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tudou/alipay/data/FileDownloader;->showProgress:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/alipay/data/FileDownloader;->fetch:Lcom/tudou/alipay/data/FileFetch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/alipay/data/FileDownloader;Lcom/tudou/alipay/data/FileFetch;)Lcom/tudou/alipay/data/FileFetch;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;
    .param p1, "x1"    # Lcom/tudou/alipay/data/FileFetch;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tudou/alipay/data/FileDownloader;->fetch:Lcom/tudou/alipay/data/FileFetch;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/alipay/data/FileDownloader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/alipay/data/FileDownloader;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/alipay/data/FileDownloader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/alipay/data/FileDownloader;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/alipay/data/FileDownloader;)J
    .locals 2
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/alipay/data/FileDownloader;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/tudou/alipay/data/FileDownloader;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/alipay/data/FileDownloader;->deleteFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/alipay/data/FileDownloader;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/alipay/data/FileDownloader;->readTempFile()V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/alipay/data/FileDownloader;->progressOutput:Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    return-object v0
.end method

.method private deleteFile()V
    .locals 4

    .prologue
    .line 159
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileDownloader.deleteFile():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/alipay/data/FileDownloader;->savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader;->savePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v2, "FileDownloader.savePath.exists"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 165
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v2, "FileDownloader.savePath.delete"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader;->tmpPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v2, "FileDownloader.tmpPath.exists"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v2, "FileDownloader.tmpPath.delete"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    return-void
.end method

.method private getFileSize()J
    .locals 6

    .prologue
    .line 145
    const-wide/16 v2, -0x1

    .line 147
    .local v2, "fileLength":J
    :try_start_0
    iget-object v4, p0, Lcom/tudou/alipay/data/FileDownloader;->fileUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tudou/alipay/data/FileDownloader;->getHttpEntity(Ljava/lang/String;Z)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 148
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 154
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :goto_0
    return-wide v2

    .line 149
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHttpEntity(Ljava/lang/String;Z)Lorg/apache/http/HttpEntity;
    .locals 9
    .param p0, "netAddress"    # Ljava/lang/String;
    .param p1, "isZip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 227
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 228
    .local v3, "httpClient":Lorg/apache/http/client/HttpClient;
    if-eqz p1, :cond_0

    .line 229
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 234
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 235
    .local v0, "code":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_1

    .line 236
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 246
    .end local v0    # "code":I
    .end local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 239
    .restart local v0    # "code":I
    .restart local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net work exception,ErrorCode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .end local v0    # "code":I
    .end local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 246
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 243
    :catch_1
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readTempFile()V
    .locals 8

    .prologue
    .line 200
    sget-object v5, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v6, "FileDownloader.readTempFile()"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 204
    .local v3, "objIn":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader;->tmpPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .local v4, "objIn":Ljava/io/ObjectInputStream;
    :try_start_2
    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader;->fetch:Lcom/tudou/alipay/data/FileFetch;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tudou/alipay/data/FileFetch;->setFileStart(J)V

    .line 207
    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader;->fetch:Lcom/tudou/alipay/data/FileFetch;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tudou/alipay/data/FileFetch;->setFileEnd(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 212
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 216
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 220
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 217
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "objIn":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 219
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 216
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 217
    :catch_2
    move-exception v5

    goto :goto_1

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 212
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 216
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 218
    :goto_6
    throw v5

    .line 213
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "objIn":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v5

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    goto :goto_5

    .line 217
    :catch_6
    move-exception v6

    goto :goto_6

    .line 211
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "objIn":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 208
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "objIn":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public final setFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tudou/alipay/data/FileDownloader;->fileUrl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final setProgressOutput(Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;)V
    .locals 0
    .param p1, "progressOutput"    # Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lcom/tudou/alipay/data/FileDownloader;->progressOutput:Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    .line 90
    :cond_0
    return-void
.end method

.method public final setSavePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tudou/alipay/data/FileDownloader;->savePath:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/alipay/data/FileDownloader;->tmpPath:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public final setShowProgress(Z)V
    .locals 0
    .param p1, "showProgress"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/tudou/alipay/data/FileDownloader;->showProgress:Z

    .line 66
    return-void
.end method

.method protected final showProgress()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/tudou/alipay/data/FileDownloader;->showProgress:Z

    return v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;-><init>(Lcom/tudou/alipay/data/FileDownloader;Landroid/os/Looper;)V

    .line 94
    .local v0, "output":Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tudou/alipay/data/FileDownloader$1;

    invoke-direct {v2, p0, v0}, Lcom/tudou/alipay/data/FileDownloader$1;-><init>(Lcom/tudou/alipay/data/FileDownloader;Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 137
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tudou/alipay/data/FileDownloader;->fetch:Lcom/tudou/alipay/data/FileFetch;

    invoke-virtual {v0}, Lcom/tudou/alipay/data/FileFetch;->stop()V

    .line 142
    return-void
.end method

.method protected writeTempFile()V
    .locals 8

    .prologue
    .line 176
    sget-object v5, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v6, "FileDownloader.writeTempFile()"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v3, 0x0

    .line 178
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 180
    .local v1, "objOut":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader;->tmpPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .local v2, "objOut":Ljava/io/ObjectOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader;->fetch:Lcom/tudou/alipay/data/FileFetch;

    invoke-virtual {v5}, Lcom/tudou/alipay/data/FileFetch;->getFileStart()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 183
    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader;->fetch:Lcom/tudou/alipay/data/FileFetch;

    invoke-virtual {v5}, Lcom/tudou/alipay/data/FileFetch;->getFileEnd()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 184
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 189
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 197
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 194
    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 196
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 193
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 194
    :catch_2
    move-exception v5

    goto :goto_1

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 189
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 193
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 195
    :goto_6
    throw v5

    .line 190
    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    goto :goto_5

    .line 194
    :catch_6
    move-exception v6

    goto :goto_6

    .line 188
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 185
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
