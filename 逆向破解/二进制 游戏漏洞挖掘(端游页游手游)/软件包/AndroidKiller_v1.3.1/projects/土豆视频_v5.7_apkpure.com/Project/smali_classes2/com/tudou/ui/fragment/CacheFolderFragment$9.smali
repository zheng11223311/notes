.class Lcom/tudou/ui/fragment/CacheFolderFragment$9;
.super Ljava/lang/Thread;
.source "CacheFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;->deleteSelectedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 456
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v5, "temps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v6

    array-length v3, v6

    .line 458
    .local v3, "len":I
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 459
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 460
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 461
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 462
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 464
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 459
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    .end local v2    # "j":I
    :cond_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$900(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/tudou/service/download/DownloadManager;->deleteDownloadeds(Ljava/util/ArrayList;)Z

    .line 469
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteCachingItemList;->clearQueue()V

    .line 470
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$1000(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    .line 471
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lcom/tudou/ui/fragment/CacheFolderFragment$9$1;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/CacheFolderFragment$9$1;-><init>(Lcom/tudou/ui/fragment/CacheFolderFragment$9;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method
