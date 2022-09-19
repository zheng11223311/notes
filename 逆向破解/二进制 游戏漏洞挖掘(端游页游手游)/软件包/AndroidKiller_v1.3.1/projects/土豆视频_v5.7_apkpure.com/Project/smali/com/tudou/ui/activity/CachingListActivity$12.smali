.class Lcom/tudou/ui/activity/CachingListActivity$12;
.super Ljava/lang/Thread;
.source "CachingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity;->deleteSelectedItems()V
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
    .line 522
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$12;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity$12;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/CachingListActivity;->access$300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$12;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/service/download/DownloadManager;->deleteArray([Ljava/lang/String;)Z

    .line 527
    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity$12;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/util/DeleteCachingItemList;->clearQueue()V

    .line 528
    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity$12;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/CachingListActivity;->initData(Ljava/lang/String;)V

    .line 529
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 530
    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity$12;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$12$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/CachingListActivity$12$1;-><init>(Lcom/tudou/ui/activity/CachingListActivity$12;)V

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/CachingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Youku"

    const-string v2, "DownloadAdapter#getView()"

    invoke-static {v1, v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
