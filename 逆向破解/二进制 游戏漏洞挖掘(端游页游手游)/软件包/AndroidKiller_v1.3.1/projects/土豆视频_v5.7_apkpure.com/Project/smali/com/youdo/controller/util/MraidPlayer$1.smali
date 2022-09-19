.class Lcom/youdo/controller/util/MraidPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/common/util/XYDTimer$EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/controller/util/MraidPlayer;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/controller/util/MraidPlayer;


# direct methods
.method constructor <init>(Lcom/youdo/controller/util/MraidPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/util/MraidPlayer$1;->this$0:Lcom/youdo/controller/util/MraidPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(I)V
    .locals 0

    return-void
.end method

.method public onTimerComplete()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/util/MraidPlayer$1;->this$0:Lcom/youdo/controller/util/MraidPlayer;

    invoke-static {v0}, Lcom/youdo/controller/util/MraidPlayer;->access$000(Lcom/youdo/controller/util/MraidPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/youdo/controller/util/MraidPlayer$1;->this$0:Lcom/youdo/controller/util/MraidPlayer;

    invoke-virtual {v1}, Lcom/youdo/controller/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/youdo/controller/util/MraidPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/youdo/controller/util/MraidPlayer$1$1;-><init>(Lcom/youdo/controller/util/MraidPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
