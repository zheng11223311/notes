.class Lcom/tudou/ui/fragment/HistoryWholeFragment$4;
.super Ljava/lang/Object;
.source "HistoryWholeFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HistoryWholeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryWholeFragment;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

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
    .line 405
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v5, 0x0

    .line 361
    if-nez p2, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$800(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$600(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u5168\u90e8\u8bb0\u5f55\u52a0\u8f7d\u66f4\u591a"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u5168\u90e8\u8bb0\u5f55\u52a0\u8f7d\u66f4\u591a"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 391
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$700(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 393
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$302(Lcom/tudou/ui/fragment/HistoryWholeFragment;I)I

    .line 394
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$702(Lcom/tudou/ui/fragment/HistoryWholeFragment;Z)Z

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPageNo==========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$900(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$1000(Lcom/tudou/ui/fragment/HistoryWholeFragment;II)V

    goto :goto_0
.end method
