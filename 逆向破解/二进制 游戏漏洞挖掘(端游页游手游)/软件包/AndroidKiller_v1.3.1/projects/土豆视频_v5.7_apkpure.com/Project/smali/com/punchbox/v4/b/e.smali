.class public Lcom/punchbox/v4/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:Lcom/punchbox/v4/b/e;


# instance fields
.field private d:Lcom/punchbox/v4/b/h;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/punchbox/v4/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CocoData_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/punchbox/v4/b/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/b/e;->a:Ljava/lang/String;

    const v0, 0x2932e00

    sput v0, Lcom/punchbox/v4/b/e;->b:I

    const/4 v0, 0x0

    sput-object v0, Lcom/punchbox/v4/b/e;->c:Lcom/punchbox/v4/b/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/b/e;->d:Lcom/punchbox/v4/b/h;

    iput-object v0, p0, Lcom/punchbox/v4/b/e;->e:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/b/e;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/punchbox/v4/b/e;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/punchbox/v4/b/h;->a(Landroid/content/Context;)Lcom/punchbox/v4/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/v4/b/e;->d:Lcom/punchbox/v4/b/h;

    return-void
.end method

.method protected static a(Landroid/content/Context;)Lcom/punchbox/v4/b/e;
    .locals 2

    sget-object v0, Lcom/punchbox/v4/b/e;->c:Lcom/punchbox/v4/b/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/punchbox/v4/b/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/punchbox/v4/b/e;->c:Lcom/punchbox/v4/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/punchbox/v4/b/e;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/punchbox/v4/b/e;->c:Lcom/punchbox/v4/b/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/punchbox/v4/b/e;->c:Lcom/punchbox/v4/b/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/punchbox/v4/b/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/b/e;->f:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x400

    const/4 v4, 0x0

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-array v1, v5, [B

    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1, v4, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void
.end method

.method private static a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lcom/punchbox/v4/b/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v2
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/punchbox/v4/b/e;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "coco_sync_time"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    sget v4, Lcom/punchbox/v4/b/e;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :goto_1
    sget-object v2, Lcom/punchbox/v4/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v1, "false"

    goto :goto_2
.end method


# virtual methods
.method protected a()Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0}, Lcom/punchbox/v4/b/e;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/v4/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/b/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/punchbox/v4/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/b/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/b/e;->d:Lcom/punchbox/v4/b/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/punchbox/v4/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/punchbox/v4/b/e;->e:Landroid/content/Context;

    const-string v1, "coco_data_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/punchbox/v4/b/e;->d:Lcom/punchbox/v4/b/h;

    invoke-virtual {v0}, Lcom/punchbox/v4/b/h;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "identifier"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/punchbox/v4/b/e;->d:Lcom/punchbox/v4/b/h;

    invoke-virtual {v1, p1}, Lcom/punchbox/v4/b/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/punchbox/v4/b/b;->b:Lcom/punchbox/v4/b/b;

    invoke-virtual {v2}, Lcom/punchbox/v4/b/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/punchbox/v4/b/e;->d:Lcom/punchbox/v4/b/h;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/b/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/punchbox/v4/b/b;->b:Lcom/punchbox/v4/b/b;

    invoke-virtual {v2}, Lcom/punchbox/v4/b/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appId"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "timestamp"

    invoke-virtual {p0}, Lcom/punchbox/v4/b/e;->b()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "coco_timestamp"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "sdk_version"

    const-string v4, "1.0.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appIdentifier"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :try_start_0
    const-string/jumbo v2, "targetGroup"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/punchbox/v4/b/e;->d:Lcom/punchbox/v4/b/h;

    invoke-virtual {v3}, Lcom/punchbox/v4/b/h;->b()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/Header;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/punchbox/v4/b/e;->a([B)[B

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/punchbox/v4/b/e;->e:Landroid/content/Context;

    const-string v3, "/target/query"

    new-instance v4, Lcom/punchbox/v4/b/f;

    invoke-direct {v4, p0}, Lcom/punchbox/v4/b/f;-><init>(Lcom/punchbox/v4/b/e;)V

    invoke-static {v0, v3, v2, v1, v4}, Lcom/punchbox/v4/b/g;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Lcom/punchbox/v4/c/f;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/punchbox/v4/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/punchbox/v4/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method
