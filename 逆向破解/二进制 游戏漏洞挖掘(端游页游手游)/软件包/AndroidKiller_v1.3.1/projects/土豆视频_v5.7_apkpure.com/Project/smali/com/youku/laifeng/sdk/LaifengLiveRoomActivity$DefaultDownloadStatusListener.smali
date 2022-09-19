.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Lcom/youku/laifeng/sdk/download/DownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDownloadStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;


# direct methods
.method private constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0

    .prologue
    .line 2643
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p2, "x1"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;

    .prologue
    .line 2643
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2647
    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadComplete[]>>>id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const-string/jumbo v1, "\u4e0b\u8f7d\u6210\u529f"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->create(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->show()V

    .line 2650
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    .line 2651
    return-void
.end method

.method public onDownloadFailed(IILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 2655
    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadFailed[]>>>id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadFailed[]>>>errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadFailed[]>>>errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    const/16 v0, 0x3ec

    if-ne p2, v0, :cond_0

    .line 2660
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u7a0d\u540e\u91cd\u8bd5"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->create(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->show()V

    .line 2663
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2664
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2665
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    .line 2669
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2670
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->showSwitcherPrev()V

    .line 2672
    :cond_2
    return-void
.end method

.method public onProgress(IJJI)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "totalBytes"    # J
    .param p4, "downloadedBytes"    # J
    .param p6, "progress"    # I

    .prologue
    .line 2676
    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress[]>>>id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress[]>>>progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2684
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2685
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->updateDownloadProgress(I)V

    .line 2687
    :cond_1
    return-void
.end method
