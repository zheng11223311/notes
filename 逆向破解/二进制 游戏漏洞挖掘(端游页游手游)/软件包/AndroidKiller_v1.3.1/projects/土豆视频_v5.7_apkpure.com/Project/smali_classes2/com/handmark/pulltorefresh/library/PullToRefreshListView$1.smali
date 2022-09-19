.class Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 415
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget v0, v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mState:I

    if-eq v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput v1, v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mState:I

    .line 425
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->access$100(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 427
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->access$100(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 431
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->access$100(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0
.end method
