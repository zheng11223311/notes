.class Lcom/tudou/ui/activity/CacheActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CacheActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/CacheActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CacheActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CacheActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tudou/ui/activity/CacheActivity$1;->this$0:Lcom/tudou/ui/activity/CacheActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity$1;->this$0:Lcom/tudou/ui/activity/CacheActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/CacheFragment;->refreshPage(I)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity$1;->this$0:Lcom/tudou/ui/activity/CacheActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/CacheFragment;->refreshPage(I)V

    .line 112
    iget-object v1, p0, Lcom/tudou/ui/activity/CacheActivity$1;->this$0:Lcom/tudou/ui/activity/CacheActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/CacheActivity;->cacheFragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/CacheFragment;->storeProgress()V

    goto :goto_0
.end method
