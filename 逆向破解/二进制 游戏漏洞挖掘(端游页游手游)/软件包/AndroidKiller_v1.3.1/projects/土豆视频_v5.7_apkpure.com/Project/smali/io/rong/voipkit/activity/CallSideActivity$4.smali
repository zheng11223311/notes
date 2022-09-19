.class Lio/rong/voipkit/activity/CallSideActivity$4;
.super Ljava/lang/Object;
.source "CallSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CallSideActivity;->delayTimesFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/CallSideActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CallSideActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lio/rong/voipkit/activity/CallSideActivity$4;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 237
    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$4;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity$4;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v3}, Lio/rong/voipkit/activity/CallSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_called_not_accept:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 239
    new-instance v1, Lio/rong/voipkit/message/VoIPFinishMessage;

    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$4;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v2, v2, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lio/rong/voipkit/message/VoIPFinishMessage;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    invoke-virtual {v1, v5}, Lio/rong/voipkit/message/VoIPFinishMessage;->setFinish_state(I)V

    .line 241
    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$4;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v2, v1}, Lio/rong/voipkit/activity/CallSideActivity;->sendMsg(Lio/rong/imlib/model/MessageContent;)V

    .line 244
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$4;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v2}, Lio/rong/voipkit/activity/CallSideActivity;->finish()V

    .line 249
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
