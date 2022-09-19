.class Lcom/tudou/ui/fragment/SubscribeFragment$10;
.super Ljava/lang/Object;
.source "SubscribeFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

.field final synthetic val$sublist_check_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->val$sublist_check_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x4e22

    .line 418
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SubscribeFragment;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$1100(Lcom/tudou/ui/fragment/SubscribeFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SubscribeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 424
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->val$sublist_check_url:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "formatUri":Ljava/lang/String;
    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 427
    :try_start_0
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    new-instance v3, Lcom/youku/vo/SubscribeStatusBean;

    invoke-direct {v3}, Lcom/youku/vo/SubscribeStatusBean;-><init>()V

    invoke-static {v0, v3}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SubscribeStatusBean;

    invoke-static {v4, v3}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$602(Lcom/tudou/ui/fragment/SubscribeFragment;Lcom/youku/vo/SubscribeStatusBean;)Lcom/youku/vo/SubscribeStatusBean;

    .line 430
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SubscribeFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4e21

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SubscribeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 433
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 406
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 409
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    new-instance v1, Lcom/youku/vo/SubscribeStatusBean;

    invoke-direct {v1}, Lcom/youku/vo/SubscribeStatusBean;-><init>()V

    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SubscribeStatusBean;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->access$602(Lcom/tudou/ui/fragment/SubscribeFragment;Lcom/youku/vo/SubscribeStatusBean;)Lcom/youku/vo/SubscribeStatusBean;

    .line 410
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$10;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4e21

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
