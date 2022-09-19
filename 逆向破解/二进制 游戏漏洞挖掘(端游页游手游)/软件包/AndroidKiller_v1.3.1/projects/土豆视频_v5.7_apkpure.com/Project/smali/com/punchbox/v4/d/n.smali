.class Lcom/punchbox/v4/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/i;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/i;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/n;->a:Lcom/punchbox/v4/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/v4/d/n;->a:Lcom/punchbox/v4/d/i;

    iget-object v0, v0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/punchbox/v4/d/i;->b(Z)Z

    invoke-static {}, Lcom/punchbox/v4/d/i;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "will not get predown for client is null."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/punchbox/v4/d/i;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "begin get predown list."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/n;->a:Lcom/punchbox/v4/d/i;

    iget-object v0, v0, Lcom/punchbox/v4/d/i;->n:Lcom/punchbox/engine/ad;

    iget-object v1, p0, Lcom/punchbox/v4/d/n;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1}, Lcom/punchbox/v4/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/v4/d/n;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v2}, Lcom/punchbox/v4/d/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/punchbox/engine/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
