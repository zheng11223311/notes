.class public Lcom/punchbox/v4/h/h;
.super Lcom/punchbox/v4/h/a;


# instance fields
.field private b:Lcom/punchbox/v4/h/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/v4/h/a;-><init>()V

    new-instance v0, Lcom/punchbox/v4/h/c;

    invoke-direct {v0}, Lcom/punchbox/v4/h/c;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/h/h;->b:Lcom/punchbox/v4/h/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "download_complete_t"

    invoke-virtual {p0, v1}, Lcom/punchbox/v4/h/h;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v1

    const-string v2, "%s = ? "

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "packageName"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v5

    iput-object v2, v1, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/punchbox/v4/h/h;->a(Lcom/punchbox/v4/h/e;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/punchbox/data/DownloadCompleteInfo;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "download_complete_t"

    invoke-virtual {p0, v1}, Lcom/punchbox/v4/h/h;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v1

    const-string v2, "%s = ? "

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "packageName"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v5

    iput-object v2, v1, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/punchbox/v4/h/h;->a(Lcom/punchbox/v4/h/e;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/punchbox/data/DownloadCompleteInfo;

    invoke-direct {v0}, Lcom/punchbox/data/DownloadCompleteInfo;-><init>()V

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v2, p0, Lcom/punchbox/v4/h/h;->b:Lcom/punchbox/v4/h/c;

    invoke-virtual {v2, v1, v0}, Lcom/punchbox/v4/h/c;->a(Landroid/database/Cursor;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public d()Landroid/database/Cursor;
    .locals 1

    const-string v0, "download_complete_t"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/h;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/h;->a(Lcom/punchbox/v4/h/e;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "download_complete_t"

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/h;->b(Ljava/lang/String;)Lcom/punchbox/v4/h/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/punchbox/v4/h/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/punchbox/v4/h/e;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/h/h;->b(Lcom/punchbox/v4/h/e;)V

    goto :goto_0
.end method
