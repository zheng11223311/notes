.class Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;
.super Ljava/lang/Object;
.source "SubscribeUpdateStreamFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getSubscribeInfo(J)V
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
    .line 522
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 556
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    const-string v1, "\u8ba2\u9605tab\u5267\u96c6\u89c6\u9891\u6d41\u52a0\u8f7d\u5931\u8d25"

    const-class v2, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ba2\u9605tab\u5168\u90e8\u89c6\u9891\u6d41\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4e72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 566
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    return-void

    .line 561
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    const-string v1, "\u8ba2\u9605tab\u5168\u90e8\u89c6\u9891\u6d41\u52a0\u8f7d\u5931\u8d25"

    const-class v2, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ba2\u9605tab\u5168\u90e8\u89c6\u9891\u6d41\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lcom/youku/vo/SubscribeBean;

    invoke-direct {v5}, Lcom/youku/vo/SubscribeBean;-><init>()V

    invoke-static {v4, v5}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubscribeBean;

    .line 529
    .local v0, "bean":Lcom/youku/vo/SubscribeBean;
    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    iget-boolean v6, v0, Lcom/youku/vo/SubscribeBean;->is_rec:Z

    invoke-virtual {v5, v6}, Lcom/tudou/adapter/SubscribeAdapter;->setIsRec(Z)V

    .line 530
    iget-boolean v5, v0, Lcom/youku/vo/SubscribeBean;->is_rec:Z

    if-nez v5, :cond_4

    .line 531
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 532
    const/4 v6, 0x2

    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v6, v5, :cond_1

    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 534
    :cond_0
    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 535
    add-int/lit8 v2, v2, -0x1

    .line 537
    :cond_1
    const/4 v6, 0x1

    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    if-ne v6, v5, :cond_3

    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 539
    :cond_2
    iget-object v5, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 540
    add-int/lit8 v2, v2, -0x1

    .line 531
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    .end local v2    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x4e71

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 546
    .local v3, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "bean":Lcom/youku/vo/SubscribeBean;
    :goto_1
    return-void

    .line 547
    .end local v3    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x4e72

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 550
    .restart local v3    # "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
