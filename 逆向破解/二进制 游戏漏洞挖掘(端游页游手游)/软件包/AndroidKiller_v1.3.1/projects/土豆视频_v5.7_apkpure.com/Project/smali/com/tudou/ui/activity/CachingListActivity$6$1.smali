.class Lcom/tudou/ui/activity/CachingListActivity$6$1;
.super Ljava/lang/Thread;
.source "CachingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/activity/CachingListActivity$6;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity$6;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$6$1;->this$1:Lcom/tudou/ui/activity/CachingListActivity$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 280
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6$1;->this$1:Lcom/tudou/ui/activity/CachingListActivity$6;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->pauseAllTask(Z)V

    .line 281
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6$1;->this$1:Lcom/tudou/ui/activity/CachingListActivity$6;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity;->onAllFinish:Lcom/tudou/ui/activity/CachingListActivity$OnAllPauseOrStartFinish;

    invoke-interface {v0}, Lcom/tudou/ui/activity/CachingListActivity$OnAllPauseOrStartFinish;->onFinish()V

    .line 282
    return-void
.end method
