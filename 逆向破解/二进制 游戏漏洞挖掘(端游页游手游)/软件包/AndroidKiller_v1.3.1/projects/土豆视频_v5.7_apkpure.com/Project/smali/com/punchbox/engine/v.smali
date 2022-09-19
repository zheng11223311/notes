.class Lcom/punchbox/engine/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:J

.field c:J

.field d:J

.field e:J

.field final synthetic f:Lcom/punchbox/engine/r;


# direct methods
.method public constructor <init>(Lcom/punchbox/engine/r;IJJJ)V
    .locals 5

    iput-object p1, p0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/punchbox/engine/v;->a:I

    iput-wide p3, p0, Lcom/punchbox/engine/v;->b:J

    iput-wide p5, p0, Lcom/punchbox/engine/v;->c:J

    iput-wide p7, p0, Lcom/punchbox/engine/v;->d:J

    iget-wide v0, p0, Lcom/punchbox/engine/v;->c:J

    iget-wide v2, p0, Lcom/punchbox/engine/v;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/punchbox/engine/v;->e:J

    invoke-static {p1}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CoCoAdSDK-DownloadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/punchbox/engine/v;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/punchbox/engine/v;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreviousReceivedBuffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/punchbox/engine/v;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExpectedBufferSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 30

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/punchbox/engine/v;->d:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/punchbox/engine/v;->b:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/punchbox/engine/v;->d:J

    add-long v12, v8, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->d(Lcom/punchbox/engine/r;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    int-to-long v14, v2

    const/4 v9, -0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    sget-object v7, Lcom/punchbox/engine/j;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v11

    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v7}, Lcom/punchbox/engine/r;->w(Lcom/punchbox/engine/r;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v10, "http.socket.timeout"

    sget v17, Lcom/punchbox/engine/f;->b:I

    move/from16 v0, v17

    invoke-interface {v7, v10, v0}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    const-string v10, "http.connection.timeout"

    sget v17, Lcom/punchbox/engine/f;->a:I

    move/from16 v0, v17

    invoke-interface {v7, v10, v0}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    long-to-int v10, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/punchbox/engine/v;->c:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v0, v10, v1}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Lorg/apache/http/client/methods/HttpGet;II)V

    const-string v7, "CoCoAdSDK-DownloadRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Read buffer:"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v17, "->"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/punchbox/engine/v;->c:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v7}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v7}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v7

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/punchbox/engine/v;->d:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/punchbox/engine/v;->a:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v10, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const-string v17, "CoCoAdSDK-DownloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "statusCode:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 v17, 0x12e

    move/from16 v0, v17

    if-eq v7, v0, :cond_2

    const/16 v17, 0x12d

    move/from16 v0, v17

    if-ne v7, v0, :cond_d

    :cond_2
    sget-object v7, Lcom/punchbox/engine/i;->j:Ljava/lang/String;

    invoke-interface {v10, v7}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    if-nez v7, :cond_7

    const/4 v8, 0x3

    const/16 v7, 0x83c

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v9, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_5
    move v2, v7

    move v3, v8

    :goto_2
    const-string v6, "CoCoAdSDK-DownloadRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finally:bufferReceived:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mExpectedBufferSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v6}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    :goto_3
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v17, "CoCoAdSDK-DownloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Header:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, ", mRedirectUri:"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v10, :cond_c

    const/4 v8, 0x3

    const/16 v7, 0x83c

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v9, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    if-eqz v3, :cond_9

    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_a
    move v2, v7

    move v3, v8

    :goto_4
    const-string v6, "CoCoAdSDK-DownloadRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finally:bufferReceived:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mExpectedBufferSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v6}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_c
    :try_start_4
    invoke-static {v10}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    goto/16 :goto_1

    :cond_d
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v7, v0, :cond_12

    const/16 v16, 0xce

    move/from16 v0, v16

    if-eq v7, v0, :cond_12

    const-string v10, "CoCoAdSDK-DownloadRequest"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP error, http status code:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v8, 0x3

    const/16 v7, 0x83c

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v9, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    if-eqz v3, :cond_f

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    :cond_10
    move v2, v7

    move v3, v8

    :goto_5
    const-string v6, "CoCoAdSDK-DownloadRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finally:bufferReceived:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mExpectedBufferSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v6}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_12
    :try_start_6
    const-string v16, "CoCoAdSDK-DownloadRequest"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "statusCode:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    if-nez v16, :cond_17

    const/4 v9, 0x3

    const/16 v8, 0x83c

    const-string v7, "CoCoAdSDK-DownloadRequest"

    const-string v10, "entity is null"

    invoke-static {v7, v10}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v7}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v7}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v7

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v7, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    if-eqz v3, :cond_14

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_14
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_15
    :goto_6
    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finally:bufferReceived:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mExpectedBufferSize:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_62

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_17
    :try_start_8
    const-string v7, "Content-Type"

    invoke-interface {v10, v7}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v7, :cond_18

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_18

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v17, "application"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v7

    if-nez v7, :cond_1d

    :cond_18
    const/4 v8, 0x3

    const/16 v7, 0x840

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v9, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_19
    if-eqz v3, :cond_1a

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_1a
    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :cond_1b
    move v2, v7

    move v3, v8

    :goto_7
    const-string v6, "CoCoAdSDK-DownloadRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finally:bufferReceived:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mExpectedBufferSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v6}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_1d
    :try_start_a
    const-string v7, "Content-Length"

    invoke-interface {v10, v7}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    sub-long v20, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/punchbox/engine/v;->c:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/punchbox/engine/v;->b:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    sub-long v22, v22, v4

    cmp-long v7, v20, v22

    if-eqz v7, :cond_23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v7}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "CoCoAdSDK-DownloadRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "len,mFrom,mTo,bufferReceived:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/punchbox/engine/v;->b:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/punchbox/engine/v;->c:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_1e
    const/4 v8, 0x3

    const/16 v7, 0x841

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_1f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v9, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1f
    if-eqz v3, :cond_20

    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_20
    if-eqz v6, :cond_21

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    :cond_21
    move v2, v7

    move v3, v8

    :goto_8
    const-string v6, "CoCoAdSDK-DownloadRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finally:bufferReceived:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mExpectedBufferSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v6}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_23
    const v7, 0x8000

    :try_start_c
    new-array v10, v7, [B

    array-length v7, v10
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v7, :cond_28

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v7}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_24

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v7}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v7

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v7, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_24
    if-eqz v3, :cond_25

    :try_start_d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_25
    if-eqz v6, :cond_26

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    :cond_26
    :goto_9
    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finally:bufferReceived:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mExpectedBufferSize:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_28
    :try_start_e
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v6}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v6

    if-nez v6, :cond_29

    const-string v6, "CoCoAdSDK-DownloadRequest"

    const-string v16, "Start downloading"

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/punchbox/engine/r;->j(Lcom/punchbox/engine/r;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/punchbox/engine/r;->k(Lcom/punchbox/engine/r;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "rw"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_14
    .catch Lcom/punchbox/exception/PBException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-virtual {v6, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_a
    invoke-virtual {v7, v10}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    const/4 v3, -0x1

    if-eq v12, v3, :cond_3a

    int-to-long v0, v12

    move-wide/from16 v16, v0

    add-long v16, v16, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/punchbox/engine/v;->e:J

    move-wide/from16 v18, v0

    cmp-long v3, v16, v18

    if-lez v3, :cond_2e

    const-string v3, "CoCoAdSDK-DownloadRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Server error: The buffer we received has exceed what we expected.Expect:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", Receive:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-long v14, v12

    add-long/2addr v14, v4

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Lcom/punchbox/exception/PBException; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/4 v8, 0x3

    const/16 v3, 0x83d

    int-to-long v12, v12

    add-long/2addr v12, v4

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v5, v2, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2a
    if-eqz v6, :cond_2b

    :try_start_11
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_2b
    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    :cond_2c
    move v2, v3

    move v3, v8

    :goto_b
    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finally:bufferReceived:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mExpectedBufferSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v4, v12, v4

    if-nez v4, :cond_6e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_2e
    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v6, v10, v3, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v12, v12

    add-long/2addr v4, v12

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/punchbox/engine/v;->d:J

    sub-long v2, v4, v2

    long-to-int v2, v2

    int-to-long v12, v2

    cmp-long v3, v12, v14

    if-ltz v3, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Lcom/punchbox/exception/PBException; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-object v3

    if-nez v3, :cond_33

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v3, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2f
    if-eqz v6, :cond_30

    :try_start_13
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_30
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    :cond_31
    :goto_c
    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finally:bufferReceived:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mExpectedBufferSize:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_71

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_33
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v3, v12, v2, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/punchbox/engine/v;->d:J
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Lcom/punchbox/exception/PBException; {:try_start_14 .. :try_end_14} :catch_12
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :cond_34
    move v3, v2

    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->B(Lcom/punchbox/engine/r;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Lcom/punchbox/exception/PBException; {:try_start_15 .. :try_end_15} :catch_13
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->C(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v10, "I am canceled!!!"

    invoke-static {v2, v10}, Lcom/punchbox/util/PBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/punchbox/exception/PBException;

    const/16 v10, 0x835

    const/4 v13, 0x0

    invoke-direct {v2, v10, v13}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    throw v2
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_16
    .catch Lcom/punchbox/exception/PBException; {:try_start_17 .. :try_end_17} :catch_13
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :catch_0
    move-exception v2

    move v2, v3

    move-object v3, v6

    move-object v6, v7

    :goto_d
    const/4 v8, 0x3

    const/16 v7, 0x837

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_35

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v9}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v9, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_35
    if-eqz v3, :cond_36

    :try_start_18
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_36
    if-eqz v6, :cond_37

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3

    :cond_37
    move v2, v7

    move v3, v8

    :goto_e
    const-string v6, "CoCoAdSDK-DownloadRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finally:bufferReceived:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mExpectedBufferSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v6}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_39
    :try_start_19
    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move v2, v3

    goto/16 :goto_a

    :cond_3a
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "CoCoAdSDK-DownloadRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "read buffer done, receivedLength:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Lcom/punchbox/exception/PBException; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :cond_3b
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v3, v10, v2, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_3c
    if-eqz v6, :cond_3d

    :try_start_1b
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_3d
    if-eqz v7, :cond_3e

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    :cond_3e
    :goto_f
    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finally:bufferReceived:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mExpectedBufferSize:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_74

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :catch_1
    move-exception v7

    move-object/from16 v26, v7

    move-object v7, v6

    move-object v6, v3

    move v3, v2

    move-object/from16 v2, v26

    :goto_10
    const/4 v9, 0x3

    const/16 v8, 0x839

    :try_start_1c
    const-string v10, "CoCoAdSDK-DownloadRequest"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException happen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v10, v3, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_40
    if-eqz v6, :cond_41

    :try_start_1d
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_41
    if-eqz v7, :cond_42

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5

    :cond_42
    :goto_11
    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finally:bufferReceived:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mExpectedBufferSize:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :catch_2
    move-exception v7

    move-object/from16 v26, v7

    move/from16 v27, v2

    move-object/from16 v2, v26

    move/from16 v28, v8

    move-object v8, v3

    move/from16 v3, v27

    move/from16 v29, v9

    move-object v9, v6

    move-wide v6, v4

    move/from16 v4, v28

    move/from16 v5, v29

    :goto_12
    :try_start_1e
    invoke-virtual {v2}, Lcom/punchbox/exception/PBException;->getErrorCode()I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    move-result v2

    const/16 v10, 0x835

    if-ne v2, v10, :cond_77

    const/4 v4, 0x2

    const/16 v2, 0x835

    :goto_13
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v5}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_44

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v5}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v5

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v5, v10, v3, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_44
    if-eqz v8, :cond_45

    :try_start_1f
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    :cond_45
    if-eqz v9, :cond_46

    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_6

    :cond_46
    move v3, v4

    :goto_14
    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finally:bufferReceived:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mExpectedBufferSize:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_56

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "CoCoAdSDK-DownloadRequest"

    const-string v3, "Download finished"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_3

    :cond_48
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/punchbox/engine/v;->e:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "CoCoAdSDK-DownloadRequest"

    const-string v4, "Download finished"

    invoke-static {v3, v4}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_15
    throw v2

    :catch_3
    move-exception v2

    move-object v6, v2

    const/4 v3, 0x3

    const/16 v2, 0x838

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    :cond_4a
    const/4 v4, -0x1

    if-eq v2, v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happens while downloading.error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    :goto_16
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    :goto_17
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    move-object/from16 v26, v7

    move-object v7, v6

    move-object v6, v3

    move v3, v2

    move-object/from16 v2, v26

    :goto_18
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v10}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v10}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v10, v11, v3, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_4d
    if-eqz v6, :cond_4e

    :try_start_20
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_4e
    if-eqz v7, :cond_4f

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_4

    :cond_4f
    :goto_19
    const-string v3, "CoCoAdSDK-DownloadRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finally:bufferReceived:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mExpectedBufferSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/punchbox/engine/v;->e:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_48

    goto/16 :goto_0

    :catch_4
    move-exception v3

    const/4 v9, 0x3

    const/16 v8, 0x838

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    :cond_50
    const/4 v3, -0x1

    if-eq v9, v3, :cond_52

    const/4 v3, -0x1

    if-eq v8, v3, :cond_52

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "CoCoAdSDK-DownloadRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error happens while downloading.error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errorCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v3, v9, v8, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_15

    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    const/16 v5, 0x839

    move-object/from16 v0, p0

    iget v6, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_15

    :catch_5
    move-exception v2

    const/4 v9, 0x3

    const/16 v8, 0x838

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11

    :cond_53
    const/4 v2, -0x1

    if-eq v8, v2, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error happens while downloading.error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v9, v8, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_6
    move-exception v2

    move-object v4, v2

    const/4 v3, 0x3

    const/16 v2, 0x838

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14

    :cond_56
    const/4 v4, -0x1

    if-eq v3, v4, :cond_58

    const/4 v4, -0x1

    if-eq v2, v4, :cond_58

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happens while downloading.error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_7
    move-exception v2

    move-object v6, v2

    const/4 v3, 0x3

    const/16 v2, 0x838

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_59
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v4

    if-nez v4, :cond_5a

    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happens while downloading.error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_8
    move-exception v2

    move-object v6, v2

    const/4 v3, 0x3

    const/16 v2, 0x838

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_5c
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happens while downloading.error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_9
    move-exception v2

    move-object v6, v2

    const/4 v3, 0x3

    const/16 v2, 0x838

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :cond_5f
    const/4 v4, -0x1

    if-eq v2, v4, :cond_61

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v4

    if-nez v4, :cond_60

    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happens while downloading.error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_a
    move-exception v2

    const/4 v9, 0x3

    const/16 v8, 0x838

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :cond_62
    const/4 v2, -0x1

    if-eq v8, v2, :cond_64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error happens while downloading.error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v9, v8, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_b
    move-exception v2

    move-object v6, v2

    const/4 v3, 0x3

    const/16 v2, 0x838

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :cond_65
    const/4 v4, -0x1

    if-eq v2, v4, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v4

    if-nez v4, :cond_66

    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happens while downloading.error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_c
    move-exception v2

    move-object v6, v2

    const/4 v3, 0x3

    const/16 v2, 0x838

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :cond_68
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v4

    if-nez v4, :cond_69

    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happens while downloading.error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_d
    move-exception v2

    const/4 v9, 0x3

    const/16 v8, 0x838

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :cond_6b
    const/4 v2, -0x1

    if-eq v9, v2, :cond_6d

    const/4 v2, -0x1

    if-eq v8, v2, :cond_6d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error happens while downloading.error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v9, v8, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_e
    move-exception v2

    move-object v4, v2

    const/4 v3, 0x3

    const/16 v2, 0x838

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :cond_6e
    const/4 v4, -0x1

    if-eq v2, v4, :cond_70

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v4

    if-nez v4, :cond_6f

    const-string v4, "CoCoAdSDK-DownloadRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happens while downloading.error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v4}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_f
    move-exception v2

    const/4 v9, 0x3

    const/16 v8, 0x838

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    :cond_71
    const/4 v2, -0x1

    if-eq v9, v2, :cond_73

    const/4 v2, -0x1

    if-eq v8, v2, :cond_73

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_72

    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error happens while downloading.error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v9, v8, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catch_10
    move-exception v2

    const/4 v9, 0x3

    const/16 v8, 0x838

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    :cond_74
    const/4 v2, -0x1

    if-eq v9, v2, :cond_76

    const/4 v2, -0x1

    if-eq v8, v2, :cond_76

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, "CoCoAdSDK-DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error happens while downloading.error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v9, v8, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_16

    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/v;->f:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->v(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x839

    move-object/from16 v0, p0

    iget v5, v0, Lcom/punchbox/engine/v;->a:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_17

    :catchall_2
    move-exception v6

    move-object/from16 v26, v6

    move-object v6, v3

    move v3, v2

    move-object/from16 v2, v26

    goto/16 :goto_18

    :catchall_3
    move-exception v3

    move-object/from16 v26, v3

    move v3, v2

    move-object/from16 v2, v26

    goto/16 :goto_18

    :catchall_4
    move-exception v2

    goto/16 :goto_18

    :catchall_5
    move-exception v2

    move/from16 v26, v4

    move/from16 v27, v5

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v9

    move/from16 v8, v26

    move/from16 v9, v27

    goto/16 :goto_18

    :catch_11
    move-exception v6

    move-object/from16 v26, v6

    move/from16 v27, v2

    move-object/from16 v2, v26

    move/from16 v28, v8

    move-object v8, v3

    move/from16 v3, v27

    move/from16 v29, v9

    move-object v9, v7

    move-wide v6, v4

    move/from16 v4, v28

    move/from16 v5, v29

    goto/16 :goto_12

    :catch_12
    move-exception v3

    move-object/from16 v26, v3

    move v3, v2

    move-object/from16 v2, v26

    move/from16 v27, v8

    move-object v8, v6

    move/from16 v28, v9

    move-object v9, v7

    move-wide v6, v4

    move/from16 v4, v27

    move/from16 v5, v28

    goto/16 :goto_12

    :catch_13
    move-exception v2

    move/from16 v26, v8

    move-object v8, v6

    move/from16 v27, v9

    move-object v9, v7

    move-wide v6, v4

    move/from16 v4, v26

    move/from16 v5, v27

    goto/16 :goto_12

    :catch_14
    move-exception v6

    move-object/from16 v26, v6

    move-object v6, v3

    move v3, v2

    move-object/from16 v2, v26

    goto/16 :goto_10

    :catch_15
    move-exception v3

    move-object/from16 v26, v3

    move v3, v2

    move-object/from16 v2, v26

    goto/16 :goto_10

    :catch_16
    move-exception v2

    goto/16 :goto_10

    :catch_17
    move-exception v7

    goto/16 :goto_d

    :catch_18
    move-exception v6

    move-object v6, v7

    goto/16 :goto_d

    :catch_19
    move-exception v3

    move-object v3, v6

    move-object v6, v7

    goto/16 :goto_d

    :cond_77
    move v2, v4

    move v4, v5

    goto/16 :goto_13
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/v;->a()V

    return-void
.end method
