.class Lcom/tudou/ui/fragment/CachingFolderFragment$16$1;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment$16;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CachingFolderFragment$16;

.field final synthetic val$info:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment$16;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$16$1;->this$1:Lcom/tudou/ui/fragment/CachingFolderFragment$16;

    iput-object p2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$16$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$16$1;->this$1:Lcom/tudou/ui/fragment/CachingFolderFragment$16;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFolderFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-boolean v0, v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$16$1;->this$1:Lcom/tudou/ui/fragment/CachingFolderFragment$16;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFolderFragment$16;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$16$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->setUpdate(Lcom/tudou/service/download/DownloadInfo;)V

    .line 703
    :cond_0
    return-void
.end method
