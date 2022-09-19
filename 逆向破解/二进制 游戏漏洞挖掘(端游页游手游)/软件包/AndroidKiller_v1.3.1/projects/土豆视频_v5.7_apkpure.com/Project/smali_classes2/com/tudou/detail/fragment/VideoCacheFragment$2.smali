.class Lcom/tudou/detail/fragment/VideoCacheFragment$2;
.super Ljava/lang/Object;
.source "VideoCacheFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment;->updateUI(Lcom/tudou/detail/vo/VideoList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    .line 164
    .local v1, "tDownloadMgr":Lcom/tudou/service/download/DownloadManager;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video;

    .line 165
    .local v2, "video":Lcom/tudou/detail/vo/Video;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;

    .line 166
    .local v0, "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    iget v3, v2, Lcom/tudou/detail/vo/Video;->mLimit:I

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoCacheFragment;->isNotLimitCache(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tudou/service/download/DownloadManager;->isDownloadCreating(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v3, v2}, Lcom/tudou/detail/fragment/VideoCacheFragment;->startCacheVideo(Lcom/tudou/detail/vo/Video;)V

    .line 169
    invoke-virtual {v0, v2}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->syncDownloadState(Lcom/tudou/detail/vo/Video;)V

    .line 176
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setBtnCacheManagerText()V

    .line 177
    return-void

    .line 170
    :cond_1
    iget-object v3, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tudou/service/download/DownloadManager;->isDownloadCreating(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string v3, "\u64cd\u4f5c\u592a\u5feb\u5566"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d00e5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method
