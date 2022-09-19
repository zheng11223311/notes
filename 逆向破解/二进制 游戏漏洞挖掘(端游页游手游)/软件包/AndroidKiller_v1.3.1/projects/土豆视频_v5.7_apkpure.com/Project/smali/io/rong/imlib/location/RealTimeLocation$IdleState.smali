.class Lio/rong/imlib/location/RealTimeLocation$IdleState;
.super Lio/rong/imlib/location/stateMachine/State;
.source "RealTimeLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Lio/rong/imlib/location/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocation$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/location/RealTimeLocation;
    .param p2, "x1"    # Lio/rong/imlib/location/RealTimeLocation$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocation$IdleState;-><init>(Lio/rong/imlib/location/RealTimeLocation;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$802(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 279
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$900(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V

    .line 280
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idle enter : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 288
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 316
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 290
    :sswitch_0
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v3}, Lio/rong/imlib/location/RealTimeLocation;->access$1000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 291
    .local v1, "message":Lio/rong/imlib/model/Message;
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1102(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v3}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1100(Lio/rong/imlib/location/RealTimeLocation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v3}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 294
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1400(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1500(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 297
    .end local v1    # "message":Lio/rong/imlib/model/Message;
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, "id":Ljava/lang/String;
    new-instance v2, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v2, v3, v0}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 299
    .local v2, "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 300
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v3}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v3}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1800(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 305
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lio/rong/imlib/model/Message;

    move-object v1, v3

    check-cast v1, Lio/rong/imlib/model/Message;

    .line 306
    .restart local v1    # "message":Lio/rong/imlib/model/Message;
    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "id":Ljava/lang/String;
    new-instance v2, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v2, v3, v0}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 308
    .restart local v2    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 309
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v3}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v3}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$IdleState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1900(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method
