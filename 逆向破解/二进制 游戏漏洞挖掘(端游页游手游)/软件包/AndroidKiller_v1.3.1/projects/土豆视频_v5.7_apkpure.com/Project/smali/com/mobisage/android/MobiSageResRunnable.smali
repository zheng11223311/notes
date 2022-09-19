.class Lcom/mobisage/android/MobiSageResRunnable;
.super Lcom/mobisage/android/MobiSageRunnable;
.source "MobiSageResRunnable.java"


# static fields
.field protected static final Max_Cache_Size:I = 0xffff


# instance fields
.field protected inputStream:Ljava/io/InputStream;

.field protected outputStream:Ljava/io/FileOutputStream;

.field protected reader:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Lcom/mobisage/android/MobiSageResMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageResMessage;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageRunnable;-><init>(Lcom/mobisage/android/MobiSageMessage;)V

    .line 38
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "source"    # Ljava/io/File;
    .param p2, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 138
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 140
    .local v4, "reader":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v3, "out":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    .local v5, "writer":Ljava/io/BufferedOutputStream;
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 144
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 145
    .local v1, "count":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 146
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 150
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 151
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 152
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 153
    return-void
.end method


# virtual methods
.method public destoryRunnable()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/mobisage/android/MobiSageRunnable;->destoryRunnable()V

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageResRunnable;->reader:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mobisage/android/MobiSageResRunnable;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageResRunnable;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/mobisage/android/MobiSageResRunnable;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/mobisage/android/MobiSageResRunnable;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/mobisage/android/MobiSageResRunnable;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_2
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mobisage/android/MobiSageResRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    check-cast v10, Lcom/mobisage/android/MobiSageResMessage;

    .line 58
    .local v10, "message":Lcom/mobisage/android/MobiSageResMessage;
    :try_start_0
    new-instance v12, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 59
    .local v12, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v16, Lorg/apache/http/conn/scheme/Scheme;

    const-string v17, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v18

    const/16 v19, 0x50

    invoke-direct/range {v16 .. v19}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 61
    new-instance v16, Lorg/apache/http/conn/scheme/Scheme;

    const-string v17, "https"

    new-instance v18, Lcom/mobisage/android/SNSSSLSocketFactory;

    invoke-direct/range {v18 .. v18}, Lcom/mobisage/android/SNSSSLSocketFactory;-><init>()V

    const/16 v19, 0x1bb

    invoke-direct/range {v16 .. v19}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 63
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 64
    .local v9, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v16, "http.connection.timeout"

    const/16 v17, 0x1388

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 66
    const-string v16, "http.socket.timeout"

    const/16 v17, 0x1388

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 67
    sget-object v16, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 68
    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 69
    new-instance v13, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v13, v9, v12}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 72
    .local v13, "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v16, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobisage/android/MobiSageResRunnable;->client:Lorg/apache/http/client/HttpClient;

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResRunnable;->client:Lorg/apache/http/client/HttpClient;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/mobisage/android/MobiSageResMessage;->createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 74
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 75
    .local v14, "statusCode":I
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "StatusCode"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const/16 v16, 0x190

    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    .line 79
    new-instance v15, Ljava/io/File;

    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->tempURL:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v15, "tempFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 82
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 85
    :cond_0
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->isNeedRange:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0xce

    move/from16 v0, v16

    if-eq v14, v0, :cond_1

    .line 86
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 87
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 90
    :cond_1
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobisage/android/MobiSageResRunnable;->inputStream:Ljava/io/InputStream;

    .line 91
    new-instance v16, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResRunnable;->inputStream:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobisage/android/MobiSageResRunnable;->reader:Ljava/io/BufferedInputStream;

    .line 92
    new-instance v16, Ljava/io/FileOutputStream;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobisage/android/MobiSageResRunnable;->outputStream:Ljava/io/FileOutputStream;

    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, "count":I
    const/high16 v16, 0x10000

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 95
    .local v2, "buffer":[B
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResRunnable;->reader:Ljava/io/BufferedInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_3

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResRunnable;->outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    .end local v2    # "buffer":[B
    .end local v4    # "count":I
    .end local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v13    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v14    # "statusCode":I
    .end local v15    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 128
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "ErrorText"

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 131
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    .line 133
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    invoke-super/range {p0 .. p0}, Lcom/mobisage/android/MobiSageRunnable;->run()V

    .line 134
    return-void

    .line 98
    .restart local v2    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v13    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .restart local v14    # "statusCode":I
    .restart local v15    # "tempFile":Ljava/io/File;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResRunnable;->reader:Ljava/io/BufferedInputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResRunnable;->inputStream:Ljava/io/InputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResRunnable;->outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 102
    const-string v16, "Content-Length"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .line 103
    .local v8, "headers":[Lorg/apache/http/Header;
    const/16 v16, 0x0

    aget-object v16, v8, v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 104
    .local v3, "contentLength":I
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 105
    .local v6, "fileLength":J
    int-to-long v0, v3

    move-wide/from16 v16, v0

    iget-wide v0, v10, Lcom/mobisage/android/MobiSageResMessage;->cacheLength:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    cmp-long v16, v6, v16

    if-eqz v16, :cond_5

    .line 106
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 107
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "StatusCode"

    const/16 v18, 0x190

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v2    # "buffer":[B
    .end local v3    # "contentLength":I
    .end local v4    # "count":I
    .end local v6    # "fileLength":J
    .end local v8    # "headers":[Lorg/apache/http/Header;
    .end local v15    # "tempFile":Ljava/io/File;
    :cond_4
    :goto_2
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 131
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_1

    .line 110
    .restart local v2    # "buffer":[B
    .restart local v3    # "contentLength":I
    .restart local v4    # "count":I
    .restart local v6    # "fileLength":J
    .restart local v8    # "headers":[Lorg/apache/http/Header;
    .restart local v15    # "tempFile":Ljava/io/File;
    :cond_5
    if-nez v3, :cond_7

    .line 111
    :try_start_3
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 112
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "StatusCode"

    const/16 v18, 0x190

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 130
    .end local v2    # "buffer":[B
    .end local v3    # "contentLength":I
    .end local v4    # "count":I
    .end local v6    # "fileLength":J
    .end local v8    # "headers":[Lorg/apache/http/Header;
    .end local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v13    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v14    # "statusCode":I
    .end local v15    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v16

    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 131
    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    :cond_6
    throw v16

    .line 124
    .restart local v2    # "buffer":[B
    .restart local v3    # "contentLength":I
    .restart local v4    # "count":I
    .restart local v6    # "fileLength":J
    .restart local v8    # "headers":[Lorg/apache/http/Header;
    .restart local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v13    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .restart local v14    # "statusCode":I
    .restart local v15    # "tempFile":Ljava/io/File;
    :cond_7
    :try_start_4
    new-instance v16, Ljava/io/File;

    iget-object v0, v10, Lcom/mobisage/android/MobiSageResMessage;->targetURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
