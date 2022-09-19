.class Lcom/tudou/ui/fragment/CachingFolderFragment$14;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;->show2G3GDialog(Lcom/tudou/service/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;

.field final synthetic val$info:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment;Lcom/youku/widget/TudouDialog;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$14;->val$dialog:Lcom/youku/widget/TudouDialog;

    iput-object p3, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$14;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$14;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 668
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 671
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$600(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$14;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->startDownload(Ljava/lang/String;)V

    .line 672
    return-void
.end method
