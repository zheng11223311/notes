.class Lcom/tudou/ui/fragment/CachingFragment$7;
.super Ljava/lang/Object;
.source "CachingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFragment;->show2G3GDialogOpen(Lcom/tudou/service/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFragment;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;

.field final synthetic val$info:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment;Lcom/youku/widget/TudouDialog;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->val$dialog:Lcom/youku/widget/TudouDialog;

    iput-object p3, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 500
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$1300(Lcom/tudou/ui/fragment/CachingFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CachingFragment;->access$1302(Lcom/tudou/ui/fragment/CachingFragment;Z)Z

    .line 502
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$400(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->startDownload(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CachingFragment;->access$1302(Lcom/tudou/ui/fragment/CachingFragment;Z)Z

    .line 505
    :cond_0
    return-void
.end method
