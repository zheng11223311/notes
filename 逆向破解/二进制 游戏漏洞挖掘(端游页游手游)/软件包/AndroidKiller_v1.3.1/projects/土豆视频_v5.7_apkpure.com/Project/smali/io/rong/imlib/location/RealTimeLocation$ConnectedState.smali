.class Lio/rong/imlib/location/RealTimeLocation$ConnectedState;
.super Lio/rong/imlib/location/stateMachine/State;
.source "RealTimeLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Lio/rong/imlib/location/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocation$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/location/RealTimeLocation;
    .param p2, "x1"    # Lio/rong/imlib/location/RealTimeLocation$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;-><init>(Lio/rong/imlib/location/RealTimeLocation;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_CONNECTED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$802(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 458
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$900(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V

    .line 459
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocation;->access$2100(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 460
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected enter : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 465
    const/4 v6, 0x0

    .line 466
    .local v6, "id":Ljava/lang/String;
    const/4 v8, 0x0

    .line 467
    .local v8, "message":Lio/rong/imlib/model/Message;
    const/4 v0, 0x0

    .line 469
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 538
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 471
    :pswitch_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_START_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 472
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4400(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_JOIN_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 476
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4500(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto :goto_0

    .line 479
    :pswitch_3
    new-instance v9, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v9, v1, v6}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 480
    .local v9, "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v9}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 482
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 483
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$2500(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 490
    .end local v9    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->stop()V

    .line 493
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$3800(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 496
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1400(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4600(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 499
    :pswitch_5
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$2800(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 500
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1100(Lio/rong/imlib/location/RealTimeLocation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 501
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 502
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4700(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 504
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4800(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 508
    :pswitch_6
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$3100(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 509
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)V

    goto/16 :goto_0

    .line 512
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lio/rong/imlib/model/Message;

    move-object v8, v1

    check-cast v8, Lio/rong/imlib/model/Message;

    .line 513
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    .line 514
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 515
    new-instance v9, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v9, v1, v6}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 516
    .restart local v9    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v9}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 517
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$2500(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 523
    .end local v9    # "watcher":Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :goto_1
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    move-object v7, v0

    .line 524
    check-cast v7, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;

    .line 525
    .local v7, "coor":Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v7}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v7}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v1 .. v6}, Lio/rong/imlib/location/RealTimeLocation;->access$4200(Lio/rong/imlib/location/RealTimeLocation;DDLjava/lang/String;)V

    goto/16 :goto_0

    .line 521
    .end local v7    # "coor":Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1600(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->update()V

    goto :goto_1

    .line 528
    :pswitch_8
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 529
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4900(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 532
    :pswitch_9
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 533
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/stateMachine/State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$5000(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/stateMachine/IState;)V

    goto/16 :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
