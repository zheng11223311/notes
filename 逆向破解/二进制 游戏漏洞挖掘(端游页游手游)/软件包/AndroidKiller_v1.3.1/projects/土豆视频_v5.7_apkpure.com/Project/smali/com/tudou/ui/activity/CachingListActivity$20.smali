.class Lcom/tudou/ui/activity/CachingListActivity$20;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity;->show2G3GDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$20;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/CachingListActivity$20;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$20;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 708
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 709
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$20;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$200(Lcom/tudou/ui/activity/CachingListActivity;)V

    .line 710
    return-void
.end method
