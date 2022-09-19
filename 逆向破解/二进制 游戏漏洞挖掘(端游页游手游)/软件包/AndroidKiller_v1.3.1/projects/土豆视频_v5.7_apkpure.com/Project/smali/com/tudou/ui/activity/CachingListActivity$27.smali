.class Lcom/tudou/ui/activity/CachingListActivity$27;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Lcom/tudou/ui/activity/CachingListActivity$OnAllPauseOrStartFinish;


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
    .line 866
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$27;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$27;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/CachingListActivity;->initData(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$27;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 872
    return-void
.end method
