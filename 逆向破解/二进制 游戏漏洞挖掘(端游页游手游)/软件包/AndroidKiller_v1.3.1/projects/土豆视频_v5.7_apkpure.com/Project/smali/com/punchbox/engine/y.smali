.class public Lcom/punchbox/engine/y;
.super Ljava/util/PriorityQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/PriorityQueue",
        "<",
        "Lcom/punchbox/engine/r;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/punchbox/engine/r;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/punchbox/engine/r;
    .locals 3

    const-string v0, "CoCoAdSDK-RequestQueue"

    const-string v1, "poll"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/r;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->h()I

    move-result v1

    sget v2, Lcom/punchbox/engine/e;->d:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->r()V

    :cond_0
    return-object v0
.end method

.method public a(Lcom/punchbox/engine/r;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/r;

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/punchbox/engine/r;->e()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CoCoAdSDK-RequestQueue"

    const-string v2, "Found dup request"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "CoCoAdSDK-RequestQueue"

    const-string v2, "Queue new request"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/punchbox/engine/r;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-string v0, "CoCoAdSDK-RequestQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadRequest.getDownloadTableId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/punchbox/engine/r;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/punchbox/engine/r;->q()J

    move-result-wide v2

    const-string v0, "CoCoAdSDK-RequestQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CoCoAdSDK-RequestQueue"

    const-string v2, "The request already exist in DB."

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2, v3}, Lcom/punchbox/engine/r;->a(J)V

    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/punchbox/engine/r;

    invoke-virtual {p0, p1}, Lcom/punchbox/engine/y;->a(Lcom/punchbox/engine/r;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/punchbox/engine/r;)Lcom/punchbox/engine/r;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    sget-object v2, Lcom/punchbox/engine/w;->a:Lcom/punchbox/engine/w;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/r;

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->e()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/punchbox/engine/r;->e()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v3

    sget-object v4, Lcom/punchbox/engine/w;->a:Lcom/punchbox/engine/w;

    if-ne v3, v4, :cond_1

    invoke-super {p0, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/punchbox/engine/y;->a()Lcom/punchbox/engine/r;

    move-result-object v0

    return-object v0
.end method
