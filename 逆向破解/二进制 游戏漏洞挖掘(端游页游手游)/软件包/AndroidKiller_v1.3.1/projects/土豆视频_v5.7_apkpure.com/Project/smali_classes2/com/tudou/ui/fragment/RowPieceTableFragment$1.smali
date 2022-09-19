.class Lcom/tudou/ui/fragment/RowPieceTableFragment$1;
.super Landroid/os/Handler;
.source "RowPieceTableFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/RowPieceTableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$800(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V

    .line 102
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$000(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    new-instance v1, Lcom/tudou/adapter/RowPieceTableAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$200(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$300(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$400(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/vo/ClassifyScheduleItems;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$500(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tudou/adapter/RowPieceTableAdapter;-><init>(Landroid/content/Context;Lcom/tudou/ui/activity/BaseActivity;Lcom/youku/vo/ClassifyScheduleItems;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$102(Lcom/tudou/ui/fragment/RowPieceTableFragment;Lcom/tudou/adapter/RowPieceTableAdapter;)Lcom/tudou/adapter/RowPieceTableAdapter;

    .line 81
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$600(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$100(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/tudou/adapter/RowPieceTableAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$400(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/vo/ClassifyScheduleItems;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$400(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/vo/ClassifyScheduleItems;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ClassifyScheduleItems;->data:Ljava/util/List;

    if-nez v0, :cond_2

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$000(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$700(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 90
    :cond_2
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$400(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/vo/ClassifyScheduleItems;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$400(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/vo/ClassifyScheduleItems;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ClassifyScheduleItems;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 94
    const v0, 0x7f0d00b8

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
