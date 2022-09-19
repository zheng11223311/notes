.class Lcom/punchbox/v4/k/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/k/a;

.field private final b:Lcom/punchbox/v4/k/c;


# direct methods
.method public constructor <init>(Lcom/punchbox/v4/k/a;Lcom/punchbox/v4/k/c;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/k/d;->a:Lcom/punchbox/v4/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/punchbox/v4/k/d;->b:Lcom/punchbox/v4/k/c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/punchbox/v4/k/d;->a:Lcom/punchbox/v4/k/a;

    iget-object v1, p0, Lcom/punchbox/v4/k/d;->b:Lcom/punchbox/v4/k/c;

    invoke-static {v1}, Lcom/punchbox/v4/k/c;->a(Lcom/punchbox/v4/k/c;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/v4/k/d;->b:Lcom/punchbox/v4/k/c;

    invoke-static {v2}, Lcom/punchbox/v4/k/c;->b(Lcom/punchbox/v4/k/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/v4/k/d;->b:Lcom/punchbox/v4/k/c;

    invoke-static {v3}, Lcom/punchbox/v4/k/c;->c(Lcom/punchbox/v4/k/c;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/punchbox/v4/k/a;->a(Lcom/punchbox/v4/k/a;Landroid/content/Intent;Landroid/content/Context;I)V

    return-void
.end method
