.class Lcom/tudou/detail/widget/VideoCommentBar$2;
.super Ljava/lang/Object;
.source "VideoCommentBar.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoCommentBar;->excueSendComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoCommentBar;

.field final synthetic val$comment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar$2;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoCommentBar$2;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "excueSendComment onFailed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar$2;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoCommentBar;->access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v8, 0x3

    .line 191
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "excueSendComment onSuccess data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "jsobj":Lorg/json/JSONObject;
    const-string v4, "error_code_api"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 197
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 198
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar$2;->val$comment:Ljava/lang/String;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar$2;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v4}, Lcom/tudou/detail/widget/VideoCommentBar;->access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    .end local v1    # "jsobj":Lorg/json/JSONObject;
    .end local v3    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 202
    .restart local v1    # "jsobj":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "error_code_api"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "excueSendComment onSuccess errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error_code_api"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errorStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v1    # "jsobj":Lorg/json/JSONObject;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar$2;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v4}, Lcom/tudou/detail/widget/VideoCommentBar;->access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsobj":Lorg/json/JSONObject;
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar$2;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v4}, Lcom/tudou/detail/widget/VideoCommentBar;->access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
