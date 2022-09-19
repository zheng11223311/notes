.class public Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;
.super Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;
.source "HttpRPCSerivceClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CCP-HttpRPCClient"

.field private static final executorService:Ljava/util/concurrent/ExecutorService;

.field private static handler:Landroid/os/Handler;

.field private static threadCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->threadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$1;

    invoke-direct {v0}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->threadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;
    .param p1, "x1"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .param p2, "x2"    # Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->internalCall(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method private getCallable(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Ljava/util/concurrent/Callable;
    .locals 6
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .param p2, "callback"    # Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;
    .param p3, "useCallback"    # Z
    .param p4, "retryIvalidSid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/cchannel/rpc/ServiceRequest;",
            "Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;",
            "ZZ)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/alibaba/cchannel/rpc/ServiceResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;-><init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)V

    return-object v0
.end method

.method private internalCall(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .locals 9
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .param p2, "callback"    # Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;
    .param p3, "useCallback"    # Z
    .param p4, "retryIvalidSid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alibaba/cchannel/rpc/ResourceMeta;->getInstance()Lcom/alibaba/cchannel/rpc/ResourceMeta;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/cchannel/rpc/ResourceMeta;->getResourceMeta(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/registry/metainfo/Resource;

    move-result-object v1

    .line 97
    .local v1, "resourceMeta":Lcom/alibaba/cchannel/registry/metainfo/Resource;
    invoke-virtual {p1, v1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->setResourceMeta(Lcom/alibaba/cchannel/registry/metainfo/Resource;)V

    .line 98
    const-string v4, "CCP-HttpRPCClient"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const-string v5, "CCP-HttpRPCClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sending request:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with callback:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getRegion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getRegion()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    invoke-static {}, Lcom/alibaba/cchannel/CloudChannelConstants;->get_RPC_HTTP_GATEWAY()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    invoke-static {p1}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->syncInvokeHttp(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v3

    .line 109
    .local v3, "srcResponse":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getSeedKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/cchannel/rpc/ServiceResponseUtils;->processServiceResponse(Lcom/alibaba/cchannel/rpc/ServiceResponse;ZLjava/lang/String;)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v2

    .line 111
    .local v2, "response":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getResourceMeta()Lcom/alibaba/cchannel/registry/metainfo/Resource;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/cchannel/rpc/ServiceResponse;->getResourceMeta()Lcom/alibaba/cchannel/registry/metainfo/Resource;

    move-result-object v4

    if-nez v4, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getResourceMeta()Lcom/alibaba/cchannel/registry/metainfo/Resource;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/cchannel/rpc/ServiceResponse;->setResourceMeta(Lcom/alibaba/cchannel/registry/metainfo/Resource;)V

    .line 114
    :cond_2
    const-string v4, "CCP-HttpRPCClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    const-string v4, "CCP-HttpRPCClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3
    if-eqz p2, :cond_4

    .line 118
    sget-object v4, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$2;

    invoke-direct {v5, p0, p2, v2}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$2;-><init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;Lcom/alibaba/cchannel/rpc/ServiceResponse;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .end local v1    # "resourceMeta":Lcom/alibaba/cchannel/registry/metainfo/Resource;
    .end local v2    # "response":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .end local v3    # "srcResponse":Lcom/alibaba/cchannel/rpc/ServiceResponse;
    :cond_4
    :goto_1
    return-object v2

    .line 99
    .restart local v1    # "resourceMeta":Lcom/alibaba/cchannel/registry/metainfo/Resource;
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getRegion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/cchannel/rpc/ServiceInvokeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 126
    .end local v1    # "resourceMeta":Lcom/alibaba/cchannel/registry/metainfo/Resource;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/net/UnknownHostException;
    if-eqz p3, :cond_7

    .line 128
    if-eqz p2, :cond_6

    .line 129
    sget-object v4, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$3;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$3;-><init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_6
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 137
    .restart local v0    # "e":Ljava/net/UnknownHostException;
    :cond_7
    new-instance v4, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    invoke-direct {v4, v0}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 139
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
    sget-object v4, Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;->INVALID_SID:Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;

    invoke-virtual {v0}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;->getExceptionType()Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p4, :cond_8

    .line 142
    invoke-virtual {p0, p1, v8}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->assembleSid(Lcom/alibaba/cchannel/rpc/ServiceRequest;Z)V

    .line 144
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->internalCall(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v2

    goto :goto_1

    .line 146
    :cond_8
    if-eqz p3, :cond_9

    .line 147
    if-eqz p2, :cond_6

    .line 148
    sget-object v4, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$4;

    invoke-direct {v5, p0, p2, v0}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$4;-><init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 156
    :cond_9
    throw v0

    .line 159
    .end local v0    # "e":Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
    :catch_2
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p3, :cond_a

    .line 161
    if-eqz p2, :cond_6

    .line 162
    sget-object v4, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$5;

    invoke-direct {v5, p0, p2, v0}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$5;-><init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 170
    :cond_a
    new-instance v4, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    invoke-direct {v4, v0}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static final syncInvokeHttp(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .locals 12
    .param p0, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v2, 0x0

    .line 190
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getRegion()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getRegion()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    invoke-static {}, Lcom/alibaba/cchannel/CloudChannelConstants;->get_RPC_HTTP_GATEWAY()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 193
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 194
    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getTimeout()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 196
    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getTimeout()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 197
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 198
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 201
    const-string v9, "platformId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/cchannel/CloudChannelConstants;->getPlatformId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v9, "sid"

    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getSid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 206
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->toBytes(Z)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 207
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v8, 0x0

    .line 212
    .local v8, "responseCode":I
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 220
    :goto_1
    const/16 v9, 0xc8

    if-ne v8, v9, :cond_4

    .line 221
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 222
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .line 223
    .local v5, "len":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    if-lez v5, :cond_3

    .end local v5    # "len":I
    :goto_2
    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 224
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    invoke-static {v4, v1, v9}, Lcom/alibaba/cchannel/rpc/utils/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 225
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 226
    .local v7, "payload":[B
    new-instance v9, Lcom/alibaba/cchannel/rpc/ServiceResponse;

    invoke-direct {v9, v7}, Lcom/alibaba/cchannel/rpc/ServiceResponse;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    if-eqz v2, :cond_1

    .line 236
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v9

    .line 190
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .end local v7    # "payload":[B
    .end local v8    # "responseCode":I
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getRegion()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 213
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "responseCode":I
    :catch_0
    move-exception v3

    .line 218
    .local v3, "exception":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    goto :goto_1

    .line 223
    .end local v3    # "exception":Ljava/io/IOException;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :cond_3
    const/16 v5, 0x200

    goto :goto_2

    .line 227
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "len":I
    :cond_4
    const/16 v9, 0x191

    if-ne v8, v9, :cond_6

    .line 228
    new-instance v9, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    sget-object v10, Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;->INVALID_SID:Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;

    invoke-direct {v9, v10}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;-><init>(Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "responseCode":I
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_5

    .line 236
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v9

    .line 230
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "responseCode":I
    :cond_6
    :try_start_4
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "status code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public call(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .locals 8
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->assembleSid(Lcom/alibaba/cchannel/rpc/ServiceRequest;Z)V

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    sget-object v3, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1, v7, v5, v6}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->getCallable(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 61
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/alibaba/cchannel/rpc/ServiceResponse;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getTimeout()I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/cchannel/rpc/ServiceResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/alibaba/cchannel/rpc/ServiceResponse;>;"
    :goto_0
    return-object v3

    .line 62
    .restart local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/alibaba/cchannel/rpc/ServiceResponse;>;"
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    instance-of v3, v0, Ljava/util/concurrent/ExecutionException;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 64
    check-cast v1, Ljava/util/concurrent/ExecutionException;

    .line 65
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    throw v3

    .line 69
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_0
    new-instance v3, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    invoke-direct {v3, v0}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/alibaba/cchannel/rpc/ServiceResponse;>;"
    :cond_1
    invoke-direct {p0, p1, v7, v5, v6}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->internalCall(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    .locals 2
    .param p1, "request"    # Lcom/alibaba/cchannel/rpc/ServiceRequest;
    .param p2, "callback"    # Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    .prologue
    const/4 v1, 0x1

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->assembleSid(Lcom/alibaba/cchannel/rpc/ServiceRequest;Z)V

    .line 79
    sget-object v0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->getCallable(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 80
    return-void
.end method
