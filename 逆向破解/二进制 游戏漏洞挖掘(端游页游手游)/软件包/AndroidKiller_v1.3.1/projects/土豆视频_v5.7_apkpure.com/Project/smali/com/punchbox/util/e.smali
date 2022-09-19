.class Lcom/punchbox/util/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/n/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/punchbox/util/d;


# direct methods
.method constructor <init>(Lcom/punchbox/util/d;Lcom/punchbox/v4/n/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/util/e;->c:Lcom/punchbox/util/d;

    iput-object p2, p0, Lcom/punchbox/util/e;->a:Lcom/punchbox/v4/n/a;

    iput-object p3, p0, Lcom/punchbox/util/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/punchbox/util/e;->a:Lcom/punchbox/v4/n/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/n/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/util/e;->c:Lcom/punchbox/util/d;

    invoke-static {v1}, Lcom/punchbox/util/d;->a(Lcom/punchbox/util/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&placeid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/util/e;->c:Lcom/punchbox/util/d;

    invoke-static {v1}, Lcom/punchbox/util/d;->a(Lcom/punchbox/util/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/punchbox/util/e;->c:Lcom/punchbox/util/d;

    invoke-static {v1}, Lcom/punchbox/util/d;->b(Lcom/punchbox/util/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/punchbox/v4/i/b;->a(Landroid/content/Context;)Lcom/punchbox/v4/i/b;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/punchbox/v4/i/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/util/e;->c:Lcom/punchbox/util/d;

    iget-object v1, p0, Lcom/punchbox/util/e;->a:Lcom/punchbox/v4/n/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/punchbox/v4/n/a;->a(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/util/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/punchbox/util/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/punchbox/util/e;->c:Lcom/punchbox/util/d;

    iget-object v1, p0, Lcom/punchbox/util/e;->a:Lcom/punchbox/v4/n/a;

    invoke-virtual {v1, v5}, Lcom/punchbox/v4/n/a;->a(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/util/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/punchbox/util/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
