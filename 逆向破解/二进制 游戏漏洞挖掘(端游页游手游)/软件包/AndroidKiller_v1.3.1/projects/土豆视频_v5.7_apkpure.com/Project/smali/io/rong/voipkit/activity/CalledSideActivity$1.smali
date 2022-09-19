.class Lio/rong/voipkit/activity/CalledSideActivity$1;
.super Landroid/os/Handler;
.source "CalledSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/voipkit/activity/CalledSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/CalledSideActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CalledSideActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v0}, Lio/rong/voipkit/activity/CalledSideActivity;->access$000(Lio/rong/voipkit/activity/CalledSideActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    new-instance v1, Lio/rong/voipkit/message/VoIPAcceptMessage;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v2, v2, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lio/rong/voipkit/message/VoIPAcceptMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/rong/voipkit/activity/CalledSideActivity;->sendMsg(Lio/rong/imlib/model/MessageContent;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v0}, Lio/rong/voipkit/activity/CalledSideActivity;->access$100(Lio/rong/voipkit/activity/CalledSideActivity;)V

    .line 62
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/CalledSideActivity;->startCountTime()V

    .line 63
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/CalledSideActivity;->createVoIP()V

    .line 64
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    new-instance v1, Lio/rong/voipkit/message/VoIPAcceptMessage;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$1;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v2, v2, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lio/rong/voipkit/message/VoIPAcceptMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/rong/voipkit/activity/CalledSideActivity;->sendMessageByPushJump(Lio/rong/imlib/model/MessageContent;)V

    goto :goto_0
.end method
