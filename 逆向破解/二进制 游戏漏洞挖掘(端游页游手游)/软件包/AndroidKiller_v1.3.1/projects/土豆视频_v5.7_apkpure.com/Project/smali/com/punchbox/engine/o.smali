.class public Lcom/punchbox/engine/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/j;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/punchbox/engine/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/o;->a:Lcom/punchbox/engine/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/punchbox/engine/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/punchbox/engine/o;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "begin get predownload list."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string/jumbo v1, "sdcard not exits or make dirs failed."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/punchbox/engine/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/punchbox/engine/o;->a:Lcom/punchbox/engine/j;

    invoke-static {v0, v1}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string/jumbo v1, "today has get list yet."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/o;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->n(Lcom/punchbox/engine/j;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/punchbox/engine/o;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/punchbox/engine/o;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/punchbox/engine/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/punchbox/engine/o;->a:Lcom/punchbox/engine/j;

    invoke-static {v2}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/punchbox/v4/i/b;->a(Landroid/content/Context;)Lcom/punchbox/v4/i/b;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-string v4, "GET"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/punchbox/v4/i/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/punchbox/response/a;

    invoke-direct {v2}, Lcom/punchbox/response/a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/punchbox/response/a;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/punchbox/response/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v3, "get predown list return."

    invoke-static {v0, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/o;->a:Lcom/punchbox/engine/j;

    invoke-static {v0, v1}, Lcom/punchbox/engine/j;->e(Lcom/punchbox/engine/j;Ljava/lang/String;)V

    new-instance v1, Lcom/punchbox/v4/h/k;

    invoke-direct {v1}, Lcom/punchbox/v4/h/k;-><init>()V

    invoke-virtual {v2}, Lcom/punchbox/response/a;->b()[Lcom/punchbox/engine/PreDownloadData;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/punchbox/engine/PreDownloadData;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&pred=1&adtype="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/punchbox/engine/PreDownloadData;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/punchbox/engine/PreDownloadData;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/punchbox/engine/o;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "appv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/punchbox/engine/o;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/punchbox/engine/PreDownloadData;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/punchbox/v4/h/k;->a(Lcom/punchbox/engine/PreDownloadData;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/punchbox/engine/o;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->n(Lcom/punchbox/engine/j;)V
    :try_end_0
    .catch Lcom/punchbox/exception/PBException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/punchbox/exception/PBException;->printStackTrace()V

    goto/16 :goto_0
.end method
