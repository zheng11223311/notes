.class Lcom/tudou/ui/fragment/CachingFolderFragment$16;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Lcom/tudou/service/download/OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;
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
    .line 687
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/CachingFolderFragment$16$1;

    invoke-direct {v1, p0, p1}, Lcom/tudou/ui/fragment/CachingFolderFragment$16$1;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment$16;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onFinish(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 691
    return-void
.end method
