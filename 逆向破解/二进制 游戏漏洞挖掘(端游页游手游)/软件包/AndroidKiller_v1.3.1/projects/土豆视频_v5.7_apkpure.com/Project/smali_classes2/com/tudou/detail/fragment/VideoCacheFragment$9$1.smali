.class Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;
.super Ljava/lang/Object;
.source "VideoCacheFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment$9;->onFinish(Lcom/tudou/service/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/fragment/VideoCacheFragment$9;

.field final synthetic val$info:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCacheFragment$9;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->this$1:Lcom/tudou/detail/fragment/VideoCacheFragment$9;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 448
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onfinish"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->this$1:Lcom/tudou/detail/fragment/VideoCacheFragment$9;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoCacheFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$1000(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 450
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->this$1:Lcom/tudou/detail/fragment/VideoCacheFragment$9;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoCacheFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v4}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setBtnCacheManagerText()V

    .line 451
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->this$1:Lcom/tudou/detail/fragment/VideoCacheFragment$9;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoCacheFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$400(Lcom/tudou/detail/fragment/VideoCacheFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 452
    .local v0, "count":I
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onfinish notify count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 454
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->this$1:Lcom/tudou/detail/fragment/VideoCacheFragment$9;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoCacheFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$400(Lcom/tudou/detail/fragment/VideoCacheFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 455
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;

    .line 456
    .local v1, "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    iget-object v6, v6, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v4, v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    iget-object v4, v4, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    iget-object v4, v4, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 458
    iget-object v4, v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    invoke-virtual {v1, v4}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->syncDownloadState(Lcom/tudou/detail/vo/Video;)V

    .line 453
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "count":I
    .end local v1    # "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;->this$1:Lcom/tudou/detail/fragment/VideoCacheFragment$9;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoCacheFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$1100(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->invalidateDiskProgress()V

    .line 463
    return-void
.end method
