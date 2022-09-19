.class final Lcom/alibaba/cchannel/rpc/impl/HTTPRpcCaller;
.super Ljava/lang/Object;
.source "HTTPRpcCaller.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callRPC(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .locals 13
    .param p0, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 23
    const/4 v6, 0x0

    .line 25
    .local v6, "response":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    new-instance v8, Ljava/net/URL;

    invoke-static {}, Lcom/alibaba/cchannel/CloudChannelConstants;->get_RPC_HTTP_GATEWAY()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 26
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 27
    const-string v8, "POST"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 30
    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 31
    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 34
    const-string v8, "platformId"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/cchannel/CloudChannelConstants;->getPlatformId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v8, "sid"

    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getSid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 39
    .local v4, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p0, v11}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->toBytes(Z)[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 40
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 42
    const/4 v7, 0x0

    .line 45
    .local v7, "responseCode":I
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 55
    :goto_0
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    .line 57
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 59
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v0, v12}, Lcom/alibaba/cchannel/rpc/utils/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 63
    .local v5, "payload":[B
    if-eqz v5, :cond_0

    .line 65
    new-instance v6, Lcom/alibaba/cchannel/rpc/ServiceResponse;

    .end local v6    # "response":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    invoke-direct {v6, v5}, Lcom/alibaba/cchannel/rpc/ServiceResponse;-><init>([B)V

    .line 68
    .restart local v6    # "response":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 70
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 71
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 81
    return-object v6

    .line 46
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "payload":[B
    :catch_0
    move-exception v2

    .line 52
    .local v2, "exception":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    goto :goto_0

    .line 72
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_1
    const/16 v8, 0x191

    if-ne v7, v8, :cond_2

    .line 74
    new-instance v8, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    sget-object v9, Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;->INVALID_SID:Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;

    invoke-direct {v8, v9}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;-><init>(Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;)V

    throw v8

    .line 77
    :cond_2
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "status code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
