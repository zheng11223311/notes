.class Lcom/tudou/ui/fragment/TheShowRankFragment$3;
.super Ljava/lang/Object;
.source "TheShowRankFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/TheShowRankFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
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
    .line 354
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1400(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$3;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1500(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1600(Lcom/tudou/ui/fragment/TheShowRankFragment;II)V

    .line 355
    return-void
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
    .line 360
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
