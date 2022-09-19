.class Lcom/tudou/ui/fragment/CachingFragment$5;
.super Ljava/lang/Thread;
.source "CachingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFragment;->deleteSelectedItems()V
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
    .line 365
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$5;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment$5;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFragment;->access$400(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$5;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/service/download/DownloadManager;->deleteArray([Ljava/lang/String;)Z

    .line 370
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment$5;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/util/DeleteCachingItemList;->clearQueue()V

    .line 371
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment$5;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFragment;->access$000(Lcom/tudou/ui/fragment/CachingFragment;)V

    .line 372
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 373
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment$5;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/CachingFragment$5$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/CachingFragment$5$1;-><init>(Lcom/tudou/ui/fragment/CachingFragment$5;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Youku"

    const-string v2, "DownloadAdapter#getView()"

    invoke-static {v1, v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
