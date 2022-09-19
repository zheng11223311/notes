.class Lcom/tudou/ui/fragment/NewPodcastFragment$6;
.super Ljava/lang/Object;
.source "NewPodcastFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;->inflateHeaderView(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

.field final synthetic val$listview:Landroid/widget/ListView;

.field final synthetic val$mPlaceholderView:Landroid/view/View;

.field final synthetic val$topTransparent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->val$listview:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->val$mPlaceholderView:Landroid/view/View;

    iput-object p4, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->val$topTransparent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->val$listview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->val$mPlaceholderView:Landroid/view/View;

    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->val$topTransparent:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$200(Lcom/tudou/ui/fragment/NewPodcastFragment;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V

    .line 615
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x1

    .line 569
    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_2

    .line 571
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$300(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/adapter/PodcastAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 572
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getTotalCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 574
    const-string v0, "onScroll"

    invoke-static {v0, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    invoke-virtual {v0}, Lcom/youku/vo/Page;->enPageNo()V

    .line 578
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    invoke-virtual {v0}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 582
    const-string v0, "\u81ea\u9891\u9053\u9875\u89c6\u9891\u5217\u8868\u52a0\u8f7d\u66f4\u591a"

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$400(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89c6\u9891\u5217\u8868"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {v0, v3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPodcastList(Z)V

    .line 608
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$502(Lcom/tudou/ui/fragment/NewPodcastFragment;I)I

    goto :goto_0

    .line 586
    :cond_3
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 588
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$500(Lcom/tudou/ui/fragment/NewPodcastFragment;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 589
    const-string v0, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$502(Lcom/tudou/ui/fragment/NewPodcastFragment;I)I

    goto :goto_1

    .line 594
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$300(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/adapter/PodcastAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 595
    const-string v0, "onScroll"

    invoke-static {v0, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$300(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/adapter/PodcastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v1, v1, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget v1, v1, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    if-ge v0, v1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget v1, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlistPageNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlistPageNo:I

    .line 602
    const-string v0, "\u81ea\u9891\u9053\u9875\u8c46\u5355\u5217\u8868\u52a0\u8f7d\u66f4\u591a"

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$600(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8c46\u5355\u5217\u8868"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$700(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 605
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$6;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPlayList()V

    goto/16 :goto_1
.end method
