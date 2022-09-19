.class Lcom/tudou/ui/activity/CachingListActivity$26;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/CachingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllClick(Z)V
    .locals 4
    .param p1, "isall"    # Z

    .prologue
    .line 843
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 844
    .local v1, "length":I
    if-eqz p1, :cond_3

    .line 845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 846
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 848
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    .line 845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1400(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/widget/PageBottomDeleteLayout;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 862
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 863
    return-void

    .line 854
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 855
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 857
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 854
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onDelClick()Z
    .locals 3

    .prologue
    .line 829
    const-string/jumbo v0, "\u7f13\u5b58\u9875\u6b63\u5728\u7f13\u5b58\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7f13\u5b58\u9875-\u6b63\u5728\u7f13\u5b58\u5220\u9664\u6309\u94ae\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 833
    :cond_0
    const v0, 0x7f0d00b1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 834
    const/4 v0, 0x0

    .line 838
    :goto_0
    return v0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$26;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$1200(Lcom/tudou/ui/activity/CachingListActivity;)V

    .line 838
    const/4 v0, 0x1

    goto :goto_0
.end method
