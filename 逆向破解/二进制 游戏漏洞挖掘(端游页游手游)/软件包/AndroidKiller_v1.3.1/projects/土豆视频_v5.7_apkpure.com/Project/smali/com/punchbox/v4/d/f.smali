.class Lcom/punchbox/v4/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/a;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/f;->a:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/f;->a:Lcom/punchbox/v4/d/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/punchbox/v4/d/f;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v0}, Lcom/punchbox/v4/d/a;->b(Lcom/punchbox/v4/d/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2719

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
