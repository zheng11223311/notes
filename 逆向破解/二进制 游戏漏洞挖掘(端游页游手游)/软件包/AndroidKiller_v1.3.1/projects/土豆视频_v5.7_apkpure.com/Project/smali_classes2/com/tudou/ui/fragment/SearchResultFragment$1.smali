.class Lcom/tudou/ui/fragment/SearchResultFragment$1;
.super Landroid/os/Handler;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchListView;->setVisibility(I)V

    .line 126
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 129
    :sswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDao;->correction:Lcom/youku/vo/SearchCorrection;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$200(Lcom/tudou/ui/fragment/SearchResultFragment;Lcom/youku/vo/SearchCorrection;)V

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-boolean v1, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->shala_more:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$500(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 138
    const-string v1, "liufeidazhu"

    const-string v2, "\u4e0b\u62c9\u5237\u65b0 listView.isRefreshing()"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->onRefreshComplete()V

    .line 141
    :cond_1
    sget-boolean v1, Lcom/youku/widget/SearchHeadLayout;->IMShow:Z

    if-eqz v1, :cond_5

    .line 142
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchHeadLayout;->showSoftInput(Landroid/app/Activity;)V

    .line 152
    :cond_2
    :goto_2
    const-string v1, "SearchResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.arg1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, p0, v2, v3}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$600(Lcom/tudou/ui/fragment/SearchResultFragment;Landroid/os/Handler;II)V

    .line 154
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-boolean v1, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->xiala_refresh:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$500(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 156
    const-string v1, "liufeidazhu"

    const-string v2, "\u4e0b\u62c9\u5237\u65b0 listView.isRefreshing()"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->onRefreshComplete()V

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$700(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    goto/16 :goto_0

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iput-boolean v2, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->showerrorTips:Z

    .line 133
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListViewOnScroll;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchListViewOnScroll;->setIsnoqc(Z)V

    .line 134
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$400(Lcom/tudou/ui/fragment/SearchResultFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchHeadLayout;->hideSoftInput(Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 162
    :sswitch_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iput-boolean v2, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->showerrorTips:Z

    .line 163
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListViewOnScroll;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchListViewOnScroll;->setIsnoqc(Z)V

    .line 164
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$400(Lcom/tudou/ui/fragment/SearchResultFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-boolean v1, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->shala_more:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$500(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 166
    const-string v1, "liufeidazhu"

    const-string v2, "\u4e0b\u62c9\u5237\u65b0 listView.isRefreshing()"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->onRefreshComplete()V

    .line 169
    :cond_6
    const/4 v0, 0x0

    .line 170
    .local v0, "onresume":Z
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 171
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 172
    :cond_7
    if-nez v0, :cond_8

    .line 173
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$800(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/vo/SokuPodcast;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$800(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/vo/SokuPodcast;

    move-result-object v1

    iget v1, v1, Lcom/youku/vo/SokuPodcast;->total:I

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$900(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_8

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_8

    .line 175
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1000(Lcom/tudou/ui/fragment/SearchResultFragment;Z)V

    .line 178
    :cond_8
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->setBokeData(Z)V

    .line 179
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1, p0, v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeSendMessage(Landroid/os/Handler;Z)V

    .line 180
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1100(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$900(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v5, v2, v3}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1200(Lcom/tudou/ui/fragment/SearchResultFragment;ILjava/lang/String;I)V

    .line 181
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-boolean v1, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->xiala_refresh:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$500(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 183
    const-string v1, "liufeidazhu"

    const-string v2, "\u4e0b\u62c9\u5237\u65b0 listView.isRefreshing()"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->onRefreshComplete()V

    .line 186
    :cond_9
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$700(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    goto/16 :goto_0

    .line 189
    .end local v0    # "onresume":Z
    :sswitch_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 190
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 191
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->dissFilter()V

    .line 195
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1400(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1400(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 197
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1400(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->dissFilter()V

    goto/16 :goto_0

    .line 193
    :cond_b
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->showFilter()V

    goto :goto_3

    .line 199
    :cond_c
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1400(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->showFilter()V

    goto/16 :goto_0

    .line 204
    :sswitch_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1500(Lcom/tudou/ui/fragment/SearchResultFragment;I)V

    goto/16 :goto_0

    .line 208
    :sswitch_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->isRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1500(Lcom/tudou/ui/fragment/SearchResultFragment;I)V

    goto/16 :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x22b -> :sswitch_3
        0x29a -> :sswitch_4
        0x309 -> :sswitch_2
        0x378 -> :sswitch_0
        0x3e7 -> :sswitch_1
    .end sparse-switch
.end method
