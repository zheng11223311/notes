.class Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;
.super Landroid/os/Handler;
.source "UnicomUnsubscribeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    .line 268
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->closeProgress()V

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->access$0(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-virtual {v1}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->access$1(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;Landroid/content/Context;)V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, "strarray":[Ljava/lang/String;
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->access$0(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)Landroid/widget/TextView;

    move-result-object v0

    aget-object v2, v6, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->access$2(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    move-result-object v0

    aget-object v2, v6, v1

    aget-object v3, v6, v3

    const/4 v4, 0x0

    .line 284
    const/4 v5, 0x4

    .line 283
    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 285
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->dismiss()V

    goto :goto_0

    .line 288
    .end local v6    # "strarray":[Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->access$0(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;->this$0:Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->access$0(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
