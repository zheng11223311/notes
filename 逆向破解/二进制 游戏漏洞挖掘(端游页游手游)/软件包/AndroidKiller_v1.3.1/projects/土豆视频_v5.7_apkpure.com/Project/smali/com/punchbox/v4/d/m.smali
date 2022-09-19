.class Lcom/punchbox/v4/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/punchbox/listener/a;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/i;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/i;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/m;->a:Lcom/punchbox/v4/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/punchbox/exception/PBException;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2712

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/v4/d/m;->a:Lcom/punchbox/v4/d/i;

    iget-object v1, v1, Lcom/punchbox/v4/d/i;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/punchbox/response/b;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2711

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/punchbox/v4/d/m;->a:Lcom/punchbox/v4/d/i;

    iget-object v1, v1, Lcom/punchbox/v4/d/i;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
