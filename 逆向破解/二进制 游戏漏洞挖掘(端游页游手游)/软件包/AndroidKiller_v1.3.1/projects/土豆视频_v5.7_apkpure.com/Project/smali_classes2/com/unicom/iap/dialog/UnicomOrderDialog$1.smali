.class Lcom/unicom/iap/dialog/UnicomOrderDialog$1;
.super Landroid/os/Handler;
.source "UnicomOrderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/iap/dialog/UnicomOrderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomOrderDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->access$0(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->access$0(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-virtual {v1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->access$1(Lcom/unicom/iap/dialog/UnicomOrderDialog;Landroid/content/Context;)V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->closeProgress()V

    .line 238
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->access$2(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-static {v2}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->access$3(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ba2\u8d2d\u5931\u8d25"

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 239
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->cancel()V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
