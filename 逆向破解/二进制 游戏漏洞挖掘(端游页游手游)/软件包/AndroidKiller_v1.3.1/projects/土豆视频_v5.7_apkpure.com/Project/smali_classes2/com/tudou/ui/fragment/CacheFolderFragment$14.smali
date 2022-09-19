.class Lcom/tudou/ui/fragment/CacheFolderFragment$14;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;
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
    .line 554
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 562
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-boolean v2, v2, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$1200(Lcom/tudou/ui/fragment/CacheFolderFragment;Lcom/tudou/service/download/DownloadInfo;)V

    .line 588
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$1300(Lcom/tudou/ui/fragment/CacheFolderFragment;Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 567
    const-string v2, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3\uff0c\u65e0\u6cd5\u64ad\u653e\u7f13\u5b58\u89c6\u9891\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "download|dlVideoClick"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v2, "\u7f13\u5b58\u9875\u5df2\u7f13\u5b58\u89c6\u9891\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5b8c\u6210\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 575
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$900(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 577
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$000(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    .line 578
    const v2, 0x7f0d0126

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 581
    :cond_2
    iget v2, v1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, v1, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    mul-int/lit16 v3, v3, 0x3e8

    const v4, 0xea60

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_3

    .line 582
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 585
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$14;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
