.class Lcom/tudou/ui/activity/CachingListActivity$5;
.super Ljava/lang/Thread;
.source "CachingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity;->allStartThread()V
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
    .line 241
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$5;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 246
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$5;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->startAllTask()V

    .line 247
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$5;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity;->onAllFinish:Lcom/tudou/ui/activity/CachingListActivity$OnAllPauseOrStartFinish;

    invoke-interface {v0}, Lcom/tudou/ui/activity/CachingListActivity$OnAllPauseOrStartFinish;->onFinish()V

    .line 248
    return-void
.end method
