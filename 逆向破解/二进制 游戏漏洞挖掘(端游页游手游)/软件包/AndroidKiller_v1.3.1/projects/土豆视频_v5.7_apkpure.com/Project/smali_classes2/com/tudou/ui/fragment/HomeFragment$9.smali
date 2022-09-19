.class Lcom/tudou/ui/fragment/HomeFragment$9;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->excuteNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$9;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 787
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 739
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "str":Ljava/lang/String;
    new-instance v3, Lcom/youku/http/ParseJson;

    invoke-direct {v3, v4}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 741
    .local v3, "parsejson":Lcom/youku/http/ParseJson;
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify====="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {v3}, Lcom/youku/http/ParseJson;->parseNotify()Lcom/youku/vo/Notifications;

    move-result-object v1

    .line 743
    .local v1, "notify":Lcom/youku/vo/Notifications;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 744
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment$9;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 745
    if-eqz v1, :cond_0

    .line 746
    iget-object v5, v1, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    if-nez v5, :cond_1

    .line 783
    .end local v1    # "notify":Lcom/youku/vo/Notifications;
    .end local v3    # "parsejson":Lcom/youku/http/ParseJson;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 749
    .restart local v1    # "notify":Lcom/youku/vo/Notifications;
    .restart local v3    # "parsejson":Lcom/youku/http/ParseJson;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    iget-object v5, v1, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    if-nez v5, :cond_2

    .line 750
    const-string v5, "notifyId"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v2

    .line 751
    .local v2, "notifyId":I
    iget-object v5, v1, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    iget v5, v5, Lcom/youku/vo/Notifications$Sys_notify;->id:I

    if-eq v2, v5, :cond_0

    .line 768
    .end local v2    # "notifyId":I
    :cond_2
    const/16 v5, 0xfa0

    iput v5, v0, Landroid/os/Message;->what:I

    .line 769
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 770
    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment$9;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "notify":Lcom/youku/vo/Notifications;
    .end local v3    # "parsejson":Lcom/youku/http/ParseJson;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 777
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 778
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment$9;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 779
    const/16 v5, 0xfa1

    iput v5, v0, Landroid/os/Message;->what:I

    .line 781
    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment$9;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
