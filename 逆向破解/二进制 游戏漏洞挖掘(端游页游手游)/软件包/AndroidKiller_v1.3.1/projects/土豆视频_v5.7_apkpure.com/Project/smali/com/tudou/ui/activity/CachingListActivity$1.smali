.class Lcom/tudou/ui/activity/CachingListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CachingListActivity.java"


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
    .line 90
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$1;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity$1;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/CachingListActivity;->refresh()V

    .line 101
    return-void

    .line 96
    :cond_1
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
