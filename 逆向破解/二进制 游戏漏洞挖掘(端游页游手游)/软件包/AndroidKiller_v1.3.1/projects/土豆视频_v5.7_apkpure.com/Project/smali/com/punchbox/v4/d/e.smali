.class Lcom/punchbox/v4/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/a;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/e;->a:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/e;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v0}, Lcom/punchbox/v4/d/a;->b(Lcom/punchbox/v4/d/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2719

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
