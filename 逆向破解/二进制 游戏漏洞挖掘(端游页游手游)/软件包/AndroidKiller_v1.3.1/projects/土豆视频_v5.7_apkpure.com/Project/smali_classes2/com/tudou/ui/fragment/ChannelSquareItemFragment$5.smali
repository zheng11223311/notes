.class Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;
.super Ljava/lang/Object;
.source "ChannelSquareItemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getLocalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 546
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/ChannelSquareTag;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/ChannelSquareTag;->getGender()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/ChannelSquareTag;->getFc()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/ChannelSquareTag;->getQualityUser()I

    move-result v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/ChannelSquareTag;->getUserType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/ChannelSquareTag;->getOrderByField()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/ChannelSquareTag;->getOrderByType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$200(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)I

    move-result v7

    const/16 v8, 0x1e

    invoke-static/range {v0 .. v8}, Lcom/youku/http/TudouURLContainer;->getChannelSquareClassfyItems(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    .line 551
    .local v13, "mCsClassfyItemsURL":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {v13, v0}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 552
    .local v10, "formatUri":Ljava/lang/String;
    invoke-static {v10}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v10}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1602(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :catch_0
    move-exception v9

    .line 574
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 575
    const-string v0, "Youku"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local sucess====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_1
    return-void

    .line 559
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/youku/vo/ChannalSquareTagItems;

    invoke-direct {v2}, Lcom/youku/vo/ChannalSquareTagItems;-><init>()V

    invoke-static {v0, v2}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChannalSquareTagItems;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$502(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/youku/vo/ChannalSquareTagItems;)Lcom/youku/vo/ChannalSquareTagItems;

    .line 562
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/youku/vo/DiscoveryChannelItem;

    .line 564
    .local v12, "item":Lcom/youku/vo/DiscoveryChannelItem;
    iget v0, v12, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/data/SQLiteManagerTudou;->isAttention(Ljava/lang/String;)Z

    move-result v14

    .line 565
    .local v14, "resu":Z
    if-eqz v14, :cond_2

    .line 566
    const/4 v0, 0x1

    iput v0, v12, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    goto :goto_2

    .line 568
    :cond_2
    const/4 v0, 0x0

    iput v0, v12, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    goto :goto_2

    .line 572
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Lcom/youku/vo/DiscoveryChannelItem;
    .end local v14    # "resu":Z
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 580
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    const-string v0, "TAG_TUDOU"

    const-string v1, "local failed====="

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
