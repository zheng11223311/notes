.class Lcom/tudou/service/classify/ClassifyManagerImpl$4;
.super Ljava/lang/Object;
.source "ClassifyManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/classify/ClassifyManagerImpl;->getClassifyFeature(Ljava/lang/String;Landroid/os/Handler;)V
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
    .line 254
    iput-object p1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$4;->this$0:Lcom/tudou/service/classify/ClassifyManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$4;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$4;->val$mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 280
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 281
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x271a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 282
    iget-object v1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$4;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const-string v1, "Classify"

    const-string v2, "getClassifyFeature onFailed"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 258
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "str":Ljava/lang/String;
    const-class v4, Lcom/youku/vo/ChannelFeatureBean;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFeatureBean;

    .line 260
    .local v1, "mChannelFeatureBean":Lcom/youku/vo/ChannelFeatureBean;
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$4;->val$mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 261
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 262
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    const/16 v4, 0x2719

    iput v4, v2, Landroid/os/Message;->what:I

    .line 264
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$4;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const-string v4, "Classify"

    const-string v5, "getClassifyFeature onSuccess try"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1    # "mChannelFeatureBean":Lcom/youku/vo/ChannelFeatureBean;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$4;->val$mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 269
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 270
    .restart local v2    # "msg":Landroid/os/Message;
    const/16 v4, 0x271a

    iput v4, v2, Landroid/os/Message;->what:I

    .line 271
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$4;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    const-string v4, "Classify"

    const-string v5, "getClassifyFeature onSuccess catch"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
