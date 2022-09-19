.class Lcom/tudou/ui/fragment/FavouriteVedioFragment$3;
.super Ljava/lang/Object;
.source "FavouriteVedioFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/FavouriteVedioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$3;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPull(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p2, "direction"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method

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
    .line 381
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$3;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iget-boolean v0, v0, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$3;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    .line 386
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$3;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/FavouriteVedioAdapter;->clearSelected()V

    .line 387
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$3;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->bottom_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_1
    sget-object v0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    goto :goto_0
.end method

.method public onRelease(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p2, "direction"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
