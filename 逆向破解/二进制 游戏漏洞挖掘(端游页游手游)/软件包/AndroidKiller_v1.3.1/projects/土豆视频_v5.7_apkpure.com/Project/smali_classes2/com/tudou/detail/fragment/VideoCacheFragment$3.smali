.class Lcom/tudou/detail/fragment/VideoCacheFragment$3;
.super Lcom/tudou/service/download/OnPreparedCallback;
.source "VideoCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment;->startCacheInternal(Lcom/tudou/detail/vo/Video;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

.field final synthetic val$v:Lcom/tudou/detail/vo/Video;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/tudou/detail/vo/Video;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$3;->val$v:Lcom/tudou/detail/vo/Video;

    invoke-direct {p0}, Lcom/tudou/service/download/OnPreparedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneFailed(Ljava/lang/String;)V
    .locals 7
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOneFailed(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onOneFailed"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$400(Lcom/tudou/detail/fragment/VideoCacheFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 241
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 242
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$400(Lcom/tudou/detail/fragment/VideoCacheFragment;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 243
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;

    .line 244
    .local v1, "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    iget-object v4, v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    iget-object v4, v4, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    iget-object v4, v4, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$3;->val$v:Lcom/tudou/detail/vo/Video;

    iget-object v5, v5, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
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

    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$3;->val$v:Lcom/tudou/detail/vo/Video;

    iget-object v6, v6, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v4, v1, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->video:Lcom/tudou/detail/vo/Video;

    invoke-virtual {v1, v4}, Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;->syncDownloadState(Lcom/tudou/detail/vo/Video;)V

    .line 241
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "holder":Lcom/tudou/detail/adapter/VideoCacheVideoListAdapter$PlaylistItemHolder;
    .end local v3    # "item":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onOnePrepared(Ljava/lang/String;)V
    .locals 2
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOnePrepared(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOnePrepared"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onfinish(Z)V
    .locals 2
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 226
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onfinish"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method
