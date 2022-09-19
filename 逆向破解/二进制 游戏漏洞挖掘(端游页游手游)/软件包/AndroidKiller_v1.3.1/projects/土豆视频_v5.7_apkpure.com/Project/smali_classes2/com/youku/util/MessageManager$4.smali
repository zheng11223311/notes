.class Lcom/youku/util/MessageManager$4;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/MessageManager;->deleteMessage(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/MessageManager;

.field final synthetic val$onFinish:Lcom/youku/util/IMessageFinish;


# direct methods
.method constructor <init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageFinish;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/youku/util/MessageManager$4;->this$0:Lcom/youku/util/MessageManager;

    iput-object p2, p0, Lcom/youku/util/MessageManager$4;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/youku/util/MessageManager$4;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/youku/util/MessageManager$4;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v0}, Lcom/youku/util/IMessageFinish;->onFailed()V

    .line 220
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "str":Ljava/lang/String;
    const-string v1, "MessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/youku/util/MessageManager$4;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/youku/util/MessageManager$4;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v1}, Lcom/youku/util/IMessageFinish;->onSuccess()V

    .line 213
    :cond_0
    return-void
.end method
