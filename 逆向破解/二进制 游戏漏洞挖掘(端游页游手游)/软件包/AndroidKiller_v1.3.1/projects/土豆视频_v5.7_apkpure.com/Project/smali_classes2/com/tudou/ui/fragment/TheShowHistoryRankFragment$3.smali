.class Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$3;
.super Ljava/lang/Object;
.source "TheShowHistoryRankFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

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
    .line 250
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$102(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;I)I

    .line 251
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 252
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$800(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V

    .line 253
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
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
    .line 257
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$800(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V

    .line 258
    return-void
.end method
