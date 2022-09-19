.class Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;
.super Landroid/os/Handler;
.source "UnicomSmsNumberDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    .line 385
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 389
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    :pswitch_0
    return-void

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    iget-object v0, v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_yzm:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 392
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V

    .line 393
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$1(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->closeProgress()V

    goto :goto_0

    .line 404
    :pswitch_3
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->closeProgress()V

    .line 405
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$1(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
