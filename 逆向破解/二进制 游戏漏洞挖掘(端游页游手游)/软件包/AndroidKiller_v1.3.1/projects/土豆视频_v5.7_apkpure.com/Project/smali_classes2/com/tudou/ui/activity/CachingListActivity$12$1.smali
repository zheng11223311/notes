.class Lcom/tudou/ui/activity/CachingListActivity$12$1;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/activity/CachingListActivity$12;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity$12;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$12$1;->this$1:Lcom/tudou/ui/activity/CachingListActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$12$1;->this$1:Lcom/tudou/ui/activity/CachingListActivity$12;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity$12;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/CachingListActivity;->setEditable(Z)V

    .line 534
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$12$1;->this$1:Lcom/tudou/ui/activity/CachingListActivity$12;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity$12;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x6e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 536
    return-void
.end method
