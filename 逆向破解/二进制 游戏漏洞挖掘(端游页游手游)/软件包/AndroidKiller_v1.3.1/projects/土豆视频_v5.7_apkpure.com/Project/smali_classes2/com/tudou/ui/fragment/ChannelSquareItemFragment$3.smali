.class Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;
.super Ljava/lang/Object;
.source "ChannelSquareItemFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getClassifyItemsInfo(Lcom/youku/vo/ChannelSquareTag;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

.field final synthetic val$csTag:Lcom/youku/vo/ChannelSquareTag;

.field final synthetic val$isClear:Z


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/youku/vo/ChannelSquareTag;Z)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->val$csTag:Lcom/youku/vo/ChannelSquareTag;

    iput-boolean p3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->val$isClear:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x186a4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 377
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->val$isClear:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 340
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "netData":Ljava/lang/String;
    const-string v6, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channelSquear====="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->val$csTag:Lcom/youku/vo/ChannelSquareTag;

    invoke-virtual {v8}, Lcom/youku/vo/ChannelSquareTag;->getKeywords()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 343
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    .line 344
    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    .end local v4    # "netData":Ljava/lang/String;
    :goto_0
    return-void

    .line 349
    .restart local v4    # "netData":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/youku/vo/ChannalSquareTagItems;

    invoke-direct {v8}, Lcom/youku/vo/ChannalSquareTagItems;-><init>()V

    invoke-static {v6, v8}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/ChannalSquareTagItems;

    invoke-static {v7, v6}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$502(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/youku/vo/ChannalSquareTagItems;)Lcom/youku/vo/ChannalSquareTagItems;

    .line 352
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v6

    if-nez v6, :cond_2

    .line 353
    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DiscoveryChannelItem;

    .line 354
    .local v2, "item":Lcom/youku/vo/DiscoveryChannelItem;
    iget v6, v2, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/data/SQLiteManagerTudou;->isAttention(Ljava/lang/String;)Z

    move-result v5

    .line 355
    .local v5, "resu":Z
    if-eqz v5, :cond_1

    .line 356
    const/4 v6, 0x1

    iput v6, v2, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 366
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/youku/vo/DiscoveryChannelItem;
    .end local v4    # "netData":Ljava/lang/String;
    .end local v5    # "resu":Z
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "item":Lcom/youku/vo/DiscoveryChannelItem;
    .restart local v4    # "netData":Ljava/lang/String;
    .restart local v5    # "resu":Z
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    iput v6, v2, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    goto :goto_1

    .line 362
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/youku/vo/DiscoveryChannelItem;
    .end local v5    # "resu":Z
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 363
    .local v3, "msg":Landroid/os/Message;
    const v6, 0x186a3

    iput v6, v3, Landroid/os/Message;->what:I

    .line 364
    iget-boolean v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->val$isClear:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
