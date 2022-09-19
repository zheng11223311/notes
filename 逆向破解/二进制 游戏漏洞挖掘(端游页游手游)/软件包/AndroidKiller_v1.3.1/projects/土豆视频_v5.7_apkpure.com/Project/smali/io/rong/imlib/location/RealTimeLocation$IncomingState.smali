.class Lio/rong/imlib/location/RealTimeLocation$IncomingState;
.super Lio/rong/imlib/location/stateMachine/State;
.source "RealTimeLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Lio/rong/imlib/location/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocation$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/location/RealTimeLocation;
    .param p2, "x1"    # Lio/rong/imlib/location/RealTimeLocation$1;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocation$IncomingState;-><init>(Lio/rong/imlib/location/RealTimeLocation;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocation;->access$3500(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 381
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_INCOMING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$802(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 382
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$900(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V

    .line 383
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incoming enter : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 391
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 393
    :pswitch_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$3600(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/model/Message;

    move-result-object v8

    .line 394
    .local v8, "message":Lio/rong/imlib/model/Message;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1102(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1100(Lio/rong/imlib/location/RealTimeLocation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2600(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3700(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 399
    .end local v8    # "message":Lio/rong/imlib/model/Message;
    :pswitch_2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 400
    .local v9, "userId":Ljava/lang/String;
    new-instance v10, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v10, v1, v9}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 401
    .local v10, "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v10}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 402
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1, v9}, Lio/rong/imlib/location/RealTimeLocation;->access$2500(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    .end local v9    # "userId":Ljava/lang/String;
    .end local v10    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 409
    .local v6, "id":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->stop()V

    .line 411
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 413
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$3800(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 415
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3900(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 420
    .end local v6    # "id":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 421
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4000(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 424
    :pswitch_5
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 425
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4100(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 428
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lio/rong/imlib/model/Message;

    move-object v8, v1

    check-cast v8, Lio/rong/imlib/model/Message;

    .line 429
    .restart local v8    # "message":Lio/rong/imlib/model/Message;
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    .line 432
    .restart local v6    # "id":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 433
    new-instance v10, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v10, v1, v6}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 434
    .restart local v10    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v10}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 435
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$2500(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 441
    .end local v10    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :goto_1
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    move-object v7, v0

    .line 442
    check-cast v7, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;

    .line 443
    .local v7, "coor":Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v7}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v7}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v1 .. v6}, Lio/rong/imlib/location/RealTimeLocation;->access$4200(Lio/rong/imlib/location/RealTimeLocation;DDLjava/lang/String;)V

    goto/16 :goto_0

    .line 439
    .end local v7    # "coor":Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->update()V

    goto :goto_1

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
