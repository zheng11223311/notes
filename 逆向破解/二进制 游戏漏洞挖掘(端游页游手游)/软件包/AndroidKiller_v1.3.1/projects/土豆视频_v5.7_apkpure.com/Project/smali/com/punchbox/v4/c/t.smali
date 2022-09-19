.class public Lcom/punchbox/v4/c/t;
.super Lcom/punchbox/v4/c/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/v4/c/f;-><init>()V

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/c/t;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/punchbox/v4/c/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcom/punchbox/v4/c/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(I[Lorg/apache/http/Header;[B)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/punchbox/v4/c/t;->a(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/punchbox/v4/c/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TextHttpResponseHandler"

    const-string v3, "String encoding failed, calling onFailure(int, Header[], String, Throwable)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, p2, v0, v1}, Lcom/punchbox/v4/c/t;->a(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/punchbox/v4/c/t;->a(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/punchbox/v4/c/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TextHttpResponseHandler"

    const-string v3, "String encoding failed, calling onFailure(int, Header[], String, Throwable)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, p2, v0, v1}, Lcom/punchbox/v4/c/t;->a(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
