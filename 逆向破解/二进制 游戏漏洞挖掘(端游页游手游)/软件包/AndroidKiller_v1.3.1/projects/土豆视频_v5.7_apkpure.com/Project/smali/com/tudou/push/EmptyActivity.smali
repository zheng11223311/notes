.class public Lcom/tudou/push/EmptyActivity;
.super Landroid/app/Activity;
.source "EmptyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    const-string v4, "pushtest"

    const-string v5, "emptyactivity\u542f\u52a8"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/tudou/push/EmptyActivity;->requestWindowFeature(I)Z

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 23
    const v4, 0x7f0d02c3

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 24
    invoke-virtual {p0}, Lcom/tudou/push/EmptyActivity;->finish()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/push/EmptyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 29
    .local v1, "i":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 30
    .local v3, "newintent":Landroid/content/Intent;
    const-string v4, "action"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    const-string v4, "PushMsg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/tudou/push/PushMsg;

    .line 32
    .local v2, "msg":Lcom/tudou/push/PushMsg;
    const-string v4, "DOWNLOAD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    iget-object v4, v2, Lcom/tudou/push/PushMsg;->mid:Ljava/lang/String;

    iget v5, v2, Lcom/tudou/push/PushMsg;->type:I

    const-string v6, "DOWNLOAD"

    invoke-static {v4, v5, v6}, Lcom/tudou/push/PushReceiver;->notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "newintent":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 35
    .restart local v3    # "newintent":Landroid/content/Intent;
    const-string v4, "PushMsg"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 36
    const-string v4, "from"

    const-string v5, "push"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v4, "action"

    const-string v5, "action"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-class v4, Lcom/tudou/service/download/DownloadService;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    const-string v4, "create"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v4, "videoId"

    iget-object v5, v2, Lcom/tudou/push/PushMsg;->itemcode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v4, "videoName"

    iget-object v5, v2, Lcom/tudou/push/PushMsg;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p0, v3}, Lcom/tudou/push/EmptyActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    invoke-virtual {p0}, Lcom/tudou/push/EmptyActivity;->finish()V

    goto :goto_0

    .line 42
    :cond_3
    const-string v4, "PLAY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 43
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "newintent":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 44
    .restart local v3    # "newintent":Landroid/content/Intent;
    const-class v4, Lcom/tudou/push/StartActivityService;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v4, "PushMsg"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 46
    const-string v4, "from"

    const-string v5, "push"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v4, "action"

    const-string v5, "action"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 48
    :cond_4
    const-string v4, "CHAT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "newintent":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 50
    .restart local v3    # "newintent":Landroid/content/Intent;
    const-class v4, Lcom/tudou/push/StartActivityService;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    const-string v4, "from"

    const-string v5, "push"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v4, "PushMsg"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    const-string v4, "chat_info"

    const-string v5, "chat_info"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 54
    const-string v4, "action"

    const-string v5, "action"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
