.class Lcom/tudou/ui/fragment/MessageDetailFragment$3;
.super Landroid/os/Handler;
.source "MessageDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 141
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 142
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$100(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 143
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$200(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/tudou/adapter/MessageDetailAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$200(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/tudou/adapter/MessageDetailAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/adapter/MessageDetailAdapter;->notifyDataSetChanged()V

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$100(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setSelection(I)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$400(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    const v2, 0x7f0d0210

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 156
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$200(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/tudou/adapter/MessageDetailAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$200(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/tudou/adapter/MessageDetailAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/adapter/MessageDetailAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$100(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$500(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/widget/HintView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/widget/HintView;->dismiss()V

    .line 163
    new-instance v1, Lcom/youku/vo/MessageDetail;

    invoke-direct {v1}, Lcom/youku/vo/MessageDetail;-><init>()V

    .line 164
    .local v1, "msgd":Lcom/youku/vo/MessageDetail;
    new-instance v0, Lcom/youku/vo/MessageDetail$MessageItem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/youku/vo/MessageDetail$MessageItem;-><init>(Lcom/youku/vo/MessageDetail;)V

    .line 165
    .local v0, "item":Lcom/youku/vo/MessageDetail$MessageItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/MessageDetail$MessageItem;->addTime:Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$600(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/widget/EditTextForMeizu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/widget/EditTextForMeizu;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/MessageDetail$MessageItem;->content:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/MessageDetail$MessageItem;->senderId:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/MessageDetail$MessageItem;->senderpic:Ljava/lang/String;

    .line 169
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/MessageDetail$MessageItem;->privatemsgid:Ljava/lang/String;

    .line 170
    const-string v2, "success"

    iput-object v2, v0, Lcom/youku/vo/MessageDetail$MessageItem;->sendState:Ljava/lang/String;

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "private"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/MessageDetail$MessageItem;->privatemsgid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 173
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$200(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/tudou/adapter/MessageDetailAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$200(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/tudou/adapter/MessageDetailAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/adapter/MessageDetailAdapter;->notifyDataSetChanged()V

    .line 176
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$100(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setSelection(I)V

    .line 177
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$600(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/widget/EditTextForMeizu;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/youku/widget/EditTextForMeizu;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$700(Lcom/tudou/ui/fragment/MessageDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 181
    .end local v0    # "item":Lcom/youku/vo/MessageDetail$MessageItem;
    .end local v1    # "msgd":Lcom/youku/vo/MessageDetail;
    :pswitch_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$700(Lcom/tudou/ui/fragment/MessageDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 182
    const-string v2, "\u53d1\u9001\u5931\u8d25"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
