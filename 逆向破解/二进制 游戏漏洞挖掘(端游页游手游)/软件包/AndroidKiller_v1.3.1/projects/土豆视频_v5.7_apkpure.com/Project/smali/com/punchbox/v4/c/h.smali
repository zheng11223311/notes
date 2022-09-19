.class public Lcom/punchbox/v4/c/h;
.super Lcom/punchbox/v4/c/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/punchbox/v4/c/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/punchbox/v4/c/h;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(ILorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/punchbox/v4/c/h;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/punchbox/v4/c/i;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/punchbox/v4/c/i;-><init>(Lcom/punchbox/v4/c/h;Ljava/lang/String;I[Lorg/apache/http/Header;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/punchbox/v4/c/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    if-eqz p3, :cond_0

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/punchbox/v4/c/l;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/punchbox/v4/c/l;-><init>(Lcom/punchbox/v4/c/h;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "JsonHttpResponseHandler"

    const-string/jumbo v1, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/punchbox/v4/c/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1, p3, p4}, Lcom/punchbox/v4/c/h;->a(ILjava/lang/Throwable;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1, p3, p4}, Lcom/punchbox/v4/c/h;->a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/punchbox/v4/c/h;->a(ILorg/json/JSONArray;)V

    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/punchbox/v4/c/h;->a(ILorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/c/h;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
