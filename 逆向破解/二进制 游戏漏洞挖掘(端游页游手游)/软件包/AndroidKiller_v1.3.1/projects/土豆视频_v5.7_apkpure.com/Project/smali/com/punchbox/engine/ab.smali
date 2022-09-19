.class public Lcom/punchbox/engine/ab;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/ExecutorService;

.field private static d:Lcom/punchbox/engine/ab;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/engine/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/engine/ab;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/punchbox/engine/ab;->d:Lcom/punchbox/engine/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/punchbox/engine/ab;
    .locals 2

    const-class v1, Lcom/punchbox/engine/ab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/punchbox/engine/ab;->d:Lcom/punchbox/engine/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/punchbox/engine/ab;

    invoke-direct {v0}, Lcom/punchbox/engine/ab;-><init>()V

    sput-object v0, Lcom/punchbox/engine/ab;->d:Lcom/punchbox/engine/ab;

    :cond_0
    sget-object v0, Lcom/punchbox/engine/ab;->d:Lcom/punchbox/engine/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/punchbox/engine/ab;JLjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/punchbox/engine/ab;->c(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/engine/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(JLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/punchbox/engine/ac;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/punchbox/engine/ac;-><init>(Lcom/punchbox/engine/ab;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(JLjava/lang/String;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/punchbox/engine/ab;->a:Ljava/lang/String;

    const-string v4, "download pre res."

    invoke-static {v3, v4}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v3, Lcom/punchbox/engine/j;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.socket.timeout"

    sget v9, Lcom/punchbox/engine/f;->b:I

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    const-string v8, "http.connection.timeout"

    sget v9, Lcom/punchbox/engine/f;->a:I

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    :try_start_0
    invoke-virtual {v5, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    sget-object v8, Lcom/punchbox/engine/ab;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "statusCode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xc8

    if-eq v3, v8, :cond_2

    const/16 v8, 0xce

    if-eq v3, v8, :cond_2

    sget-object v1, Lcom/punchbox/engine/ab;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP error, http status code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_1
    sput-object v2, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    :cond_1
    :goto_2
    return v0

    :cond_2
    :try_start_2
    const-string v3, "Content-Encoding"

    invoke-interface {v7, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v8, "gzip"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "deflate"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_3
    move v3, v1

    :goto_3
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-nez v7, :cond_5

    sget-object v1, Lcom/punchbox/engine/ab;->a:Ljava/lang/String;

    const-string v3, "entity is null"

    invoke-static {v1, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    :try_start_4
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_f

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v1, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_1

    :cond_7
    :try_start_6
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "rw"

    invoke-direct {v3, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v8, 0x0

    :try_start_7
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_6
    invoke-virtual {v4, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8, v7}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catch_0
    move-exception v1

    move-object v1, v3

    :goto_7
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    if-eqz v1, :cond_8

    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    if-eqz v3, :cond_a

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v2, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    :cond_b
    move v0, v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_a
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    if-eqz v3, :cond_c

    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_c
    :goto_b
    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v2, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    :cond_d
    throw v0

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    move-object v3, v2

    :goto_c
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    if-eqz v3, :cond_e

    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_e
    :goto_d
    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto :goto_d

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_4

    :catch_7
    move-exception v1

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    if-eqz v2, :cond_10

    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_10
    :goto_e
    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/punchbox/engine/ab;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_1

    :catch_8
    move-exception v1

    goto :goto_e

    :catch_9
    move-exception v0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_a
    move-exception v1

    goto :goto_c

    :catch_b
    move-exception v1

    move-object v1, v2

    goto/16 :goto_7

    :cond_11
    move v3, v0

    goto/16 :goto_3
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/engine/ab;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/punchbox/engine/ab;->b(JLjava/lang/String;)V

    return-void
.end method
