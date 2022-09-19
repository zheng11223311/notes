.class Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;
.super Ljava/lang/Object;
.source "FavouriteVedioFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


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
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
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
    .line 288
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
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
    const/4 v3, 0x1

    .line 293
    sget-boolean v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isCache:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 295
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 316
    :goto_0
    return-void

    .line 300
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$300(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 313
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 314
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$002(Lcom/tudou/ui/fragment/FavouriteVedioFragment;I)I

    .line 315
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$600(Lcom/tudou/ui/fragment/FavouriteVedioFragment;ZZ)V

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
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
    .line 320
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 322
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 366
    :goto_0
    return-void

    .line 326
    :cond_0
    const-string v0, "MyFavourite_Vedio_Scroll"

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 331
    :cond_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 336
    :cond_2
    sget-object v0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 338
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$008(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I

    .line 339
    const-string v0, "\u6536\u85cf\u9875\u6536\u85cf\u5217\u8868\u52a0\u8f7d\u66f4\u591a"

    const-class v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6211\u7684\u6536\u85cf\u9875\u9762\u6536\u85cf\u8bb0\u5f55\u52a0\u8f7d\u66f4\u591a"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$800(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$500(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/tudou/ui/activity/MyFavoriteActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$000(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I

    move-result v2

    new-instance v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;-><init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/service/favourite/IFavouriteVedio;->getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;)V

    goto :goto_0
.end method
