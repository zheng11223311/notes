.class Lcom/tudou/ui/fragment/CachedFragment$2;
.super Ljava/lang/Object;
.source "CachedFragment.java"

# interfaces
.implements Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachedFragment;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllClick(Z)V
    .locals 4
    .param p1, "isall"    # Z

    .prologue
    .line 322
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachedFragment;->access$400(Lcom/tudou/ui/fragment/CachedFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 323
    .local v1, "length":I
    if-eqz p1, :cond_3

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 325
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachedFragment;->access$400(Lcom/tudou/ui/fragment/CachedFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteAbleItemList;->containsItem(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachedFragment;->access$400(Lcom/tudou/ui/fragment/CachedFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteAbleItemList;->addItems(Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_1

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachedFragment;->access$500(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v3, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 334
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachedFragment;->access$600(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/adapter/CachedListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/adapter/CachedListAdapter;->notifyDataSetChanged()V

    .line 335
    return-void

    .line 331
    :cond_3
    if-lez v1, :cond_2

    .line 332
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/util/DeleteAbleItemList;->clearQueue()V

    goto :goto_2
.end method

.method public onDelClick()Z
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    const v0, 0x7f0d00b1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 312
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    .line 314
    :cond_1
    const-string v0, "\u7f13\u5b58\u9875\u7f13\u5b58\u5b8c\u6210\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5b8c\u6210\u5220\u9664\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment$2;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachedFragment;->access$300(Lcom/tudou/ui/fragment/CachedFragment;)V

    .line 317
    const/4 v0, 0x1

    goto :goto_0
.end method
