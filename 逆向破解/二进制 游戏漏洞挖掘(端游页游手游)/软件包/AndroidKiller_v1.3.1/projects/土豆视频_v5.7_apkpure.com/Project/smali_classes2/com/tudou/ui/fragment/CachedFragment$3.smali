.class Lcom/tudou/ui/fragment/CachedFragment$3;
.super Ljava/lang/Thread;
.source "CachedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachedFragment;->deleteSelectedItems()V
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
    .line 345
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 349
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v5, "temps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v6

    array-length v4, v6

    .line 351
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 352
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachedFragment;->access$400(Lcom/tudou/ui/fragment/CachedFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 353
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachedFragment;->access$400(Lcom/tudou/ui/fragment/CachedFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 354
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 356
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 361
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v3    # "j":I
    :cond_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachedFragment;->access$700(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/tudou/service/download/DownloadManager;->deleteDownloadeds(Ljava/util/ArrayList;)Z

    .line 362
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachedFragment;->access$200(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteAbleItemList;->clearQueue()V

    .line 363
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/tudou/ui/fragment/CachedFragment;->access$000(Lcom/tudou/ui/fragment/CachedFragment;Z)V

    .line 364
    const/4 v6, 0x1

    sput-boolean v6, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 365
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/CachedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lcom/tudou/ui/fragment/CachedFragment$3$1;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/CachedFragment$3$1;-><init>(Lcom/tudou/ui/fragment/CachedFragment$3;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1    # "i":I
    .end local v4    # "length":I
    .end local v5    # "temps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :goto_2
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Youku"

    const-string v7, "DownloadAdapter#getView()"

    invoke-static {v6, v7, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
