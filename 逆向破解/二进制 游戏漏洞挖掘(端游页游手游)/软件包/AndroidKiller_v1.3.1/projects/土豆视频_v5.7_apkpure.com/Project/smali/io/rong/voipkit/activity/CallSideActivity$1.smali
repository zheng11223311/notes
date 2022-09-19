.class Lio/rong/voipkit/activity/CallSideActivity$1;
.super Landroid/os/Handler;
.source "CallSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/voipkit/activity/CallSideActivity;
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
    .line 43
    iput-object p1, p0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 47
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lio/rong/voipkit/message/VoIPCallMessage;

    .line 49
    .local v1, "vcm":Lio/rong/voipkit/message/VoIPCallMessage;
    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v2, v1}, Lio/rong/voipkit/activity/CallSideActivity;->sendMsg(Lio/rong/imlib/model/MessageContent;)V

    .line 51
    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    const/4 v3, 0x2

    const/16 v4, 0x58

    invoke-virtual {v2, v3, v4}, Lio/rong/voipkit/activity/CallSideActivity;->playerRingtone(II)V

    .line 69
    .end local v1    # "vcm":Lio/rong/voipkit/message/VoIPCallMessage;
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 53
    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v2}, Lio/rong/voipkit/activity/CallSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_network_is_busy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "info":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x194

    if-ne v2, v3, :cond_2

    .line 55
    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v2}, Lio/rong/voipkit/activity/CallSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_called_is_calling:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_2
    invoke-static {}, Lio/rong/voipkit/activity/CallSideActivity;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v3}, Lio/rong/voipkit/activity/CallSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_exit_calling:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v3}, Lio/rong/voipkit/activity/CallSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_yes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lio/rong/voipkit/activity/CallSideActivity$1$1;

    invoke-direct {v4, p0}, Lio/rong/voipkit/activity/CallSideActivity$1$1;-><init>(Lio/rong/voipkit/activity/CallSideActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
