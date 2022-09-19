.class public Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;
.super Landroid/os/Handler;
.source "GiftPayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/GiftPayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/GiftPayFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/GiftPayFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/GiftPayFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget-object v9, p0, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/ui/fragment/GiftPayFragment;

    .line 109
    .local v3, "giftPayFragment":Lcom/tudou/ui/fragment/GiftPayFragment;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-nez v9, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/GiftOrderBean;

    .line 115
    .local v0, "bean":Lcom/youku/vo/GiftOrderBean;
    invoke-static {}, Lcom/tudou/alipay/PayManager;->getInstance()Lcom/tudou/alipay/PayManager;

    move-result-object v9

    iget-object v10, v0, Lcom/youku/vo/GiftOrderBean;->msg:Lcom/youku/vo/GiftOrderBean$Data;

    iget-object v10, v10, Lcom/youku/vo/GiftOrderBean$Data;->channelResponse:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v9, v10, v11, p0}, Lcom/tudou/alipay/PayManager;->performGiftAlipay(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0

    .line 118
    .end local v0    # "bean":Lcom/youku/vo/GiftOrderBean;
    :pswitch_1
    const-string v9, "\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5!"

    invoke-static {v9}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 119
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$000(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v9, 0x5

    const-wide/16 v10, 0x9c4

    invoke-virtual {p0, v9, v10, v11}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    :pswitch_3
    invoke-virtual {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 128
    :pswitch_4
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$100(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/youku/vo/GiftBean$Data$PresentItem;

    move-result-object v9

    iget-object v5, v9, Lcom/youku/vo/GiftBean$Data$PresentItem;->popularity:Ljava/lang/String;

    .line 129
    .local v5, "popularity":Ljava/lang/String;
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "giftNumStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    mul-long v6, v10, v12

    .line 131
    .local v6, "pop":J
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$300(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$400(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/youku/widget/GiftPaySuccessView;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/youku/widget/GiftPaySuccessView;->show(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 135
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "giftNumStr":Ljava/lang/String;
    .end local v5    # "popularity":Ljava/lang/String;
    .end local v6    # "pop":J
    :pswitch_5
    const/4 v9, 0x1

    sput-boolean v9, Lcom/tudou/ui/fragment/GiftFragment;->isNeedRefresh:Z

    .line 136
    invoke-virtual {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 139
    :pswitch_6
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 140
    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 141
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$500(Lcom/tudou/ui/fragment/GiftPayFragment;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 142
    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 145
    :cond_2
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "str":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 147
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 149
    const/4 v9, 0x7

    const-wide/16 v10, 0x64

    invoke-virtual {p0, v9, v10, v11}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 151
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 152
    .local v4, "num":I
    const/16 v9, 0x3e8

    if-eq v4, v9, :cond_0

    .line 154
    add-int/lit8 v4, v4, 0x1

    .line 155
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 157
    const/4 v9, 0x7

    const-wide/16 v10, 0x64

    invoke-virtual {p0, v9, v10, v11}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 162
    .end local v4    # "num":I
    .end local v8    # "str":Ljava/lang/String;
    :pswitch_7
    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 163
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 164
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$500(Lcom/tudou/ui/fragment/GiftPayFragment;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 165
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 168
    :cond_4
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 169
    .restart local v8    # "str":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 170
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 172
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 173
    .restart local v4    # "num":I
    const/4 v9, 0x1

    if-eq v4, v9, :cond_0

    .line 175
    add-int/lit8 v4, v4, -0x1

    .line 176
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-static {v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 178
    const/16 v9, 0x8

    const-wide/16 v10, 0x64

    invoke-virtual {p0, v9, v10, v11}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
