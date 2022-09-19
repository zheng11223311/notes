.class Lcom/tudou/ui/fragment/RowPieceTableFragment$5;
.super Ljava/lang/Object;
.source "RowPieceTableFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/RowPieceTableFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$5;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

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
    .line 262
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$5;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$5;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$900(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$1000(Lcom/tudou/ui/fragment/RowPieceTableFragment;Ljava/lang/String;)V

    .line 263
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
    .line 269
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
