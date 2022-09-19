.class Lcom/tudou/service/classify/ClassifyManagerImpl$2;
.super Ljava/lang/Object;
.source "ClassifyManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/classify/ClassifyManagerImpl;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/classify/ClassifyManagerImpl;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$pageNum:I


# direct methods
.method constructor <init>(Lcom/tudou/service/classify/ClassifyManagerImpl;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->this$0:Lcom/tudou/service/classify/ClassifyManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$mHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$pageNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 133
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 134
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$pageNum:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 135
    const/16 v1, 0x2717

    iput v1, v0, Landroid/os/Message;->what:I

    .line 136
    iget-object v1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const-string v1, "Classify"

    const-string v2, "getSelectVideoList onFailed"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "str":Ljava/lang/String;
    const-class v4, Lcom/youku/vo/ChannelFilterVideos;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChannelFilterVideos;

    .line 111
    .local v0, "channels":Lcom/youku/vo/ChannelFilterVideos;
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 112
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 113
    .local v2, "msg":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    iget v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$pageNum:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 115
    const/16 v4, 0x2716

    iput v4, v2, Landroid/os/Message;->what:I

    .line 116
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const-string v4, "Classify"

    const-string v5, "getSelectVideoList onSuccess try"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "channels":Lcom/youku/vo/ChannelFilterVideos;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 121
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 122
    .restart local v2    # "msg":Landroid/os/Message;
    iget v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$pageNum:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 123
    const/16 v4, 0x2717

    iput v4, v2, Landroid/os/Message;->what:I

    .line 124
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$2;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    const-string v4, "Classify"

    const-string v5, "getSelectVideoList onSuccess catch"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
