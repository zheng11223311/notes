.class Lcom/tudou/ui/fragment/VIPCardFragment$1;
.super Landroid/os/Handler;
.source "VIPCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/VIPCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VIPCardFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VIPCardFragment;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 47
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 49
    :sswitch_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$000(Lcom/tudou/ui/fragment/VIPCardFragment;)Lcom/youku/vo/CaptchaResult;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/CaptchaResult;->captcha_img_url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$200(Lcom/tudou/ui/fragment/VIPCardFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$000(Lcom/tudou/ui/fragment/VIPCardFragment;)Lcom/youku/vo/CaptchaResult;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/CaptchaResult;->captcha_img_url:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$100(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 55
    :sswitch_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$100(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020a20

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 58
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/VIPCardResult;

    .line 59
    .local v1, "result":Lcom/youku/vo/VIPCardResult;
    iget-object v2, v1, Lcom/youku/vo/VIPCardResult;->msg:Ljava/lang/String;

    const-string v3, "failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, v1, Lcom/youku/vo/VIPCardResult;->desc:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/youku/vo/VIPCardResult;->desc:Ljava/lang/String;

    const-string v3, "\u9a8c\u8bc1\u7801\u9a8c\u8bc1\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$400(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    iget-object v2, v1, Lcom/youku/vo/VIPCardResult;->msg:Ljava/lang/String;

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u6fc0\u6d3b\u6210\u529f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sput-boolean v4, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 90
    sput-boolean v4, Lcom/tudou/ui/fragment/VipBuyFragment;->mRefreshKey:Z

    .line 91
    sput-boolean v4, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRefreshKey:Z

    .line 93
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$500(Lcom/tudou/ui/fragment/VIPCardFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$600(Lcom/tudou/ui/fragment/VIPCardFragment;)V

    goto/16 :goto_0

    .line 63
    :cond_3
    iget v2, v1, Lcom/youku/vo/VIPCardResult;->original_error:I

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 80
    :sswitch_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u4f1a\u5458\u5361\u6fc0\u6d3b\u5931\u8d25"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :sswitch_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u4f1a\u5458\u5361\u6fc0\u6d3b\u5931\u8d25"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    :sswitch_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u4f1a\u5458\u5361\u6fc0\u6d3b\u5931\u8d25"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 71
    :sswitch_6
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u4f1a\u5458\u5361\u5df2\u88ab\u4f7f\u7528\u8fc7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 74
    :sswitch_7
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u4f1a\u5458\u5361\u5df2\u8fc7\u671f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :sswitch_8
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u4f1a\u5458\u5361\u4e0d\u5b58\u5728"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "result":Lcom/youku/vo/VIPCardResult;
    :sswitch_9
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u4f1a\u5458\u5361\u6fc0\u6d3b\u5931\u8d25"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$400(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment$1;->this$0:Lcom/tudou/ui/fragment/VIPCardFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VIPCardFragment;->access$600(Lcom/tudou/ui/fragment/VIPCardFragment;)V

    goto/16 :goto_0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_9
    .end sparse-switch

    .line 63
    :sswitch_data_1
    .sparse-switch
        -0x14c -> :sswitch_3
        -0x14a -> :sswitch_8
        -0x149 -> :sswitch_7
        -0x148 -> :sswitch_6
        -0x65 -> :sswitch_5
        -0x64 -> :sswitch_4
    .end sparse-switch
.end method
