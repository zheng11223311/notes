.class Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;
.super Landroid/os/Handler;
.source "MyTicketsBindFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTicketsBindFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 49
    :sswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Lcom/youku/vo/CaptchaResult;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/CaptchaResult;->captcha_img_url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$200(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Lcom/youku/vo/CaptchaResult;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/CaptchaResult;->captcha_img_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$100(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 55
    :sswitch_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$100(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020a20

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 58
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/MyTicketsBindResult;

    .line 59
    .local v0, "result":Lcom/youku/vo/MyTicketsBindResult;
    iget-object v1, v0, Lcom/youku/vo/MyTicketsBindResult;->msg:Ljava/lang/String;

    const-string v2, "failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, v0, Lcom/youku/vo/MyTicketsBindResult;->desc:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/youku/vo/MyTicketsBindResult;->desc:Ljava/lang/String;

    const-string v2, "\u9a8c\u8bc1\u7801\u9a8c\u8bc1\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$400(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    iget-object v1, v0, Lcom/youku/vo/MyTicketsBindResult;->msg:Ljava/lang/String;

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a\u6210\u529f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/MyTicketsFragment;->mRefreshKey:Z

    .line 98
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$500(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    goto/16 :goto_0

    .line 63
    :cond_2
    iget v1, v0, Lcom/youku/vo/MyTicketsBindResult;->original_error:I

    sparse-switch v1, :sswitch_data_1

    .line 89
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :sswitch_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/MyTicketsBindResult;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    :sswitch_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 71
    :sswitch_5
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 74
    :sswitch_6
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u89c2\u5f71\u5238\u4e0d\u5b58\u5728"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :sswitch_7
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u89c2\u5f71\u5238\u72b6\u6001\u4e0d\u6b63\u5e38\uff08\u5df2\u4f7f\u7528\u6216\u5df2\u5e9f\u5f03\uff09"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 80
    :sswitch_8
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u89c2\u5f71\u5238\u672a\u751f\u6548"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 83
    :sswitch_9
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u89c2\u5f71\u5238\u5df2\u8fc7\u671f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 86
    :sswitch_a
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 102
    .end local v0    # "result":Lcom/youku/vo/MyTicketsBindResult;
    :sswitch_b
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$400(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_b
    .end sparse-switch

    .line 63
    :sswitch_data_1
    .sparse-switch
        -0xe0 -> :sswitch_a
        -0xdb -> :sswitch_9
        -0xda -> :sswitch_8
        -0xd9 -> :sswitch_7
        -0xd8 -> :sswitch_6
        -0x65 -> :sswitch_5
        -0x64 -> :sswitch_4
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method
