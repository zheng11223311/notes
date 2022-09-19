.class final Lcom/punchbox/engine/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/n/c;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/n/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/q;->a:Lcom/punchbox/v4/n/c;

    iput-object p2, p0, Lcom/punchbox/engine/q;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/punchbox/engine/q;->a:Lcom/punchbox/v4/n/c;

    invoke-virtual {v1}, Lcom/punchbox/v4/n/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/q;->a:Lcom/punchbox/v4/n/c;

    invoke-virtual {v1}, Lcom/punchbox/v4/n/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/punchbox/engine/q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/punchbox/v4/i/b;->a(Landroid/content/Context;)Lcom/punchbox/v4/i/b;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/punchbox/v4/i/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
