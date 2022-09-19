.class Lcom/tudou/ui/fragment/BuyFilmFragment$1;
.super Landroid/os/Handler;
.source "BuyFilmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/BuyFilmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x0

    .line 117
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 119
    :sswitch_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$000(Lcom/tudou/ui/fragment/BuyFilmFragment;)Lcom/youku/vo/CaptchaResult;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/CaptchaResult;->captcha_img_url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 120
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$000(Lcom/tudou/ui/fragment/BuyFilmFragment;)Lcom/youku/vo/CaptchaResult;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/CaptchaResult;->captcha_img_url:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$100(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$100(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020a20

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 127
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/PayTicketsResult;

    .line 128
    .local v0, "result":Lcom/youku/vo/PayTicketsResult;
    iget-object v2, v0, Lcom/youku/vo/PayTicketsResult;->msg:Ljava/lang/String;

    const-string v3, "failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, v0, Lcom/youku/vo/PayTicketsResult;->desc:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/youku/vo/PayTicketsResult;->desc:Ljava/lang/String;

    const-string v3, "\u9a8c\u8bc1\u7801\u9a8c\u8bc1\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const-string v2, "\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$200(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_1
    iget v2, v0, Lcom/youku/vo/PayTicketsResult;->original_error:I

    sparse-switch v2, :sswitch_data_1

    .line 149
    const-string v2, "\u89c2\u5f71\u5238\u6d88\u8d39\u5931\u8d25"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :sswitch_3
    const-string v2, "\u89c2\u5f71\u5238\u672a\u5230\u4f7f\u7528\u65e5\u671f"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :sswitch_4
    const-string v2, "\u89c2\u5f71\u5238\u5df2\u5931\u6548"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :sswitch_5
    const-string v2, "\u89c2\u5f71\u5238\u672a\u7ed1\u5b9a\u8be5\u8282\u76ee"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :sswitch_6
    const-string v2, "\u89c2\u5f71\u5238\u4e0d\u5b58\u5728"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :sswitch_7
    const-string v2, "\u89c2\u5f71\u5238\u72b6\u6001\u5f02\u5e38"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_2
    const-string v2, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$300()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 156
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tudou/ui/fragment/BuyFilmFragment$1$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$1$1;-><init>(Lcom/tudou/ui/fragment/BuyFilmFragment$1;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 168
    .end local v0    # "result":Lcom/youku/vo/PayTicketsResult;
    :sswitch_8
    const-string v2, "\u89c2\u5f71\u5238\u6d88\u8d39\u5931\u8d25"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$200(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$400()Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;->onFail()V

    goto/16 :goto_0

    .line 173
    :sswitch_9
    const-string v2, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$300()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 175
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tudou/ui/fragment/BuyFilmFragment$1$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$1$2;-><init>(Lcom/tudou/ui/fragment/BuyFilmFragment$1;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 186
    :sswitch_a
    const-string v2, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$400()Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;->onFail()V

    goto/16 :goto_0

    .line 190
    :sswitch_b
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 191
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$700(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/MyTicketsListResult;

    .line 193
    .local v1, "results":Lcom/youku/vo/MyTicketsListResult;
    iget-object v2, v1, Lcom/youku/vo/MyTicketsListResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$802(Lcom/tudou/ui/fragment/BuyFilmFragment;Z)Z

    .line 195
    iget-object v3, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    iget-object v2, v1, Lcom/youku/vo/MyTicketsListResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/MyTicketsListResult$Result;

    iget-object v2, v2, Lcom/youku/vo/MyTicketsListResult$Result;->code:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$902(Lcom/tudou/ui/fragment/BuyFilmFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    iget-object v3, v1, Lcom/youku/vo/MyTicketsListResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1002(Lcom/tudou/ui/fragment/BuyFilmFragment;I)I

    .line 197
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    iget-object v3, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1100(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1000(Lcom/tudou/ui/fragment/BuyFilmFragment;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1200(Lcom/tudou/ui/fragment/BuyFilmFragment;Landroid/widget/TextView;I)V

    .line 201
    :goto_2
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v2, :cond_5

    .line 202
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$800(Lcom/tudou/ui/fragment/BuyFilmFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 203
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2, v5}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1300(Lcom/tudou/ui/fragment/BuyFilmFragment;I)V

    goto/16 :goto_0

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2, v5}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$802(Lcom/tudou/ui/fragment/BuyFilmFragment;Z)Z

    goto :goto_2

    .line 205
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2, v5}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1400(Lcom/tudou/ui/fragment/BuyFilmFragment;I)V

    goto/16 :goto_0

    .line 208
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2, v5}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1500(Lcom/tudou/ui/fragment/BuyFilmFragment;I)V

    goto/16 :goto_0

    .line 212
    .end local v1    # "results":Lcom/youku/vo/MyTicketsListResult;
    :sswitch_c
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 213
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$700(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2, v5}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$802(Lcom/tudou/ui/fragment/BuyFilmFragment;Z)Z

    .line 215
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v2, :cond_6

    .line 216
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2, v5}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1400(Lcom/tudou/ui/fragment/BuyFilmFragment;I)V

    goto/16 :goto_0

    .line 218
    :cond_6
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2, v5}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$1500(Lcom/tudou/ui/fragment/BuyFilmFragment;I)V

    goto/16 :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_8
        0x44c -> :sswitch_9
        0x44d -> :sswitch_a
        0x30d41 -> :sswitch_b
        0x30d42 -> :sswitch_c
    .end sparse-switch

    .line 132
    :sswitch_data_1
    .sparse-switch
        -0x152 -> :sswitch_7
        -0x151 -> :sswitch_6
        -0x145 -> :sswitch_5
        -0x143 -> :sswitch_4
        -0x142 -> :sswitch_3
    .end sparse-switch
.end method
