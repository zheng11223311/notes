.class Lcom/tudou/ui/activity/CachingListActivity$7;
.super Ljava/lang/Thread;
.source "CachingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity;->refresh()V
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
    .line 398
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$7;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 402
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 403
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$7;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    const-string/jumbo v1, "refresh"

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/CachingListActivity;->initData(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$7;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x6e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 405
    return-void
.end method
