.class Lcom/tudou/ui/fragment/MessageCheckedFragment$2;
.super Landroid/os/Handler;
.source "MessageCheckedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageCheckedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 144
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 145
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    sget-object v2, Lcom/youku/util/MessageManager$Type;->CHECKED:Lcom/youku/util/MessageManager$Type;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MessageAdapter;->setType(Lcom/youku/util/MessageManager$Type;)I

    move-result v0

    .line 148
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$300(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 153
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->checks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/MessageCheckedFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget v2, v2, Lcom/youku/util/MessageManager;->currentCheckNo:I

    if-lt v1, v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$500(Lcom/tudou/ui/fragment/MessageCheckedFragment;Z)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$400(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    goto :goto_1

    .line 159
    .end local v0    # "count":I
    :pswitch_1
    const-string v1, "MessageCheckedFragment"

    const-string v2, "\u5ba1\u6838\u4fe1\u606f \u83b7\u53d6\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$000(Lcom/tudou/ui/fragment/MessageCheckedFragment;)I

    move-result v1

    if-le v1, v3, :cond_2

    .line 161
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$010(Lcom/tudou/ui/fragment/MessageCheckedFragment;)I

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$000(Lcom/tudou/ui/fragment/MessageCheckedFragment;)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->checks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$600(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    const v1, 0x7f0d0210

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    sget-object v2, Lcom/youku/util/MessageManager$Type;->CHECKED:Lcom/youku/util/MessageManager$Type;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MessageAdapter;->setType(Lcom/youku/util/MessageManager$Type;)I

    .line 170
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
