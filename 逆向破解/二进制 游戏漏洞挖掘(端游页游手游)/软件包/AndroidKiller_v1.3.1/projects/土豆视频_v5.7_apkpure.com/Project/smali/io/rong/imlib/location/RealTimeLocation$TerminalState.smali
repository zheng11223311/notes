.class Lio/rong/imlib/location/RealTimeLocation$TerminalState;
.super Lio/rong/imlib/location/stateMachine/State;
.source "RealTimeLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TerminalState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Lio/rong/imlib/location/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocation$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/location/RealTimeLocation;
    .param p2, "x1"    # Lio/rong/imlib/location/RealTimeLocation$1;

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocation$TerminalState;-><init>(Lio/rong/imlib/location/RealTimeLocation;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 547
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminal enter : current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 549
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3500(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 550
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 551
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 552
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 553
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->stop()V

    goto :goto_0

    .line 556
    :cond_0
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 558
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;>;"
    :cond_1
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 563
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 570
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 565
    :pswitch_0
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$TerminalState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$2300(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$5200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
