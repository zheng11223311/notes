.class Lcom/punchbox/v4/d/r;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/p;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/p;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/r;->a:Lcom/punchbox/v4/d/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/r;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v0}, Lcom/punchbox/v4/d/p;->b(Lcom/punchbox/v4/d/p;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/v4/d/r;->a:Lcom/punchbox/v4/d/p;

    invoke-static {v1}, Lcom/punchbox/v4/d/p;->a(Lcom/punchbox/v4/d/p;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
