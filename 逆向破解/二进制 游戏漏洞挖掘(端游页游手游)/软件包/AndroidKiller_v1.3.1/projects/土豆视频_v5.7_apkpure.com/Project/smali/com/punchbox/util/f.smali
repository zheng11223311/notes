.class Lcom/punchbox/util/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/punchbox/util/d;


# direct methods
.method constructor <init>(Lcom/punchbox/util/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/util/f;->c:Lcom/punchbox/util/d;

    iput-object p2, p0, Lcom/punchbox/util/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/punchbox/util/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/util/f;->c:Lcom/punchbox/util/d;

    invoke-static {v0}, Lcom/punchbox/util/d;->c(Lcom/punchbox/util/d;)Lcom/punchbox/engine/ad;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/util/f;->c:Lcom/punchbox/util/d;

    iget-object v1, p0, Lcom/punchbox/util/f;->c:Lcom/punchbox/util/d;

    invoke-static {v1}, Lcom/punchbox/util/d;->b(Lcom/punchbox/util/d;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/punchbox/engine/ad;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/punchbox/engine/ad;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/d;->a(Lcom/punchbox/util/d;Lcom/punchbox/engine/ad;)Lcom/punchbox/engine/ad;

    :cond_0
    invoke-static {}, Lcom/punchbox/util/d;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdk begin send log:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/util/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/util/f;->c:Lcom/punchbox/util/d;

    invoke-static {v0}, Lcom/punchbox/util/d;->c(Lcom/punchbox/util/d;)Lcom/punchbox/engine/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/util/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/punchbox/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/punchbox/engine/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
