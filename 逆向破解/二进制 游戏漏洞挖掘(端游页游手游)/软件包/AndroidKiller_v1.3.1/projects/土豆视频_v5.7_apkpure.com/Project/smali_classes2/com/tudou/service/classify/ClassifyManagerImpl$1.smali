.class Lcom/tudou/service/classify/ClassifyManagerImpl$1;
.super Ljava/lang/Object;
.source "ClassifyManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/classify/ClassifyManagerImpl;->getChannelsFilterData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/classify/ClassifyManagerImpl;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tudou/service/classify/ClassifyManagerImpl;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$1;->this$0:Lcom/tudou/service/classify/ClassifyManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$1;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "Classify"

    const-string v1, "getChannelsFilterData onFailed"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$1;->val$mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$1;->val$mHandler:Landroid/os/Handler;

    const v1, 0x186a4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "str":Ljava/lang/String;
    const-class v4, Lcom/youku/vo/ChannelFliterBean;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/ChannelFliterBean;

    .line 50
    .local v3, "tmpchannelFliter":Lcom/youku/vo/ChannelFliterBean;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 51
    .local v1, "msg":Landroid/os/Message;
    const v4, 0x186a3

    iput v4, v1, Landroid/os/Message;->what:I

    .line 52
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$1;->val$mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 54
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$1;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    :cond_0
    const-string v4, "Classify"

    const-string v5, "getChannelsFilterData onSuccess try"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "tmpchannelFliter":Lcom/youku/vo/ChannelFliterBean;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$1;->val$mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$1;->val$mHandler:Landroid/os/Handler;

    const v5, 0x186a4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    :cond_1
    const-string v4, "Classify"

    const-string v5, "getChannelsFilterData onSuccess catch"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
