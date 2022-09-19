.class Lcom/tudou/android/chat/ChatManager$6;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->checkChatText(Lio/rong/imlib/model/Message;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatManager;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatManager;Lio/rong/imlib/model/Message;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$6;->this$0:Lcom/tudou/android/chat/ChatManager;

    iput-object p2, p0, Lcom/tudou/android/chat/ChatManager$6;->val$message:Lio/rong/imlib/model/Message;

    iput-object p3, p0, Lcom/tudou/android/chat/ChatManager$6;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed(): failReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager$6;->this$0:Lcom/tudou/android/chat/ChatManager;

    iget-object v1, p0, Lcom/tudou/android/chat/ChatManager$6;->val$message:Lio/rong/imlib/model/Message;

    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager$6;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tudou/android/chat/ChatManager;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 414
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    const-class v3, Lcom/tudou/android/chat/ChatCheckResultBean;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatCheckResultBean;

    .line 417
    .local v0, "chatCheckResultBean":Lcom/tudou/android/chat/ChatCheckResultBean;
    iget v3, v0, Lcom/tudou/android/chat/ChatCheckResultBean;->code:I

    if-nez v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager$6;->this$0:Lcom/tudou/android/chat/ChatManager;

    iget-object v4, p0, Lcom/tudou/android/chat/ChatManager$6;->val$message:Lio/rong/imlib/model/Message;

    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$6;->val$text:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/android/chat/ChatManager;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;)V

    .line 426
    .end local v0    # "chatCheckResultBean":Lcom/tudou/android/chat/ChatCheckResultBean;
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 421
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager$6;->this$0:Lcom/tudou/android/chat/ChatManager;

    iget-object v4, p0, Lcom/tudou/android/chat/ChatManager$6;->val$message:Lio/rong/imlib/model/Message;

    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$6;->val$text:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/android/chat/ChatManager;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager$6;->this$0:Lcom/tudou/android/chat/ChatManager;

    iget-object v4, p0, Lcom/tudou/android/chat/ChatManager$6;->val$message:Lio/rong/imlib/model/Message;

    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager$6;->val$text:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/android/chat/ChatManager;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;)V

    goto :goto_0
.end method
