.class Lcom/tudou/ui/fragment/MessageSystemFragment$1;
.super Landroid/os/Handler;
.source "MessageSystemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageSystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    const-string v1, "MessageSystemFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7cfb\u7edf\u6d88\u606f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v3, v3, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v3, v3, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$000(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    sget-object v2, Lcom/youku/util/MessageManager$Type;->SYSTEM:Lcom/youku/util/MessageManager$Type;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MessageAdapter;->setType(Lcom/youku/util/MessageManager$Type;)I

    move-result v0

    .line 55
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$100(Lcom/tudou/ui/fragment/MessageSystemFragment;)V

    .line 59
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$000(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$200(Lcom/tudou/ui/fragment/MessageSystemFragment;)V

    goto :goto_1

    .line 62
    .end local v0    # "count":I
    :pswitch_1
    const-string v1, "MessageSystemFragment"

    const-string v2, "\u7cfb\u7edf\u6d88\u606f \u83b7\u53d6\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v1, v1, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v1, v1, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$300(Lcom/tudou/ui/fragment/MessageSystemFragment;)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    const v1, 0x7f0d0210

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$000(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$000(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    sget-object v2, Lcom/youku/util/MessageManager$Type;->SYSTEM:Lcom/youku/util/MessageManager$Type;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/MessageAdapter;->setType(Lcom/youku/util/MessageManager$Type;)I

    .line 72
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$000(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
