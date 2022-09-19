.class public Lcom/punchbox/v4/h/j;
.super Lcom/punchbox/v4/h/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/v4/h/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "download_detail"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/j;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    iput-object p1, v0, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/j;->a(Lcom/punchbox/v4/h/e;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string v0, "download_detail"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/j;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    iput-object p2, v0, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    iput-object p3, v0, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/punchbox/v4/h/j;->a(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/punchbox/engine/DownloadSubData;)J
    .locals 2

    const-string v0, "download_detail"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/j;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/punchbox/v4/h/j;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/punchbox/v4/h/j;->b(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)Landroid/database/Cursor;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s = ? "

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "download_id"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/punchbox/v4/h/j;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "download_detail"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/j;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_id="

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

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/j;->b(Lcom/punchbox/v4/h/e;)V

    goto :goto_0
.end method
