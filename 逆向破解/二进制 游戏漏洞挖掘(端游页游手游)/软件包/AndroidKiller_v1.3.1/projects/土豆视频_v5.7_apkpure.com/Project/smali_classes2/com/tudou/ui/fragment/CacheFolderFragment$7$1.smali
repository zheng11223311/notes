.class Lcom/tudou/ui/fragment/CacheFolderFragment$7$1;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Lcom/youku/util/IAlert;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$7;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment$7;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$7$1;->this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNegative(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$7$1;->this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$7;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment$7;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$7$1;->this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$7;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFolderFragment$7;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$700(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->excuegetVideoDetail(Ljava/lang/String;)V

    .line 411
    const-string v0, "\u5c06\u5728wifi\u7f51\u7edc\u81ea\u52a8\u5f00\u59cb\u7f13\u5b58"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public alertPositive(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$7$1;->this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$7;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment$7;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$7$1;->this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$7;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFolderFragment$7;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$700(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->excuegetVideoDetail(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 405
    const v0, 0x7f0d0115

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 406
    return-void
.end method
