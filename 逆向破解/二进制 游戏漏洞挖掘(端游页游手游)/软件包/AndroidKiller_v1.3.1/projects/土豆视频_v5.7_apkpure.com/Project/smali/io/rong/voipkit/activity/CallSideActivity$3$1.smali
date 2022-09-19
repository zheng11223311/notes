.class Lio/rong/voipkit/activity/CallSideActivity$3$1;
.super Ljava/lang/Object;
.source "CallSideActivity.java"

# interfaces
.implements Lio/rong/voiplib/NativeObject$StartVoIPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CallSideActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/voipkit/activity/CallSideActivity$3;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CallSideActivity$3;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorcode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string/jumbo v1, "void"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============java enter OnError======================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lio/rong/voipkit/activity/CallSideActivity;->isVoIPSuccess:Z

    .line 198
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity;->connectedHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 200
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 201
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity;->connectedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method public OnSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "remoteTransferPort"    # Ljava/lang/String;
    .param p4, "remoteControlPort"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string/jumbo v1, "voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===============java enter OnSuccess==============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/rong/voipkit/activity/CallSideActivity;->isVoIPSuccess:Z

    .line 181
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iput-object p1, v1, Lio/rong/voipkit/activity/CallSideActivity;->sessionId:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iput-object p2, v1, Lio/rong/voipkit/activity/CallSideActivity;->remoteIp:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lio/rong/voipkit/activity/CallSideActivity;->remotePort:I

    .line 184
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity;->connectedHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 186
    .local v9, "msg":Landroid/os/Message;
    new-instance v0, Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v5, v1, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-static {v1}, Lio/rong/voipkit/activity/CallSideActivity;->access$300(Lio/rong/voipkit/activity/CallSideActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v7, v1, Lio/rong/voipkit/activity/CallSideActivity;->mySelfId:Ljava/lang/String;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-static {v1}, Lio/rong/voipkit/activity/CallSideActivity;->access$400(Lio/rong/voipkit/activity/CallSideActivity;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lio/rong/voipkit/message/VoIPCallMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v0, "vcm":Lio/rong/voipkit/message/VoIPCallMessage;
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    const/4 v1, 0x0

    iput v1, v9, Landroid/os/Message;->what:I

    .line 190
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$3;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity;->connectedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method
