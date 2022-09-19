.class public Lcom/youku/laifeng/sdk/download/DownloadDispatcher;
.super Ljava/lang/Thread;
.source "DownloadDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadDispatcher"


# instance fields
.field public final BUFFER_SIZE:I

.field private final HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I

.field private final HTTP_TEMP_REDIRECT:I

.field public final MAX_REDIRECTS:I

.field private mContentLength:J

.field private mCurrentBytes:J

.field private mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/youku/laifeng/sdk/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z

.field private mRedirectionCount:I

.field private mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

.field mTimer:Ljava/util/Timer;

.field shouldAllowRedirects:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;)V
    .locals 2
    .param p2, "delivery"    # Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/youku/laifeng/sdk/download/DownloadRequest;",
            ">;",
            "Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/youku/laifeng/sdk/download/DownloadRequest;>;"
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mQuit:Z

    .line 55
    const/16 v0, 0x1000

    iput v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->BUFFER_SIZE:I

    .line 58
    iput v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRedirectionCount:I

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->MAX_REDIRECTS:I

    .line 63
    const/16 v0, 0x1a0

    iput v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I

    .line 64
    const/16 v0, 0x133

    iput v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->HTTP_TEMP_REDIRECT:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->shouldAllowRedirects:Z

    .line 73
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 74
    iput-object p2, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/download/DownloadDispatcher;)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/download/DownloadDispatcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/download/DownloadDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->executeDownload(Ljava/lang/String;)V

    return-void
.end method

.method private attemptRetryOnTimeOutException()V
    .locals 6

    .prologue
    .line 329
    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadState(I)V

    .line 330
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getRetryPolicy()Lcom/youku/laifeng/sdk/download/RetryPolicy;

    move-result-object v1

    .line 332
    .local v1, "retryPolicy":Lcom/youku/laifeng/sdk/download/RetryPolicy;
    :try_start_0
    invoke-interface {v1}, Lcom/youku/laifeng/sdk/download/RetryPolicy;->retry()V

    .line 333
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/youku/laifeng/sdk/download/DownloadDispatcher$1;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher$1;-><init>(Lcom/youku/laifeng/sdk/download/DownloadDispatcher;)V

    .line 338
    invoke-interface {v1}, Lcom/youku/laifeng/sdk/download/RetryPolicy;->getCurrentTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 333
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Lcom/youku/laifeng/sdk/download/RetryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Lcom/youku/laifeng/sdk/download/RetryError;
    const/16 v2, 0x3f1

    const-string v3, "Connection time out after maximum retires attempted"

    invoke-virtual {p0, v2, v3}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private cleanupDestination()V
    .locals 4

    .prologue
    .line 352
    const-string v1, "DownloadDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupDestination() deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "destinationFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 357
    :cond_0
    return-void
.end method

.method private executeDownload(Ljava/lang/String;)V
    .locals 17
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v12, 0x0

    .line 112
    .local v12, "url":Ljava/net/URL;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    .end local v12    # "url":Ljava/net/URL;
    .local v13, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 121
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 122
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v14}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getRetryPolicy()Lcom/youku/laifeng/sdk/download/RetryPolicy;

    move-result-object v14

    invoke-interface {v14}, Lcom/youku/laifeng/sdk/download/RetryPolicy;->getCurrentTimeout()I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v14}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getRetryPolicy()Lcom/youku/laifeng/sdk/download/RetryPolicy;

    move-result-object v14

    invoke-interface {v14}, Lcom/youku/laifeng/sdk/download/RetryPolicy;->getCurrentTimeout()I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v14}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getCustomHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 130
    .local v4, "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 132
    .local v9, "headerName":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v9, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    .end local v4    # "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "headerName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 205
    .local v8, "e":Ljava/net/SocketTimeoutException;
    :try_start_2
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->attemptRetryOnTimeOutException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :cond_0
    :goto_1
    move-object v12, v13

    .line 219
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :goto_2
    return-void

    .line 113
    :catch_1
    move-exception v8

    .line 114
    .local v8, "e":Ljava/net/MalformedURLException;
    const/16 v14, 0x3ef

    const-string v15, "MalformedURLException: URI passed is malformed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V

    goto :goto_2

    .line 136
    .end local v8    # "e":Ljava/net/MalformedURLException;
    .end local v12    # "url":Ljava/net/URL;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "url":Ljava/net/URL;
    :cond_1
    const/16 v14, 0x66

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadState(I)V

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 139
    .local v11, "responseCode":I
    const-string v14, "DownloadDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http response code = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 142
    .local v3, "contentLength":I
    const-string v14, "DownloadDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http response content length = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v14}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v5, "destinationFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 147
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 148
    .local v6, "destinationFileSize":J
    const-string v14, "DownloadDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http destinationFileSize = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    int-to-long v14, v3

    cmp-long v14, v14, v6

    if-nez v14, :cond_3

    .line 151
    const-string v14, "DownloadDispatcher"

    const-string v15, "http file size equal, complete download request!!---> finish()"

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadComplete()V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v12, v13

    .line 153
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 157
    .end local v6    # "destinationFileSize":J
    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_3
    :try_start_4
    const-string v14, "DownloadDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http response code = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sparse-switch v11, :sswitch_data_0

    .line 201
    const/16 v14, 0x3ea

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unhandled HTTP response:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " message:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    :cond_4
    :goto_3
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 160
    :sswitch_0
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->shouldAllowRedirects:Z

    .line 161
    const-string v14, "DownloadDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "read response headers = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->readResponseHeaders(Ljava/net/HttpURLConnection;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->readResponseHeaders(Ljava/net/HttpURLConnection;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 163
    const-string v14, "DownloadDispatcher"

    const-string v15, "conn response header = 1 , begin to transfer data[]>>>>>>"

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->transferData(Ljava/net/HttpURLConnection;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    :goto_4
    if-eqz v2, :cond_5

    .line 216
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v12, v13

    .line 172
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 169
    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_6
    :try_start_6
    const-string v14, "DownloadDispatcher"

    const-string v15, "conn response header != 1 , updateDownloadFailed[]>>>>>>"

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/16 v14, 0x3ee

    const-string v15, "Can\'t know size of download, giving up"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 208
    .end local v3    # "contentLength":I
    .end local v4    # "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "destinationFile":Ljava/io/File;
    .end local v11    # "responseCode":I
    :catch_2
    move-exception v8

    .line 209
    .local v8, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_7
    invoke-virtual {v8}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->attemptRetryOnTimeOutException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 215
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 178
    .end local v8    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v3    # "contentLength":I
    .restart local v4    # "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "destinationFile":Ljava/io/File;
    .restart local v11    # "responseCode":I
    :goto_5
    :sswitch_1
    :try_start_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRedirectionCount:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRedirectionCount:I

    const/4 v15, 0x5

    if-ge v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->shouldAllowRedirects:Z

    if-eqz v14, :cond_7

    .line 179
    const-string v14, "DownloadDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Redirect for downloaded Id "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v14, "Location"

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, "location":Ljava/lang/String;
    const-string v14, "DownloadDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Redirect the real download url = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->executeDownload(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 211
    .end local v3    # "contentLength":I
    .end local v4    # "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "destinationFile":Ljava/io/File;
    .end local v10    # "location":Ljava/lang/String;
    .end local v11    # "responseCode":I
    :catch_3
    move-exception v8

    .line 212
    .local v8, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    const/16 v14, 0x3ec

    const-string v15, "Trouble with low-level sockets"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 215
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 186
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "contentLength":I
    .restart local v4    # "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "destinationFile":Ljava/io/File;
    .restart local v11    # "responseCode":I
    :cond_7
    :try_start_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRedirectionCount:I

    const/4 v15, 0x5

    if-le v14, v15, :cond_4

    .line 187
    const/16 v14, 0x3ed

    const-string v15, "Too many redirects, giving up!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 215
    if-eqz v2, :cond_8

    .line 216
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move-object v12, v13

    .line 188
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 192
    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :sswitch_2
    const/16 v14, 0x1a0

    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 215
    .end local v3    # "contentLength":I
    .end local v4    # "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "destinationFile":Ljava/io/File;
    .end local v11    # "responseCode":I
    :catchall_0
    move-exception v14

    if-eqz v2, :cond_9

    .line 216
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v14

    .line 195
    .restart local v3    # "contentLength":I
    .restart local v4    # "customHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "destinationFile":Ljava/io/File;
    .restart local v11    # "responseCode":I
    :sswitch_3
    const/16 v14, 0x1f7

    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 198
    :sswitch_4
    const/16 v14, 0x1f4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x133 -> :sswitch_1
        0x1a0 -> :sswitch_2
        0x1f4 -> :sswitch_4
        0x1f7 -> :sswitch_3
    .end sparse-switch
.end method

.method private readFromResponse([BLjava/io/InputStream;)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "entityStream"    # Ljava/io/InputStream;

    .prologue
    .line 305
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 311
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "unexpected end of stream"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const/4 v1, -0x1

    goto :goto_0

    .line 310
    :cond_0
    const/16 v1, 0x3ec

    const-string v2, "IOException: Failed reading response"

    invoke-virtual {p0, v1, v2}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V

    .line 311
    const/high16 v1, -0x80000000

    goto :goto_0
.end method

.method private readResponseHeaders(Ljava/net/HttpURLConnection;)I
    .locals 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const-wide/16 v4, -0x1

    .line 395
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "transferEncoding":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 398
    const-string v1, "Content-Length"

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mContentLength:J

    .line 404
    :goto_0
    iget-wide v2, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mContentLength:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    const-string v1, "chunked"

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    :cond_0
    const/4 v1, -0x1

    .line 408
    :goto_1
    return v1

    .line 400
    :cond_1
    const-string v1, "DownloadDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Content-Length since Transfer-Encoding is also defined for Downloaded Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iput-wide v4, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mContentLength:J

    goto :goto_0

    .line 408
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private transferData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const-wide/16 v8, 0x0

    .line 272
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 273
    .local v1, "data":[B
    iput-wide v8, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mCurrentBytes:J

    .line 274
    iget-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadState(I)V

    .line 275
    const-string v3, "DownloadDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mContentLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for Download Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    const-string v3, "DownloadDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping the download as Download Request is cancelled for Downloaded Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v5}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->finish()V

    .line 280
    const/16 v3, 0x3f0

    const-string v4, "Download cancelled"

    invoke-virtual {p0, v3, v4}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 283
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->readFromResponse([BLjava/io/InputStream;)I

    move-result v0

    .line 285
    .local v0, "bytesRead":I
    iget-wide v4, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mContentLength:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mContentLength:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 286
    iget-wide v4, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mCurrentBytes:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mContentLength:J

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 287
    .local v2, "progress":I
    iget-wide v4, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mCurrentBytes:J

    invoke-virtual {p0, v2, v4, v5}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadProgress(IJ)V

    .line 290
    .end local v2    # "progress":I
    :cond_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 291
    const-string v3, "DownloadDispatcher"

    const-string/jumbo v4, "transferData[]>>>>>> byres read = -1, update download complete>>>"

    invoke-static {v3, v4}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadComplete()V

    goto :goto_1

    .line 294
    :cond_3
    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    .line 298
    invoke-direct {p0, v1, v0, p2}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->writeDataToDestination([BILjava/io/OutputStream;)V

    .line 299
    iget-wide v4, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mCurrentBytes:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mCurrentBytes:J

    goto :goto_0
.end method

.method private transferData(Ljava/net/HttpURLConnection;)V
    .locals 10
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 225
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 226
    .local v6, "outFd":Ljava/io/FileDescriptor;
    const-string v7, "DownloadDispatcher"

    const-string/jumbo v8, "transferData[]>>>>>>clean up destination()>>>>>"

    invoke-static {v7, v8}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->cleanupDestination()V

    .line 229
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 231
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v7}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "destinationFile":Ljava/io/File;
    const-string v7, "DownloadDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transferData[]>>>>>destinationFile path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v7, "DownloadDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transferData[]>>>>>destinationFile abs path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 237
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 238
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_2
    move-object v0, v5

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v6

    move-object v4, v5

    .line 245
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_0
    :try_start_3
    invoke-direct {p0, v3, v4}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->transferData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 251
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 257
    :goto_1
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 258
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    :cond_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 269
    .end local v1    # "destinationFile":Ljava/io/File;
    :goto_2
    return-void

    .line 239
    .restart local v1    # "destinationFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    const/16 v7, 0x3e9

    const-string v8, "Error in writing download contents to the destination file"

    invoke-virtual {p0, v7, v8}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 247
    .end local v1    # "destinationFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 248
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 251
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 257
    :goto_4
    if-eqz v4, :cond_2

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 258
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 263
    :cond_3
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    .line 264
    :catch_2
    move-exception v2

    .line 265
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 252
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "destinationFile":Ljava/io/File;
    :catch_3
    move-exception v2

    .line 253
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 259
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 260
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 263
    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_2

    .line 264
    :catch_6
    move-exception v2

    .line 265
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 262
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 263
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 266
    :goto_5
    throw v7

    .line 264
    :catch_7
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 252
    .end local v1    # "destinationFile":Ljava/io/File;
    :catch_8
    move-exception v2

    .line 253
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 259
    :catch_9
    move-exception v2

    .line 260
    :try_start_f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 263
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_2

    .line 264
    :catch_a
    move-exception v2

    .line 265
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 262
    :catchall_1
    move-exception v7

    .line 263
    :try_start_11
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 266
    :goto_6
    throw v7

    .line 264
    :catch_b
    move-exception v2

    .line 265
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 250
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v7

    .line 251
    :goto_7
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 257
    :goto_8
    if-eqz v4, :cond_4

    :try_start_13
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 258
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 263
    :cond_5
    :try_start_14
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 266
    :goto_9
    throw v7

    .line 252
    :catch_c
    move-exception v2

    .line 253
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 259
    .end local v2    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v2

    .line 260
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 263
    :try_start_16
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    goto :goto_9

    .line 264
    :catch_f
    move-exception v2

    .line 265
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 262
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v7

    .line 263
    :try_start_17
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 266
    :goto_a
    throw v7

    .line 264
    :catch_10
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 250
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v1    # "destinationFile":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_4
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_7

    .line 239
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_11
    move-exception v2

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_3
.end method

.method private writeDataToDestination([BILjava/io/OutputStream;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "bytesRead"    # I
    .param p3, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 318
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "DownloadDispatcher"

    const-string/jumbo v2, "writeDataToDestination{}>>>>>>>catch exception>>>update download failed.."

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/16 v1, 0x3e9

    const-string v2, "IOException when writing download contents to the destination file"

    invoke-virtual {p0, v1, v2}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J
    .locals 3
    .param p1, "conn"    # Ljava/net/URLConnection;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 414
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 416
    .end local p3    # "defaultValue":J
    :goto_0
    return-wide p3

    .line 415
    .restart local p3    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mQuit:Z

    .line 348
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->interrupt()V

    .line 349
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 79
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 80
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mTimer:Ljava/util/Timer;

    .line 84
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRedirectionCount:I

    .line 86
    const-string v1, "DownloadDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download initiated run for id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "DownloadDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download [status start] id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadState(I)V

    .line 89
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->executeDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 94
    iget-boolean v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mQuit:Z

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->finish()V

    .line 98
    const/16 v1, 0x3f0

    const-string v2, "Download cancelled"

    invoke-virtual {p0, v1, v2}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->updateDownloadFailed(ILjava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 101
    :cond_1
    return-void
.end method

.method public updateDownloadComplete()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadState(I)V

    .line 368
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadListener()Lcom/youku/laifeng/sdk/download/DownloadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->postDownloadComplete(Lcom/youku/laifeng/sdk/download/DownloadRequest;)V

    .line 370
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->finish()V

    .line 372
    :cond_0
    return-void
.end method

.method public updateDownloadFailed(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->shouldAllowRedirects:Z

    .line 377
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadState(I)V

    .line 378
    const-string v0, "DownloadDispatcher"

    const-string/jumbo v1, "updateDownloadFailed[]>>>>>>clean up destination>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->cleanupDestination()V

    .line 380
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadListener()Lcom/youku/laifeng/sdk/download/DownloadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0, v1, p1, p2}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->postDownloadFailed(Lcom/youku/laifeng/sdk/download/DownloadRequest;ILjava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->finish()V

    .line 384
    :cond_0
    return-void
.end method

.method public updateDownloadProgress(IJ)V
    .locals 8
    .param p1, "progress"    # I
    .param p2, "downloadedBytes"    # J

    .prologue
    .line 388
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadListener()Lcom/youku/laifeng/sdk/download/DownloadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    iget-wide v2, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mContentLength:J

    move-wide v4, p2

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->postProgressUpdate(Lcom/youku/laifeng/sdk/download/DownloadRequest;JJI)V

    .line 391
    :cond_0
    return-void
.end method

.method public updateDownloadState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->mRequest:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadState(I)V

    .line 362
    return-void
.end method
