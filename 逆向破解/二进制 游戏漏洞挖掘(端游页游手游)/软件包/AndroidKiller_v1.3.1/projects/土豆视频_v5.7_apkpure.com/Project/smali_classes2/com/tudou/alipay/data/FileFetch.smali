.class final Lcom/tudou/alipay/data/FileFetch;
.super Ljava/lang/Object;
.source "FileFetch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/alipay/data/FileFetch$FileAccess;
    }
.end annotation


# static fields
.field public static final CON_TIME_OUT_MS:I = 0x7530

.field public static final SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final SO_TIME_OUT_MS:I = 0x7530


# instance fields
.field private downloader:Lcom/tudou/alipay/data/FileDownloader;

.field private fileEnd:J

.field private fileStart:J

.field private fileUrl:Ljava/lang/String;

.field private isFinished:Z

.field private savePath:Ljava/lang/String;

.field private stop:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tudou/alipay/data/FileDownloader;)V
    .locals 1
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "downloader"    # Lcom/tudou/alipay/data/FileDownloader;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/tudou/alipay/data/FileFetch;->stop:Z

    .line 42
    iput-boolean v0, p0, Lcom/tudou/alipay/data/FileFetch;->isFinished:Z

    .line 49
    iput-object p1, p0, Lcom/tudou/alipay/data/FileFetch;->fileUrl:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/tudou/alipay/data/FileFetch;->savePath:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/tudou/alipay/data/FileFetch;->downloader:Lcom/tudou/alipay/data/FileDownloader;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/alipay/data/FileFetch;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileFetch;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/alipay/data/FileFetch;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method private createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    const/16 v2, 0x7530

    .line 162
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 163
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 164
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 165
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 166
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 167
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 168
    return-object v0
.end method


# virtual methods
.method public final getFileEnd()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/tudou/alipay/data/FileFetch;->fileEnd:J

    return-wide v0
.end method

.method public final getFileStart()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    return-wide v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/tudou/alipay/data/FileFetch;->isFinished:Z

    return v0
.end method

.method public final isStop()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/tudou/alipay/data/FileFetch;->stop:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 55
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch..........run()"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/alipay/data/FileFetch;->downloader:Lcom/tudou/alipay/data/FileDownloader;

    invoke-virtual {v14}, Lcom/tudou/alipay/data/FileDownloader;->showProgress()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 57
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/tudou/alipay/data/FileFetch;->fileEnd:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tudou/alipay/data/FileFetch;->fileEnd:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_1

    .line 58
    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z

    .line 159
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v3, 0x0

    .line 63
    .local v3, "canStop":Z
    new-instance v5, Lcom/tudou/alipay/data/FileFetch$FileAccess;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/tudou/alipay/data/FileFetch$FileAccess;-><init>(Lcom/tudou/alipay/data/FileFetch;)V

    .line 64
    .local v5, "fileAccess":Lcom/tudou/alipay/data/FileFetch$FileAccess;
    const/4 v8, 0x0

    .line 65
    .local v8, "i":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z

    if-nez v14, :cond_4

    .line 66
    add-int/lit8 v8, v8, 0x1

    .line 67
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch..........run()....start:i:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v9, 0x0

    .line 69
    .local v9, "input":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 72
    .local v12, "responseCode":I
    :try_start_0
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/alipay/data/FileFetch;->fileUrl:Ljava/lang/String;

    invoke-direct {v7, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 74
    .local v7, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/tudou/alipay/data/FileFetch;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    invoke-direct {v6, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 75
    .local v6, "httpClient":Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/alipay/data/FileFetch;->downloader:Lcom/tudou/alipay/data/FileDownloader;

    invoke-virtual {v14}, Lcom/tudou/alipay/data/FileDownloader;->showProgress()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 76
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, "property":Ljava/lang/String;
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....Range.....property:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v14, "Range"

    invoke-virtual {v7, v14, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v10    # "property":Ljava/lang/String;
    :cond_3
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 84
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 85
    packed-switch v12, :pswitch_data_0

    .line 98
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z

    .line 99
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....default.....responseCode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_5

    .line 145
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v9, :cond_4

    .line 148
    :try_start_1
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().start"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :goto_3
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().end"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "responseCode":I
    :cond_4
    invoke-virtual {v5}, Lcom/tudou/alipay/data/FileFetch$FileAccess;->close()V

    goto/16 :goto_0

    .line 94
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "input":Ljava/io/InputStream;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "responseCode":I
    :pswitch_0
    :try_start_2
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 95
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....OK.....responseCode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 105
    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    .line 106
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....IOException:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....input:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-nez v9, :cond_6

    .line 111
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....input==null.continue"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v9, :cond_2

    .line 148
    :try_start_4
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().start"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 154
    :goto_4
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().end"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input.close().Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 150
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v4

    .line 151
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input.close().Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 116
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    const/16 v14, 0x2000

    :try_start_5
    new-array v2, v14, [B

    .line 118
    .local v2, "buffer":[B
    :cond_7
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....do.while:....start"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v14, 0x0

    array-length v15, v2

    invoke-virtual {v9, v2, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 120
    .local v13, "size":I
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....do.while:....size:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    .line 122
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....do.while:fileAccess.write:....start:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v2, v0, v13}, Lcom/tudou/alipay/data/FileFetch$FileAccess;->write([BII)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/alipay/data/FileFetch;->downloader:Lcom/tudou/alipay/data/FileDownloader;

    invoke-virtual {v14}, Lcom/tudou/alipay/data/FileDownloader;->showProgress()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/alipay/data/FileFetch;->downloader:Lcom/tudou/alipay/data/FileDownloader;

    invoke-virtual {v14}, Lcom/tudou/alipay/data/FileDownloader;->writeTempFile()V

    .line 127
    :cond_8
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....do.while:fileAccess.write:....end:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/alipay/data/FileFetch;->downloader:Lcom/tudou/alipay/data/FileDownloader;

    invoke-virtual {v14}, Lcom/tudou/alipay/data/FileDownloader;->showProgress()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tudou/alipay/data/FileFetch;->fileEnd:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_b

    const/4 v3, 0x1

    .line 130
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z

    if-nez v14, :cond_d

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    .line 131
    :goto_6
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....do.while:....end:canStop:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",fileStart:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v14, -0x1

    if-le v13, v14, :cond_a

    if-nez v3, :cond_7

    .line 133
    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z

    .line 134
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->isFinished:Z
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v9, :cond_2

    .line 148
    :try_start_6
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().start"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 154
    :goto_7
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().end"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    const/4 v3, 0x1

    goto :goto_5

    .line 130
    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 150
    :catch_3
    move-exception v4

    .line 151
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input.close().Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 135
    .end local v2    # "buffer":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v13    # "size":I
    :catch_4
    move-exception v4

    .line 136
    .local v4, "e":Ljava/net/SocketTimeoutException;
    :try_start_7
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....SocketTimeoutException.responseCode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 145
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v9, :cond_2

    .line 148
    :try_start_8
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().start"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 154
    .end local v4    # "e":Ljava/net/SocketTimeoutException;
    :goto_8
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().end"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    .restart local v4    # "e":Ljava/net/SocketTimeoutException;
    :catch_5
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input.close().Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 138
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 139
    .local v4, "e":Ljava/io/IOException;
    :try_start_9
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....IOException.responseCode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 145
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v9, :cond_2

    .line 148
    :try_start_a
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().start"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 154
    .end local v4    # "e":Ljava/io/IOException;
    :goto_9
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().end"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input.close().Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 141
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 142
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_b
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....Exception.responseCode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/tudou/alipay/data/FileFetch;->stop:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 145
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v9, :cond_2

    .line 148
    :try_start_c
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().start"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 154
    :goto_a
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v15, "FileFetch.....finally:input.close().end"

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    :catch_9
    move-exception v4

    .line 151
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    sget-object v14, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileFetch.....finally:input.close().Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 145
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    sget-object v15, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FileFetch.....finally:input:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v9, :cond_e

    .line 148
    :try_start_d
    sget-object v15, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v16, "FileFetch.....finally:input.close().start"

    invoke-static/range {v15 .. v16}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 154
    :goto_b
    sget-object v15, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v16, "FileFetch.....finally:input.close().end"

    invoke-static/range {v15 .. v16}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    throw v14

    .line 150
    :catch_a
    move-exception v4

    .line 151
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    sget-object v15, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FileFetch.....finally:input.close().Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 85
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setFileEnd(J)V
    .locals 1
    .param p1, "fileEnd"    # J

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/tudou/alipay/data/FileFetch;->fileEnd:J

    .line 185
    return-void
.end method

.method public final setFileStart(J)V
    .locals 1
    .param p1, "fileStart"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/tudou/alipay/data/FileFetch;->fileStart:J

    .line 177
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/alipay/data/FileFetch;->stop:Z

    .line 193
    return-void
.end method
