.class Lcom/punchbox/engine/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/ae;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/af;->a:Lcom/punchbox/engine/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/punchbox/engine/af;->a:Lcom/punchbox/engine/ae;

    iget-object v0, v0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
