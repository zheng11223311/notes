.class Lcom/tudou/ui/fragment/DiscoveryFragment$6;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DiscoveryFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DiscoveryFragment;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$6;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$6;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$500(Lcom/tudou/ui/fragment/DiscoveryFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 720
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 707
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 709
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$6;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/youku/vo/DiscoveryGroupItem;->parseDiscorver(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$402(Lcom/tudou/ui/fragment/DiscoveryFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 711
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$6;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$500(Lcom/tudou/ui/fragment/DiscoveryFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$6;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$500(Lcom/tudou/ui/fragment/DiscoveryFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
