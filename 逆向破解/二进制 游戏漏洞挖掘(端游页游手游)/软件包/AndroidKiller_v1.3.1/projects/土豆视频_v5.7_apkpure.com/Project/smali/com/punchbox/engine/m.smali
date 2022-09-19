.class Lcom/punchbox/engine/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/j;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/j;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/m;->a:Lcom/punchbox/engine/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/m;->a:Lcom/punchbox/engine/j;

    invoke-static {v0}, Lcom/punchbox/engine/j;->m(Lcom/punchbox/engine/j;)V

    goto :goto_0
.end method
