.class Lcom/tudou/ui/fragment/MessagePrivateFragment$2;
.super Ljava/lang/Object;
.source "MessagePrivateFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessagePrivateFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
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
    .line 132
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/MessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/MessageFragment;->setEdit(Z)V

    .line 138
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$502(Lcom/tudou/ui/fragment/MessagePrivateFragment;I)I

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$700(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$500(Lcom/tudou/ui/fragment/MessagePrivateFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$800(Lcom/tudou/ui/fragment/MessagePrivateFragment;I)V

    .line 141
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
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
    .line 146
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 148
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$512(Lcom/tudou/ui/fragment/MessagePrivateFragment;I)I

    .line 152
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$500(Lcom/tudou/ui/fragment/MessagePrivateFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$800(Lcom/tudou/ui/fragment/MessagePrivateFragment;I)V

    goto :goto_0
.end method
