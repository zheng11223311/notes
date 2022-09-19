.class Lcom/tudou/ui/fragment/MessageCheckedFragment$1;
.super Ljava/lang/Object;
.source "MessageCheckedFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageCheckedFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

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
    .line 90
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$002(Lcom/tudou/ui/fragment/MessageCheckedFragment;I)I

    .line 96
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$100(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    .line 97
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$000(Lcom/tudou/ui/fragment/MessageCheckedFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$200(Lcom/tudou/ui/fragment/MessageCheckedFragment;I)V

    .line 98
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
    .line 103
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 105
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$012(Lcom/tudou/ui/fragment/MessageCheckedFragment;I)I

    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$000(Lcom/tudou/ui/fragment/MessageCheckedFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$200(Lcom/tudou/ui/fragment/MessageCheckedFragment;I)V

    goto :goto_0
.end method
