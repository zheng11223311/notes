.class Lcom/tudou/ui/activity/CachingListActivity$4;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/CachingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$4;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    const-string v0, "all"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    const v0, 0x7f0d0115

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 218
    :cond_3
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    if-nez v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$4;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CachingListActivity;->show2G3GDialog()V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$4;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$100(Lcom/tudou/ui/activity/CachingListActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$4;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$200(Lcom/tudou/ui/activity/CachingListActivity;)V

    goto :goto_0
.end method
