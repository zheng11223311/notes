.class Lcom/tudou/ui/fragment/AttentionFragment$1;
.super Ljava/lang/Object;
.source "AttentionFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/AttentionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AttentionFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1, v5}, Lcom/tudou/ui/fragment/AttentionFragment;->access$002(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 122
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$100(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$100(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$200(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/AttentionFragment;->access$202(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 134
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$200(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/AttentionAdapter;->setEditMode(Z)V

    .line 135
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$300(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$400(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$500(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u6211\u7684\u8ba2\u9605"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v1, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v1, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v1, v1, Lcom/youku/vo/Podcast$Users;->total:I

    if-lez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$500(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u7684\u8ba2\u9605("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v3, v3, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v3, v3, Lcom/youku/vo/Podcast$Users;->total:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$600(Lcom/tudou/ui/fragment/AttentionFragment;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1, v5}, Lcom/tudou/ui/fragment/AttentionFragment;->access$702(Lcom/tudou/ui/fragment/AttentionFragment;I)I

    .line 147
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 153
    :goto_1
    const-string v1, "\u8ba2\u9605\u5217\u8868\u4e0b\u62c9\u5237\u65b0"

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$800(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ba2\u9605\u5217\u8868\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->iattention:Lcom/tudou/service/attention/IAttention;

    new-instance v2, Lcom/tudou/ui/fragment/AttentionFragment$1$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/AttentionFragment$1$1;-><init>(Lcom/tudou/ui/fragment/AttentionFragment$1;)V

    invoke-interface {v1, v4, v2}, Lcom/tudou/service/attention/IAttention;->getAttentionListByAtt(ILcom/tudou/service/attention/IAttention$GetListCallBack;)V

    .line 186
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto :goto_1
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    const-string v1, "\u6211\u7684\u8ba2\u9605\u9891\u9053\u5217\u8868\u52a0\u8f7d\u66f4\u591a"

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1000(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6211\u7684\u8ba2\u9605\u9891\u9053\u5217\u8868\u52a0\u8f7d"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 195
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AttentionFragment;->access$000(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onScroll"

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 208
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 203
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$1;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->access$704(Lcom/tudou/ui/fragment/AttentionFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/AttentionFragment;->excuegetAttentionList(I)V

    goto :goto_0
.end method
