.class public Lcom/punchbox/v4/h/l;
.super Lcom/punchbox/v4/h/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/v4/h/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/punchbox/v4/h/e;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p3, [Ljava/lang/Object;

    check-cast p3, [Ljava/lang/Object;

    array-length v0, p3

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_0

    const-string v4, " %s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p3, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    iput-object v3, p2, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/punchbox/report/ReportData;)J
    .locals 2

    const-string/jumbo v0, "report_t"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/l;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/h/l;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/punchbox/v4/h/l;->b(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/punchbox/report/ReportData;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "report_t"

    invoke-virtual {p0, v1}, Lcom/punchbox/v4/h/l;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v1

    const-string v2, "%s = ? "

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "status"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iput-object v2, v1, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    iput-object v3, v1, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/punchbox/v4/h/l;->a(Lcom/punchbox/v4/h/e;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/punchbox/report/ReportData;

    invoke-direct {v2}, Lcom/punchbox/report/ReportData;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/punchbox/v4/h/l;->a(Landroid/database/Cursor;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public varargs a(I[Ljava/lang/Long;)V
    .locals 4

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "report_t"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/l;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    const-string v1, "id"

    const-string v2, " and "

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/punchbox/v4/h/l;->a(Ljava/lang/Object;Lcom/punchbox/v4/h/e;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1}, Lcom/punchbox/v4/h/l;->a(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public b(I)V
    .locals 4

    const-string/jumbo v0, "report_t"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/l;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1}, Lcom/punchbox/v4/h/l;->a(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)I

    return-void
.end method

.method public d()V
    .locals 1

    const-string/jumbo v0, "report_t"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/l;->a(Ljava/lang/String;)V

    return-void
.end method
