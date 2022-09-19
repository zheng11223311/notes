.class Lio/rong/voipkit/activity/CalledSideActivity$7;
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
    .line 350
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 353
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 376
    :goto_0
    return-void

    .line 355
    :pswitch_0
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v1}, Lio/rong/voipkit/activity/CalledSideActivity;->access$300(Lio/rong/voipkit/activity/CalledSideActivity;)Lio/rong/voipkit/message/VoIPCallMessage;

    move-result-object v1

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v2}, Lio/rong/voipkit/activity/CalledSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 358
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_1
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v1}, Lio/rong/voipkit/activity/CalledSideActivity;->finish()V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 365
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v1}, Lio/rong/voipkit/activity/CalledSideActivity;->access$400(Lio/rong/voipkit/activity/CalledSideActivity;)V

    goto :goto_0

    .line 368
    :pswitch_1
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v2}, Lio/rong/voipkit/activity/CalledSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_called_on_hook:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 369
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v1}, Lio/rong/voipkit/activity/CalledSideActivity;->stopCountTime()V

    .line 370
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$7;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v1}, Lio/rong/voipkit/activity/CalledSideActivity;->finish()V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x3fc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
