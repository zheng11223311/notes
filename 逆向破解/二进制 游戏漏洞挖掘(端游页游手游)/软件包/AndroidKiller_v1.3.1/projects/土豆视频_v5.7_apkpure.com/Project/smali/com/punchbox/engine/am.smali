.class Lcom/punchbox/engine/am;
.super Ljava/lang/Thread;


# instance fields
.field a:Landroid/os/Messenger;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/punchbox/engine/PreDownloadData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/punchbox/engine/PunchBoxService;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Messenger;)V
    .locals 1

    iput-object p1, p0, Lcom/punchbox/engine/am;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/punchbox/engine/am;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/punchbox/engine/am;->a:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/punchbox/v4/h/k;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/PreDownloadData;

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->i()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/punchbox/engine/am;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "predown_list"

    iget-object v3, p0, Lcom/punchbox/engine/am;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/engine/am;->a:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "Remote app died, we can do nothing."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
