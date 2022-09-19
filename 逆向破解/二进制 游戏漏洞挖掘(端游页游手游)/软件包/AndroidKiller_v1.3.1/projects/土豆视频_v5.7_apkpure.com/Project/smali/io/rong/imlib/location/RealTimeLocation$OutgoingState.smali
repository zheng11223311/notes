.class Lio/rong/imlib/location/RealTimeLocation$OutgoingState;
.super Lio/rong/imlib/location/stateMachine/State;
.source "RealTimeLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Lio/rong/imlib/location/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocation$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/location/RealTimeLocation;
    .param p2, "x1"    # Lio/rong/imlib/location/RealTimeLocation$1;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;-><init>(Lio/rong/imlib/location/RealTimeLocation;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_OUTGOING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$802(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 326
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$900(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V

    .line 327
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocation;->access$2100(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 328
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outgoing enter : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, "message":Lio/rong/imlib/model/Message;
    const/4 v0, 0x0

    .line 336
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 371
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    return v4

    .line 338
    :pswitch_1
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v5, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_START_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v4, v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 339
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v5, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2300(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2400(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    .line 343
    .local v2, "userId":Ljava/lang/String;
    new-instance v3, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v3, v4, v2}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 344
    .local v3, "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v3}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 346
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2500(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 349
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v5, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2600(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2700(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 352
    .end local v2    # "userId":Ljava/lang/String;
    .end local v3    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :pswitch_3
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$2800(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 353
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v5, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 357
    :pswitch_4
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$3100(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 358
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v4}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)V

    goto :goto_0

    .line 361
    :pswitch_5
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v5, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v4, v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 362
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v5, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imlib/location/RealTimeLocation;->access$3200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 365
    :pswitch_6
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v5, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v4, v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 366
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v5, p0, Lio/rong/imlib/location/RealTimeLocation$OutgoingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v5}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imlib/location/RealTimeLocation;->access$3300(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
