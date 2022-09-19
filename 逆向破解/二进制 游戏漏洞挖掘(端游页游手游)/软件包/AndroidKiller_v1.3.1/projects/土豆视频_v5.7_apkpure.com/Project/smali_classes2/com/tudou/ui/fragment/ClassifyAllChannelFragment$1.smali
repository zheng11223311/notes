.class Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;
.super Landroid/os/Handler;
.source "ClassifyAllChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v2, 0x7f0d02c3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 209
    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2715

    if-eq v0, v1, :cond_1

    .line 210
    const-string v0, "ClassifyAllChannelFragment"

    const-string v1, "page:----13"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 214
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x186a3

    if-ne v0, v1, :cond_12

    .line 215
    const-string v0, "ClassifyAllChannelFragment"

    const-string v1, "page:----14"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_2
    :goto_1
    return-void

    .line 90
    :sswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/ChannelFliterBean;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$002(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Lcom/youku/vo/ChannelFliterBean;)Lcom/youku/vo/ChannelFliterBean;

    .line 92
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    .line 94
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    .line 96
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    goto :goto_0

    .line 100
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_0

    .line 103
    :sswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    goto :goto_0

    .line 107
    :sswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/youku/vo/ChannelFilterVideos;

    .line 108
    .local v8, "temp":Lcom/youku/vo/ChannelFilterVideos;
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 110
    .local v7, "page":I
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-eqz v8, :cond_3

    iget-object v0, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    if-eq v7, v10, :cond_9

    .line 115
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$800(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    if-eq v7, v10, :cond_c

    .line 138
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    iget-object v1, v8, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_5
    if-ne v7, v10, :cond_d

    .line 147
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 162
    :goto_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne v7, v10, :cond_7

    .line 163
    :cond_6
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "1"

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/SkipInfo;->image_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 165
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    new-instance v0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1400(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-direct/range {v0 .. v5}, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;Lcom/youku/ui/YoukuFragment;)V

    invoke-static {v6, v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$902(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 172
    :goto_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 178
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I

    move-result v0

    if-ne v0, v10, :cond_8

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0, v10}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1602(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Z)Z

    goto/16 :goto_0

    .line 121
    :cond_9
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 125
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->ONLY_TEXT:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 129
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    .line 130
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 132
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_1

    .line 142
    :cond_c
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0, v8}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$502(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Lcom/youku/vo/ChannelFilterVideos;)Lcom/youku/vo/ChannelFilterVideos;

    goto/16 :goto_2

    .line 151
    :cond_d
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 158
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 169
    :cond_e
    const-string v0, "ClassifyAllChannelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v9, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    new-instance v0, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1400(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v4

    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/tudou/adapter/ClassifyAllChannelThreeAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;ZLcom/youku/ui/YoukuFragment;)V

    invoke-static {v9, v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$902(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    goto/16 :goto_4

    .line 189
    .end local v7    # "page":I
    .end local v8    # "temp":Lcom/youku/vo/ChannelFilterVideos;
    :sswitch_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I

    move-result v0

    if-le v0, v10, :cond_f

    .line 190
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1510(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I

    .line 192
    :cond_f
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 193
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 194
    const v0, 0x7f0d0210

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 196
    :cond_10
    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 198
    :cond_11
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->TEXT_AND_BUT:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 199
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    .line 200
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 202
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 203
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 220
    :cond_12
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    const-string v0, "ClassifyAllChannelFragment"

    const-string v1, "page:----15"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto/16 :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_3
        0x2717 -> :sswitch_4
        0x186a3 -> :sswitch_0
        0x186a4 -> :sswitch_1
    .end sparse-switch
.end method
