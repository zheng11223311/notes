.class Lio/rong/voipkit/activity/CalledSideActivity$3;
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
    .line 153
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$3;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$3;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v1}, Lio/rong/voipkit/activity/CalledSideActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$3;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v1}, Lio/rong/voipkit/activity/CalledSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "info":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$3;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$3;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v2}, Lio/rong/voipkit/activity/CalledSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_exit_calling:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$3;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-virtual {v2}, Lio/rong/voipkit/activity/CalledSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_yes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/rong/voipkit/activity/CalledSideActivity$3$1;

    invoke-direct {v3, p0}, Lio/rong/voipkit/activity/CalledSideActivity$3$1;-><init>(Lio/rong/voipkit/activity/CalledSideActivity$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 168
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    return-void
.end method
