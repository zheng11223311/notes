.class Lcom/punchbox/engine/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/j;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/j;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/punchbox/v4/a/e;

    iput-object v0, v1, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    sget v1, Lcom/punchbox/engine/g;->c:I

    invoke-static {v0, v1, v4}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;II)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->h()I

    move-result v0

    sget v1, Lcom/punchbox/engine/e;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->b(Lcom/punchbox/engine/j;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->a()I

    move-result v1

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v2, v2, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v2}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    sget-object v1, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/punchbox/engine/k;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/punchbox/engine/r;->a(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/punchbox/v4/a/e;

    iput-object v0, v1, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->h()I

    move-result v0

    sget v1, Lcom/punchbox/engine/e;->a:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->h()I

    move-result v0

    sget v1, Lcom/punchbox/engine/e;->b:I

    if-ne v0, v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    sget v1, Lcom/punchbox/engine/g;->d:I

    invoke-static {v0, v1, v4}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;II)V

    :goto_1
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->c(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/z;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->c(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/punchbox/engine/z;->d()V

    :cond_3
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    sget-object v1, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->b(Lcom/punchbox/engine/j;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->a()I

    move-result v1

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v2, v2, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v2}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.punchbox.action.start_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packagename"

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v2}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/punchbox/engine/r;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    sget v1, Lcom/punchbox/engine/g;->f:I

    invoke-static {v0, v1, v4}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;II)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/punchbox/v4/a/e;

    iput-object v0, v1, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    sget-object v1, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->b(Lcom/punchbox/engine/j;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->a()I

    move-result v1

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v2, v2, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v2}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "MSG_DOWNLOAD_FINISH"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/punchbox/v4/a/e;

    iput-object v0, v1, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    sget-object v1, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->b(Lcom/punchbox/engine/j;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->a()I

    move-result v1

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v2, v2, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v2}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_6
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->k()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/engine/j;->b(Lcom/punchbox/engine/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/punchbox/v4/h/i;

    invoke-direct {v0}, Lcom/punchbox/v4/h/i;-><init>()V

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v2}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/punchbox/engine/r;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/punchbox/v4/h/i;->a(JLjava/lang/String;)I

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v2}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/punchbox/engine/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/punchbox/v4/h/k;->d(Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/punchbox/engine/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    sget v2, Lcom/punchbox/engine/g;->b:I

    invoke-static {v0, v2, v4}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;II)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->c(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/z;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->c(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/punchbox/engine/z;->e()V

    :cond_9
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iput-object v5, v0, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->e(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->a()Lcom/punchbox/engine/r;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->o()V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0, v5}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;Lcom/punchbox/engine/r;)Lcom/punchbox/engine/r;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->e(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/r;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v7}, Lcom/punchbox/engine/k;->sendEmptyMessage(I)Z

    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.punchbox.action.download_finish"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "packagename"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error happens while downloading, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->b(Lcom/punchbox/engine/j;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    sget v1, Lcom/punchbox/engine/g;->a:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;II)V

    :cond_b
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->c(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/z;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->c(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/punchbox/engine/z;->f()V

    :cond_c
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0, v5}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->f(Lcom/punchbox/engine/j;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->f(Lcom/punchbox/engine/j;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v3}, Lcom/punchbox/engine/j;->f(Lcom/punchbox/engine/j;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pending download job found in DB."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->e(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/y;

    move-result-object v0

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v2}, Lcom/punchbox/engine/j;->f(Lcom/punchbox/engine/j;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/punchbox/engine/y;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->g(Lcom/punchbox/engine/j;)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->f(Lcom/punchbox/engine/j;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/punchbox/engine/k;->sendEmptyMessage(I)Z

    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    :try_start_1
    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v2, "No pending download request in DB."

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_7
    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "New download request."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->h(Lcom/punchbox/engine/j;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v2}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsNetworkAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v2}, Lcom/punchbox/engine/j;->h(Lcom/punchbox/engine/j;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->g(Lcom/punchbox/engine/j;)V

    :goto_3
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->e(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v1

    sget-object v2, Lcom/punchbox/engine/w;->a:Lcom/punchbox/engine/w;

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->i(Lcom/punchbox/engine/j;)Lcom/punchbox/v4/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/v4/f/b;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v1

    sget-object v2, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    if-ne v1, v2, :cond_11

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->j()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->h()I

    move-result v1

    sget v2, Lcom/punchbox/engine/e;->a:I

    if-eq v1, v2, :cond_11

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->i(Lcom/punchbox/engine/j;)Lcom/punchbox/v4/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/v4/f/b;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v1

    sget-object v2, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    if-ne v1, v2, :cond_13

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->j()Z

    move-result v1

    if-ne v1, v6, :cond_13

    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->i(Lcom/punchbox/engine/j;)Lcom/punchbox/v4/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/v4/f/b;->c()Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1}, Lcom/punchbox/engine/j;->e(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/y;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_13
    iget-object v1, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v1, v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;Lcom/punchbox/engine/r;)Lcom/punchbox/engine/r;

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->n()V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "We receive a high PRI request, cancel the on-going one."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->p()V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "Cancel complete."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    sget v1, Lcom/punchbox/engine/g;->e:I

    invoke-static {v0, v1, v4}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;II)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->o()V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0, v5}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/j;Lcom/punchbox/engine/r;)Lcom/punchbox/engine/r;

    invoke-virtual {p0, v7}, Lcom/punchbox/engine/k;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "url"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub_type"

    const-string v2, "DownloadList"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_version"

    sget v2, Lcom/punchbox/engine/i;->i:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->j(Lcom/punchbox/engine/j;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->h(Lcom/punchbox/engine/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->k(Lcom/punchbox/engine/j;)I

    move-result v0

    sget v1, Lcom/punchbox/engine/d;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/PreDownloadData;

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->f()Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "CoCoAdSDK-DownloadManager"

    const-string v3, "download predown apk."

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_15
    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->e()Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "CoCoAdSDK-DownloadManager"

    const-string v3, "download predown res."

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/punchbox/engine/ab;->a()Lcom/punchbox/engine/ab;

    move-result-object v2

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->h()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Lcom/punchbox/engine/ab;->a(JLjava/lang/String;)V

    goto :goto_4

    :pswitch_c
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/o/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/o/a;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/o/a;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/o/a;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/o/a;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/o/a;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/punchbox/engine/k;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->d(Lcom/punchbox/engine/j;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/o/a;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
