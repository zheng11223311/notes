.class Lio/rong/voipkit/activity/CalledSideActivity$4$1;
.super Ljava/lang/Object;
.source "CalledSideActivity.java"

# interfaces
.implements Lio/rong/voiplib/NativeObject$AcceptVoIPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CalledSideActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/voipkit/activity/CalledSideActivity$4;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CalledSideActivity$4;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$4$1;->this$1:Lio/rong/voipkit/activity/CalledSideActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorcode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$4$1;->this$1:Lio/rong/voipkit/activity/CalledSideActivity$4;

    iget-object v0, v0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iput-boolean v2, v0, Lio/rong/voipkit/activity/CalledSideActivity;->isVoIPSuccess:Z

    .line 188
    const-string/jumbo v0, "voip"

    const-string v1, "===========acceptVoIP=====================java enter OnError====="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$4$1;->this$1:Lio/rong/voipkit/activity/CalledSideActivity$4;

    iget-object v0, v0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v0, v0, Lio/rong/voipkit/activity/CalledSideActivity;->connectedHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    return-void
.end method

.method public OnSuccess()V
    .locals 3

    .prologue
    .line 180
    const-string/jumbo v1, "voip"

    const-string v2, "==============acceptVoIP=======java enter OnSuccess==================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$4$1;->this$1:Lio/rong/voipkit/activity/CalledSideActivity$4;

    iget-object v1, v1, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/rong/voipkit/activity/CalledSideActivity;->isVoIPSuccess:Z

    .line 182
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$4$1;->this$1:Lio/rong/voipkit/activity/CalledSideActivity$4;

    iget-object v1, v1, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/CalledSideActivity;->acceptVoIPHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$4$1;->this$1:Lio/rong/voipkit/activity/CalledSideActivity$4;

    iget-object v1, v1, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/CalledSideActivity;->acceptVoIPHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method
