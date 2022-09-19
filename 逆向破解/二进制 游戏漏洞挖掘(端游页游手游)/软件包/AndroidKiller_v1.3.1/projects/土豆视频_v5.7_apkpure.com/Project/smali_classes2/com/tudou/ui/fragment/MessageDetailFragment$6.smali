.class Lcom/tudou/ui/fragment/MessageDetailFragment$6;
.super Ljava/lang/Object;
.source "MessageDetailFragment.java"

# interfaces
.implements Lcom/youku/util/IMessageFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageDetailFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

.field final synthetic val$item:Lcom/youku/vo/MessageDetail$MessageItem;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageDetailFragment;Lcom/youku/vo/MessageDetail$MessageItem;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->val$item:Lcom/youku/vo/MessageDetail$MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 292
    const-string v0, "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 278
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->val$item:Lcom/youku/vo/MessageDetail$MessageItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->val$item:Lcom/youku/vo/MessageDetail$MessageItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$900(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$200(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/tudou/adapter/MessageDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/MessageDetailAdapter;->notifyDataSetChanged()V

    .line 285
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$100(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setSelection(I)V

    .line 286
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refreshList:Z

    .line 287
    return-void
.end method
