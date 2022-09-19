.class Lcom/punchbox/engine/al;
.super Ljava/lang/Thread;


# instance fields
.field a:Landroid/os/Messenger;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/punchbox/data/DownloadedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/punchbox/engine/PunchBoxService;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Messenger;)V
    .locals 1

    iput-object p1, p0, Lcom/punchbox/engine/al;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/punchbox/engine/al;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/punchbox/engine/al;->a:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lcom/punchbox/v4/h/h;

    invoke-direct {v0}, Lcom/punchbox/v4/h/h;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/punchbox/v4/h/h;->d()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/punchbox/data/DownloadedAppInfo;

    invoke-direct {v0}, Lcom/punchbox/data/DownloadedAppInfo;-><init>()V

    const-string v4, "fileName"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/punchbox/data/DownloadedAppInfo;->a(Ljava/lang/String;)V

    const-string v4, "adInfo"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "&pred=1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    new-instance v5, Lcom/punchbox/v4/h/k;

    invoke-direct {v5}, Lcom/punchbox/v4/h/k;-><init>()V

    invoke-virtual {v5, v4}, Lcom/punchbox/v4/h/k;->g(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/punchbox/data/DownloadedAppInfo;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/punchbox/engine/al;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_2
    const-string v0, "app_list"

    iget-object v4, p0, Lcom/punchbox/engine/al;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_2
    iget-object v0, p0, Lcom/punchbox/engine/al;->a:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "Remote app died, we can do nothing."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
