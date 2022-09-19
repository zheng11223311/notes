.class Lcom/tudou/ui/fragment/CachingFolderFragment$9;
.super Ljava/lang/Thread;
.source "CachingFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;->deleteSelectedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$600(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->deleteArray([Ljava/lang/String;)Z

    .line 475
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->clearQueue()V

    .line 476
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$1000(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    .line 477
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/CachingFolderFragment$9$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$9$1;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment$9;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method
