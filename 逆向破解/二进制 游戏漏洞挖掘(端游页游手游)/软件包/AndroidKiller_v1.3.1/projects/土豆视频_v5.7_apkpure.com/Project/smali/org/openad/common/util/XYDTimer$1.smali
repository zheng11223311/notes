.class Lorg/openad/common/util/XYDTimer$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openad/common/util/XYDTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openad/common/util/XYDTimer;


# direct methods
.method constructor <init>(Lorg/openad/common/util/XYDTimer;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-static {v0}, Lorg/openad/common/util/XYDTimer;->access$000(Lorg/openad/common/util/XYDTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-static {v0}, Lorg/openad/common/util/XYDTimer;->access$100(Lorg/openad/common/util/XYDTimer;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-static {v0}, Lorg/openad/common/util/XYDTimer;->access$110(Lorg/openad/common/util/XYDTimer;)I

    :goto_1
    iget-object v0, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-static {v0}, Lorg/openad/common/util/XYDTimer;->access$200(Lorg/openad/common/util/XYDTimer;)Lorg/openad/common/util/XYDTimer$EventHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-static {v1}, Lorg/openad/common/util/XYDTimer;->access$300(Lorg/openad/common/util/XYDTimer;)I

    move-result v1

    iget-object v2, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-static {v2}, Lorg/openad/common/util/XYDTimer;->access$100(Lorg/openad/common/util/XYDTimer;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/openad/common/util/XYDTimer$EventHandler;->onTimer(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-virtual {v0}, Lorg/openad/common/util/XYDTimer;->stop()V

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer$1;->this$0:Lorg/openad/common/util/XYDTimer;

    invoke-static {v0}, Lorg/openad/common/util/XYDTimer;->access$200(Lorg/openad/common/util/XYDTimer;)Lorg/openad/common/util/XYDTimer$EventHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/openad/common/util/XYDTimer$EventHandler;->onTimerComplete()V

    goto :goto_1
.end method
