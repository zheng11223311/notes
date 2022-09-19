.class Lcom/punchbox/v4/j/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/j/a;

.field private b:Lcom/punchbox/v4/j/d;


# direct methods
.method public constructor <init>(Lcom/punchbox/v4/j/a;Lcom/punchbox/v4/j/d;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/j/b;->a:Lcom/punchbox/v4/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/punchbox/v4/j/b;->b:Lcom/punchbox/v4/j/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/j/b;->b:Lcom/punchbox/v4/j/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/j/b;->b:Lcom/punchbox/v4/j/d;

    invoke-interface {v0}, Lcom/punchbox/v4/j/d;->c()V

    :cond_0
    return-void
.end method
