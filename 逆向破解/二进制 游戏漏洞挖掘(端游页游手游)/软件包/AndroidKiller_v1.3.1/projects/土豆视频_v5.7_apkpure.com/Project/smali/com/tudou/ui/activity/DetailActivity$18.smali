.class Lcom/tudou/ui/activity/DetailActivity$18;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/youku/util/IAlert;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->onBtnCacheClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 3530
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$18;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNegative(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 3543
    const-string/jumbo v1, "\u5c06\u5728wifi\u7f51\u7edc\u81ea\u52a8\u5f00\u59cb\u7f13\u5b58"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 3544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3545
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.videodetail"

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$18;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/DetailActivity;->access$1500(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3546
    const-string v1, "bundle.current.vid"

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$18;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$18;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/DetailActivity;->access$1600(Lcom/tudou/ui/activity/DetailActivity;)Lcom/tudou/detail/widget/DetailSubPanel;

    move-result-object v1

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CACHE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v1, v2, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    .line 3548
    return-void
.end method

.method public alertPositive(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 3533
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3534
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.videodetail"

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$18;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/DetailActivity;->access$1500(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3535
    const-string v1, "bundle.current.vid"

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$18;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$18;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/DetailActivity;->access$1600(Lcom/tudou/ui/activity/DetailActivity;)Lcom/tudou/detail/widget/DetailSubPanel;

    move-result-object v1

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CACHE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v1, v2, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V

    .line 3537
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 3538
    const v1, 0x7f0d0115

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 3539
    return-void
.end method
