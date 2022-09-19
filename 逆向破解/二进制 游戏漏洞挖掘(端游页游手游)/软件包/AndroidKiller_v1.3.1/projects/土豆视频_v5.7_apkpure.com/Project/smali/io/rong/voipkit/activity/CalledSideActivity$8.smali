.class Lio/rong/voipkit/activity/CalledSideActivity$8;
.super Ljava/lang/Object;
.source "CalledSideActivity.java"

# interfaces
.implements Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CalledSideActivity;->registerReceiveMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/CalledSideActivity;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CalledSideActivity;J)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iput-wide p2, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/model/Message;I)Z
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "left"    # I

    .prologue
    .line 385
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v2, v3, :cond_1

    .line 386
    const-string v2, "afff"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==============================push=====message====type======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lio/rong/voipkit/message/VoIPCallMessage;

    if-eqz v2, :cond_2

    .line 388
    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    check-cast v2, Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-static {v3, v2}, Lio/rong/voipkit/activity/CalledSideActivity;->access$302(Lio/rong/voipkit/activity/CalledSideActivity;Lio/rong/voipkit/message/VoIPCallMessage;)Lio/rong/voipkit/message/VoIPCallMessage;

    .line 389
    const-string v2, "fff"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========================push=================voipcall==============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v4}, Lio/rong/voipkit/activity/CalledSideActivity;->access$300(Lio/rong/voipkit/activity/CalledSideActivity;)Lio/rong/voipkit/message/VoIPCallMessage;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/voipkit/message/VoIPCallMessage;->getFromId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v2}, Lio/rong/voipkit/activity/CalledSideActivity;->access$300(Lio/rong/voipkit/activity/CalledSideActivity;)Lio/rong/voipkit/message/VoIPCallMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v2}, Lio/rong/voipkit/activity/CalledSideActivity;->access$300(Lio/rong/voipkit/activity/CalledSideActivity;)Lio/rong/voipkit/message/VoIPCallMessage;

    move-result-object v2

    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v3}, Lio/rong/voipkit/activity/CalledSideActivity;->access$500(Lio/rong/voipkit/activity/CalledSideActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setFromUserName(Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v2, v2, Lio/rong/voipkit/activity/CalledSideActivity;->doPushRecevieHandler:Landroid/os/Handler;

    const/16 v3, 0x3fc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 394
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lio/rong/voipkit/message/VoIPFinishMessage;

    if-eqz v2, :cond_1

    .line 395
    const-string v2, "fff"

    const-string v3, "=========================push==================voipfinish=============="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 397
    .local v0, "endTime":J
    iget-wide v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->val$startTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 398
    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$8;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v2, v2, Lio/rong/voipkit/activity/CalledSideActivity;->doPushRecevieHandler:Landroid/os/Handler;

    const/16 v3, 0x3fd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
