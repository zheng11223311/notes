.class Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;
.super Ljava/lang/Object;
.source "HistoryEpisodeFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 476
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v5, 0x0

    .line 435
    if-nez p2, :cond_0

    .line 452
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$1100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u5267\u96c6\u8bb0\u5f55\u52a0\u8f7d\u66f4\u591a"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u5267\u96c6\u8bb0\u5f55\u52a0\u8f7d\u66f4\u591a"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 463
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$900(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 465
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$1000(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$1002(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;I)I

    .line 466
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$902(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;Z)Z

    .line 467
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$1000(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$400(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$1200(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;II)V

    goto :goto_0
.end method
