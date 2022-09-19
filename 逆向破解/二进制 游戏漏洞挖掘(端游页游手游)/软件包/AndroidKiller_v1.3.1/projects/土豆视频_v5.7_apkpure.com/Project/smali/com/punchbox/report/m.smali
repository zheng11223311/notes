.class Lcom/punchbox/report/m;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/punchbox/report/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/punchbox/report/j;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/punchbox/report/m;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/punchbox/report/l;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/punchbox/report/m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "get_request"

    invoke-static {p1}, Lcom/punchbox/report/l;->a(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/punchbox/report/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "receive [get] request ...."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/punchbox/report/p;

    invoke-static {p1}, Lcom/punchbox/report/l;->b(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/punchbox/report/p;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/punchbox/report/l;->c(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/punchbox/report/p;->a(Ljava/lang/String;)Lcom/punchbox/report/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/report/p;->a()Lcom/punchbox/report/n;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/punchbox/report/n;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/punchbox/report/m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/report/j;

    invoke-static {v0}, Lcom/punchbox/report/j;->a(Lcom/punchbox/report/j;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const-string v0, "batch"

    invoke-static {p1}, Lcom/punchbox/report/l;->a(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/punchbox/report/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "receive [batch] request ...."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/punchbox/report/c;

    invoke-static {p1}, Lcom/punchbox/report/l;->b(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/punchbox/report/c;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/punchbox/report/l;->d(Lcom/punchbox/report/l;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/punchbox/report/c;->c([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "history_failed_data"

    invoke-static {p1}, Lcom/punchbox/report/l;->a(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/punchbox/report/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "receive [upload history failded data] request ...."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/punchbox/report/d;

    invoke-direct {v0}, Lcom/punchbox/report/d;-><init>()V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/punchbox/report/d;->c([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "post_ad_req_count"

    invoke-static {p1}, Lcom/punchbox/report/l;->a(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/punchbox/report/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Postpone ad_request_count when network not available"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/punchbox/report/p;

    invoke-static {p1}, Lcom/punchbox/report/l;->b(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/punchbox/report/p;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/punchbox/report/l;->c(Lcom/punchbox/report/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/punchbox/report/p;->a(Ljava/lang/String;)Lcom/punchbox/report/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/report/p;->a()Lcom/punchbox/report/n;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/punchbox/report/n;->d([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/punchbox/report/l;

    invoke-virtual {p0, v0}, Lcom/punchbox/report/m;->a(Lcom/punchbox/report/l;)V

    return-void
.end method
