.class Lcom/punchbox/v4/d/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/y;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/y;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/z;->a:Lcom/punchbox/v4/d/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "View"

    const-string v1, "load ad res timeout."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/z;->a:Lcom/punchbox/v4/d/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/punchbox/v4/d/y;->a(Lcom/punchbox/v4/d/y;Z)Z

    iget-object v0, p0, Lcom/punchbox/v4/d/z;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2724

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
