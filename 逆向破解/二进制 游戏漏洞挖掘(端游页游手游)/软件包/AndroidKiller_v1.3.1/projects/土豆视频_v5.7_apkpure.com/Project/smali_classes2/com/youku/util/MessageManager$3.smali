.class Lcom/youku/util/MessageManager$3;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/MessageManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageSendFinish;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/MessageManager;

.field final synthetic val$onFinish:Lcom/youku/util/IMessageSendFinish;


# direct methods
.method constructor <init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageSendFinish;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/youku/util/MessageManager$3;->this$0:Lcom/youku/util/MessageManager;

    iput-object p2, p0, Lcom/youku/util/MessageManager$3;->val$onFinish:Lcom/youku/util/IMessageSendFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/youku/util/MessageManager$3;->val$onFinish:Lcom/youku/util/IMessageSendFinish;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/youku/util/MessageManager$3;->val$onFinish:Lcom/youku/util/IMessageSendFinish;

    invoke-interface {v0}, Lcom/youku/util/IMessageSendFinish;->onFailed()V

    .line 189
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "str":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "o":Lorg/json/JSONObject;
    const-string v4, "addMessageId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 175
    .local v2, "primsgid":Ljava/lang/Long;
    const-string v4, "MessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/youku/util/MessageManager$3;->val$onFinish:Lcom/youku/util/IMessageSendFinish;

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/youku/util/MessageManager$3;->val$onFinish:Lcom/youku/util/IMessageSendFinish;

    invoke-interface {v4, v2}, Lcom/youku/util/IMessageSendFinish;->onSuccess(Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "o":Lorg/json/JSONObject;
    .end local v2    # "primsgid":Ljava/lang/Long;
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/youku/util/MessageManager$3;->val$onFinish:Lcom/youku/util/IMessageSendFinish;

    if-eqz v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/youku/util/MessageManager$3;->val$onFinish:Lcom/youku/util/IMessageSendFinish;

    invoke-interface {v4}, Lcom/youku/util/IMessageSendFinish;->onFailed()V

    goto :goto_0
.end method
