.class Lcom/tudou/detail/widget/VideoCommentBar$3;
.super Ljava/lang/Object;
.source "VideoCommentBar.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoCommentBar;->excueReplayComment(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 233
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar$3;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoCommentBar$3;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "excueReplayComment onFailed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar$3;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoCommentBar;->access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 237
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "excueReplayComment onSuccess 1"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "jsobj":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 243
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v2, Landroid/os/Message;->what:I

    .line 244
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar$3;->val$comment:Ljava/lang/String;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    const-string v4, "Youku"

    const-string v5, "excueReplayComment onSuccess = "

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar$3;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v4}, Lcom/tudou/detail/widget/VideoCommentBar;->access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    .end local v0    # "jsobj":Lorg/json/JSONObject;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local v0    # "jsobj":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "desc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v0    # "jsobj":Lorg/json/JSONObject;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 257
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "excueReplayComment onFailed = "

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar$3;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v4}, Lcom/tudou/detail/widget/VideoCommentBar;->access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
