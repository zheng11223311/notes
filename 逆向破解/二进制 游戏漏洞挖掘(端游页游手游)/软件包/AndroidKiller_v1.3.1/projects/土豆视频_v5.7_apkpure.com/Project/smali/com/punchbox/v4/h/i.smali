.class public Lcom/punchbox/v4/h/i;
.super Lcom/punchbox/v4/h/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/v4/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)I
    .locals 3

    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/i;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "pkg_name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/punchbox/v4/h/i;->a(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/punchbox/engine/DownloadData;)J
    .locals 2

    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/i;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/h/i;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/punchbox/v4/h/i;->c(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)Landroid/database/Cursor;
    .locals 3

    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/i;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/i;->a(Lcom/punchbox/v4/h/e;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/i;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    iput-object p2, v0, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    iput-object p3, v0, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/punchbox/v4/h/i;->a(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)I

    return-void
.end method

.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/i;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/i;->b(Lcom/punchbox/v4/h/e;)V

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/punchbox/engine/DownloadData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "download"

    invoke-virtual {p0, v1}, Lcom/punchbox/v4/h/i;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/punchbox/v4/h/i;->a(Lcom/punchbox/v4/h/e;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/punchbox/engine/DownloadData;

    invoke-direct {v2}, Lcom/punchbox/engine/DownloadData;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/punchbox/v4/h/i;->a(Landroid/database/Cursor;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
