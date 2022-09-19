.class Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;
.super Ljava/lang/Object;
.source "SubscribeUpdateStreamFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getSubLocalUpdateList([Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 639
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 614
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 616
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lcom/youku/vo/SubLocalscribeBean;

    invoke-direct {v6}, Lcom/youku/vo/SubLocalscribeBean;-><init>()V

    invoke-static {v5, v6}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubLocalscribeBean;

    .line 618
    .local v3, "localBean":Lcom/youku/vo/SubLocalscribeBean;
    iget-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/tudou/adapter/SubscribeAdapter;->setIsRec(Z)V

    .line 619
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, v3, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 620
    const/4 v7, 0x2

    iget-object v6, v3, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    invoke-virtual {v6}, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->getType()I

    move-result v6

    if-ne v7, v6, :cond_1

    iget-object v6, v3, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v6, v6, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v6, v6, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 621
    :cond_0
    iget-object v6, v3, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 622
    add-int/lit8 v2, v2, -0x1

    .line 619
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    :cond_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1102(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Z)Z

    .line 626
    new-instance v0, Lcom/youku/vo/SubscribeBean;

    invoke-direct {v0}, Lcom/youku/vo/SubscribeBean;-><init>()V

    .line 627
    .local v0, "bean":Lcom/youku/vo/SubscribeBean;
    iput-object v3, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    .line 628
    iget-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x4e71

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 630
    .local v4, "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v0    # "bean":Lcom/youku/vo/SubscribeBean;
    .end local v2    # "i":I
    .end local v3    # "localBean":Lcom/youku/vo/SubLocalscribeBean;
    :goto_1
    return-void

    .line 631
    .end local v4    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x4e72

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 633
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
