.class Lcom/tudou/ui/fragment/SelectedListFragment$1;
.super Ljava/lang/Object;
.source "SelectedListFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SelectedListFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/SelectedListFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SelectedListFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 8
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
    const/4 v7, 0x0

    .line 168
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_2

    .line 169
    const v5, 0x7f0d02c3

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(I)V

    .line 171
    :try_start_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 172
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "cid"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "-1"

    .line 174
    :cond_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v0}, Lcom/youku/http/TudouURLContainer;->getSelectedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$302(Lcom/tudou/ui/fragment/SelectedListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$300(Lcom/tudou/ui/fragment/SelectedListFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "formatURL":Ljava/lang/String;
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "jsonStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$300(Lcom/tudou/ui/fragment/SelectedListFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    const-string v5, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 179
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$000(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 180
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5, v4}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$400(Lcom/tudou/ui/fragment/SelectedListFragment;Ljava/lang/String;)V

    .line 199
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "formatURL":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "jsonStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 182
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v2    # "formatURL":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "jsonStr":Ljava/lang/String;
    :cond_1
    const-string v5, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$000(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 184
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 185
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 186
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-virtual {v5, v6}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "formatURL":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "jsonStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const-string v5, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 191
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$000(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 192
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 193
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 194
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-virtual {v5, v6}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment$1;->this$0:Lcom/tudou/ui/fragment/SelectedListFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->initData()V

    goto :goto_0
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
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
    .line 204
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
