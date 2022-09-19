.class Lcom/tudou/ui/fragment/CachingFragment$16;
.super Ljava/lang/Object;
.source "CachingFragment.java"

# interfaces
.implements Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllClick(Z)V
    .locals 4
    .param p1, "isall"    # Z

    .prologue
    .line 607
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$1200(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 608
    .local v1, "length":I
    if-eqz p1, :cond_4

    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 610
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$1200(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$1200(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$1100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 626
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    if-eqz v2, :cond_3

    .line 627
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 628
    :cond_3
    return-void

    .line 618
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 619
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$1200(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 621
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$1200(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 618
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onDelClick()Z
    .locals 3

    .prologue
    .line 594
    const-string v0, "\u7f13\u5b58\u9875\u6b63\u5728\u7f13\u5b58\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u9875-\u6b63\u5728\u7f13\u5b58\u5220\u9664\u6309\u94ae\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 598
    :cond_0
    const v0, 0x7f0d00b1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 599
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$1400(Lcom/tudou/ui/fragment/CachingFragment;)V

    .line 602
    const/4 v0, 0x1

    goto :goto_0
.end method
