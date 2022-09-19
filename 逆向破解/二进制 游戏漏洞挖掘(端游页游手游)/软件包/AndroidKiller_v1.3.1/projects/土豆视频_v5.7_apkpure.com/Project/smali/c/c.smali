.class final Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lc/a;

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc/a;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c;->d:Z

    .line 38
    iput-object p1, p0, Lc/c;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lc/c;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lc/c;->c:Lc/a;

    .line 41
    return-void
.end method

.method static synthetic a(Lc/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc/c;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lc/c;->e:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 133
    iput-wide p1, p0, Lc/c;->e:J

    .line 134
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lc/c;->f:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 141
    iput-wide p1, p0, Lc/c;->f:J

    .line 142
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lc/c;->d:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c;->d:Z

    .line 150
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 44
    iget-object v0, p0, Lc/c;->c:Lc/a;

    invoke-virtual {v0}, Lc/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-wide v0, p0, Lc/c;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    iget-wide v0, p0, Lc/c;->e:J

    iget-wide v6, p0, Lc/c;->f:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    .line 46
    :cond_0
    iput-boolean v5, p0, Lc/c;->d:Z

    .line 126
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v6, Lc/c$a;

    invoke-direct {v6, p0}, Lc/c$a;-><init>(Lc/c;)V

    .line 52
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lc/c;->d:Z

    if-nez v0, :cond_4

    .line 57
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lc/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 60
    iget-object v3, p0, Lc/c;->c:Lc/a;

    invoke-virtual {v3}, Lc/a;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lc/c;->e:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lc/c;->f:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string v7, "Range"

    invoke-virtual {v0, v7, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 69
    packed-switch v1, :pswitch_data_0

    .line 81
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc/c;->d:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .line 84
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lc/c;->d:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    .line 118
    if-eqz v3, :cond_4

    .line 120
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 125
    :cond_4
    :goto_3
    invoke-virtual {v6}, Lc/c$a;->a()V

    goto :goto_0

    .line 78
    :pswitch_0
    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    goto :goto_2

    .line 87
    :catch_0
    move-exception v0

    move v1, v2

    move-object v3, v4

    .line 88
    :goto_4
    :try_start_5
    const-class v7, Lc/c;

    const/4 v8, 0x0

    invoke-static {v7, v8, v0}, Lcom/alipay/android/app/exception/AppErrorException;->printException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 90
    :cond_5
    if-nez v3, :cond_6

    .line 118
    if-eqz v3, :cond_2

    .line 120
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v0

    goto :goto_1

    .line 94
    :cond_6
    const/16 v0, 0x400

    :try_start_7
    new-array v7, v0, [B

    .line 96
    :cond_7
    const/4 v0, 0x0

    array-length v8, v7

    invoke-virtual {v3, v7, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 97
    if-eq v8, v14, :cond_8

    .line 98
    iget-wide v10, p0, Lc/c;->e:J

    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lc/c$a;->a([BII)I

    move-result v0

    int-to-long v12, v0

    add-long/2addr v10, v12

    iput-wide v10, p0, Lc/c;->e:J

    .line 99
    iget-object v0, p0, Lc/c;->c:Lc/a;

    invoke-virtual {v0}, Lc/a;->d()V

    .line 101
    :cond_8
    iget-object v0, p0, Lc/c;->c:Lc/a;

    invoke-virtual {v0}, Lc/a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v10, p0, Lc/c;->e:J

    iget-wide v12, p0, Lc/c;->f:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_a

    move v0, v5

    .line 103
    :goto_5
    iget-boolean v9, p0, Lc/c;->d:Z

    if-nez v9, :cond_c

    if-eqz v0, :cond_c

    move v0, v5

    .line 104
    :goto_6
    if-le v8, v14, :cond_9

    if-nez v0, :cond_7

    .line 105
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c;->d:Z
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 118
    if-eqz v3, :cond_2

    .line 120
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 121
    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 101
    goto :goto_5

    :cond_b
    move v0, v5

    goto :goto_5

    :cond_c
    move v0, v2

    .line 103
    goto :goto_6

    .line 106
    :catch_3
    move-exception v0

    move v1, v2

    move-object v3, v4

    .line 107
    :goto_7
    :try_start_9
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v7

    const-string v8, "download time out"

    invoke-virtual {v7, v0, v8}, Lf/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 108
    if-nez v1, :cond_d

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c;->d:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 118
    :cond_d
    if-eqz v3, :cond_2

    .line 120
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 121
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 111
    :catch_5
    move-exception v0

    .line 112
    :try_start_b
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v1

    const-string v7, "download save"

    invoke-virtual {v1, v0, v7}, Lf/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c;->d:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 118
    if-eqz v3, :cond_2

    .line 120
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_1

    .line 121
    :catch_6
    move-exception v0

    goto/16 :goto_1

    .line 114
    :catch_7
    move-exception v0

    move-object v3, v4

    .line 115
    :goto_8
    :try_start_d
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v1

    const-string v7, "on down load apk"

    invoke-virtual {v1, v0, v7}, Lf/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c;->d:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 118
    if-eqz v3, :cond_2

    .line 120
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_1

    .line 121
    :catch_8
    move-exception v0

    goto/16 :goto_1

    .line 118
    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_9
    if-eqz v3, :cond_e

    .line 120
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 122
    :cond_e
    :goto_a
    throw v0

    .line 121
    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v1

    goto :goto_a

    .line 118
    :catchall_1
    move-exception v0

    goto :goto_9

    .line 114
    :catch_b
    move-exception v0

    goto :goto_8

    .line 106
    :catch_c
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catch_d
    move-exception v0

    goto :goto_7

    .line 87
    :catch_e
    move-exception v0

    move-object v3, v4

    goto/16 :goto_4

    :catch_f
    move-exception v0

    goto/16 :goto_4

    .line 69
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
