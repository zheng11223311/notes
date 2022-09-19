.class Lcom/punchbox/v4/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/a;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/b;->a:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/v4/d/b;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v0}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/v4/d/a;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/b;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v0}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/v4/d/a;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/b;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v0}, Lcom/punchbox/v4/d/a;->b(Lcom/punchbox/v4/d/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2718

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v0, p0, Lcom/punchbox/v4/d/b;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v0}, Lcom/punchbox/v4/d/a;->b(Lcom/punchbox/v4/d/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2719

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/b;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v0}, Lcom/punchbox/v4/d/a;->b(Lcom/punchbox/v4/d/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271a

    iget-object v2, p0, Lcom/punchbox/v4/d/b;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2}, Lcom/punchbox/v4/d/a;->c(Lcom/punchbox/v4/d/a;)Lcom/punchbox/engine/PreDownloadData;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
