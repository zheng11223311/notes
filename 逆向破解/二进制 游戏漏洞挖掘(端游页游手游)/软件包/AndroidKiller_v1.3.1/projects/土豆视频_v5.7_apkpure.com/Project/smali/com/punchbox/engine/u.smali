.class Lcom/punchbox/engine/u;
.super Landroid/os/Handler;


# instance fields
.field a:J

.field b:[J

.field final synthetic c:Lcom/punchbox/engine/r;


# direct methods
.method private constructor <init>(Lcom/punchbox/engine/r;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/punchbox/engine/u;->b:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/punchbox/engine/r;Landroid/os/Looper;Lcom/punchbox/engine/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/punchbox/engine/u;-><init>(Lcom/punchbox/engine/r;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x83d

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CoCoAdSDK-DownloadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: Received new buffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/punchbox/engine/u;->a:J

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/punchbox/engine/u;->a:J

    iget-object v0, p0, Lcom/punchbox/engine/u;->b:[J

    aget-wide v4, v0, v3

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    iget-object v1, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;)J

    move-result-wide v1

    iget-object v4, p0, Lcom/punchbox/engine/u;->b:[J

    aget-wide v4, v4, v3

    invoke-static/range {v0 .. v5}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;JIJ)I

    iget-wide v0, p0, Lcom/punchbox/engine/u;->a:J

    long-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->d(Lcom/punchbox/engine/r;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;I)V

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->e(Lcom/punchbox/engine/r;)Lcom/punchbox/v4/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->g(Lcom/punchbox/engine/r;)I

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CoCoAdSDK-DownloadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " download complete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->h(Lcom/punchbox/engine/r;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " job complete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->h(Lcom/punchbox/engine/r;)I

    move-result v0

    iget-object v1, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CoCoAdSDK-DownloadRequest"

    const-string v1, "Job finished. All threads download complete."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->i(Lcom/punchbox/engine/r;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->j(Lcom/punchbox/engine/r;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->k(Lcom/punchbox/engine/r;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->l(Lcom/punchbox/engine/r;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->m(Lcom/punchbox/engine/r;)V

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->e(Lcom/punchbox/engine/r;)Lcom/punchbox/v4/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0, v4}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Z)Z

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    sget v1, Lcom/punchbox/engine/e;->d:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;I)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0, v7}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Z)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->n(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->b(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CoCoAdSDK-DownloadRequest"

    const-string v1, "Job finished. Some thread download complete, others failed."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->o(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0, v4}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Z)Z

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    sget v1, Lcom/punchbox/engine/e;->b:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x83f

    invoke-virtual {v0, v5, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->p(Lcom/punchbox/engine/r;)I

    const-string v0, "CoCoAdSDK-DownloadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " download failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->q(Lcom/punchbox/engine/r;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " job failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0, v7}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Z)Z

    :cond_8
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->n(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->o(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0, v4}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Z)Z

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    sget v1, Lcom/punchbox/engine/e;->b:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    const-string v0, "CoCoAdSDK-DownloadRequest"

    const-string v1, "Job finished. Download job failed."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->r(Lcom/punchbox/engine/r;)I

    const-string v0, "CoCoAdSDK-DownloadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canceled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->s(Lcom/punchbox/engine/r;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " job canceled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->n(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/punchbox/engine/u;->c:Lcom/punchbox/engine/r;

    sget v1, Lcom/punchbox/engine/e;->c:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
