.class Lcom/punchbox/v4/j/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/j/a;

.field private b:Lcom/punchbox/v4/j/d;


# direct methods
.method public constructor <init>(Lcom/punchbox/v4/j/a;Lcom/punchbox/v4/j/d;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/j/c;->a:Lcom/punchbox/v4/j/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/punchbox/v4/j/c;->b:Lcom/punchbox/v4/j/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/punchbox/v4/j/d;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/j/c;->b:Lcom/punchbox/v4/j/d;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/punchbox/v4/j/a;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on receive checker action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/v4/j/c;->b:Lcom/punchbox/v4/j/d;

    invoke-interface {v1}, Lcom/punchbox/v4/j/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/j/c;->a:Lcom/punchbox/v4/j/a;

    invoke-static {v0}, Lcom/punchbox/v4/j/a;->a(Lcom/punchbox/v4/j/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/punchbox/v4/j/b;

    iget-object v2, p0, Lcom/punchbox/v4/j/c;->a:Lcom/punchbox/v4/j/a;

    iget-object v3, p0, Lcom/punchbox/v4/j/c;->b:Lcom/punchbox/v4/j/d;

    invoke-direct {v1, v2, v3}, Lcom/punchbox/v4/j/b;-><init>(Lcom/punchbox/v4/j/a;Lcom/punchbox/v4/j/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/punchbox/v4/j/c;->a:Lcom/punchbox/v4/j/a;

    iget-object v1, p0, Lcom/punchbox/v4/j/c;->b:Lcom/punchbox/v4/j/d;

    invoke-static {v0, v1}, Lcom/punchbox/v4/j/a;->a(Lcom/punchbox/v4/j/a;Lcom/punchbox/v4/j/d;)V

    :cond_0
    return-void
.end method
