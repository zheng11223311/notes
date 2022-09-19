.class Lcom/tudou/ui/fragment/MessagePrivateFragment$1;
.super Landroid/os/Handler;
.source "MessagePrivateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessagePrivateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 53
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string v1, "MessagePrivateFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u79c1\u4fe1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$000(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    sget-object v2, Lcom/youku/util/MessageManager$Type;->PRIVATE:Lcom/youku/util/MessageManager$Type;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MessageAdapter;->setType(Lcom/youku/util/MessageManager$Type;)I

    move-result v0

    .line 59
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$100(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$000(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 64
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$300(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/youku/util/MessageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$300(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/youku/util/MessageManager;

    move-result-object v2

    iget v2, v2, Lcom/youku/util/MessageManager;->messagesTotal:I

    if-lt v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$400(Lcom/tudou/ui/fragment/MessagePrivateFragment;Z)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$200(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    goto :goto_1

    .line 69
    .end local v0    # "count":I
    :pswitch_1
    const-string v1, "MessagePrivateFragment"

    const-string v2, "\u79c1\u4eba\u4fe1\u606f \u83b7\u53d6\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$500(Lcom/tudou/ui/fragment/MessagePrivateFragment;)I

    move-result v1

    if-le v1, v4, :cond_2

    .line 71
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$510(Lcom/tudou/ui/fragment/MessagePrivateFragment;)I

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$500(Lcom/tudou/ui/fragment/MessagePrivateFragment;)I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$300(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/youku/util/MessageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$600(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    goto/16 :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    const v1, 0x7f0d0210

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$000(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$000(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    sget-object v2, Lcom/youku/util/MessageManager$Type;->PRIVATE:Lcom/youku/util/MessageManager$Type;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MessageAdapter;->setType(Lcom/youku/util/MessageManager$Type;)I

    .line 79
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$000(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
