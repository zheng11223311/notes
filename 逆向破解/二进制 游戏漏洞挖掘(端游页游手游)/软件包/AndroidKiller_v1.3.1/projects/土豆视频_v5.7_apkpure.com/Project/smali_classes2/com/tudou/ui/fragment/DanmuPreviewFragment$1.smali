.class Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;
.super Landroid/os/Handler;
.source "DanmuPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DanmuPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 68
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$100(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$200(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$100(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/DanmuListResult;

    iget-object v0, v0, Lcom/youku/vo/DanmuListResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$100(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 76
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$400(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/tudou/adapter/DanmuPreviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$100(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "\u6570\u636e\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto/16 :goto_0

    .line 102
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$200(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$100(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$100(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$200(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$400(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/tudou/adapter/DanmuPreviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->notifyDataSetChanged()V

    .line 106
    :cond_5
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$100(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 110
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
