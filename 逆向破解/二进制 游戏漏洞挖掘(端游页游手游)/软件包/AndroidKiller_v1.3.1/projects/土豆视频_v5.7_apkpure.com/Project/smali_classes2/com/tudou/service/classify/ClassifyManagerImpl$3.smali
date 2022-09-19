.class Lcom/tudou/service/classify/ClassifyManagerImpl$3;
.super Ljava/lang/Object;
.source "ClassifyManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/classify/ClassifyManagerImpl;->getChannalList(Landroid/os/Handler;)V
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
    .line 160
    iput-object p1, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$3;->this$0:Lcom/tudou/service/classify/ClassifyManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$3;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$3;->val$mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$3;->val$mHandler:Landroid/os/Handler;

    const/16 v1, 0x271c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    :cond_0
    const-string v0, "Classify"

    const-string v1, "getChannalList onFailed"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "str":Ljava/lang/String;
    const-class v4, Lcom/youku/vo/ChannelListV5;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelListV5;

    .line 166
    .local v1, "mChannalListV5":Lcom/youku/vo/ChannelListV5;
    sput-object v1, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    .line 167
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$3;->val$mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 168
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 169
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    const/16 v4, 0x271b

    iput v4, v2, Landroid/os/Message;->what:I

    .line 171
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$3;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const-string v4, "Classify"

    const-string v5, "getChannalList onSuccess try"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "mChannalListV5":Lcom/youku/vo/ChannelListV5;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$3;->val$mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 176
    iget-object v4, p0, Lcom/tudou/service/classify/ClassifyManagerImpl$3;->val$mHandler:Landroid/os/Handler;

    const/16 v5, 0x271c

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    :cond_1
    const-string v4, "Classify"

    const-string v5, "getChannalList onSuccess catch"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
