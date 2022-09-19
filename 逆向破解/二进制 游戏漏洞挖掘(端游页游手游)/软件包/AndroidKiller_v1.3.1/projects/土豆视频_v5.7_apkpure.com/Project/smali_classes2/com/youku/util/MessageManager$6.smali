.class Lcom/youku/util/MessageManager$6;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/MessageManager;->getSystemMessage(Lcom/youku/util/IMessageFinish;)V
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
    .line 277
    iput-object p1, p0, Lcom/youku/util/MessageManager$6;->this$0:Lcom/youku/util/MessageManager;

    iput-object p2, p0, Lcom/youku/util/MessageManager$6;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/youku/util/MessageManager$6;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/youku/util/MessageManager$6;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v0}, Lcom/youku/util/IMessageFinish;->onFailed()V

    .line 298
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "str":Ljava/lang/String;
    const-string v3, "MessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSystemMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/youku/util/MessageManager$6;->this$0:Lcom/youku/util/MessageManager;

    const-class v3, Lcom/youku/vo/MessageSystem;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/MessageSystem;

    iput-object v3, v4, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/util/MessageManager$6;->this$0:Lcom/youku/util/MessageManager;

    iget-object v3, v3, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v3, v3, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 285
    iget-object v3, p0, Lcom/youku/util/MessageManager$6;->this$0:Lcom/youku/util/MessageManager;

    iget-object v3, v3, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v3, v3, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/MessageSystem$Msg;

    iget-object v2, v3, Lcom/youku/vo/MessageSystem$Msg;->id:Ljava/lang/String;

    .line 286
    .local v2, "sysid":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/util/MessageManager$6;->this$0:Lcom/youku/util/MessageManager;

    iget-object v3, v3, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v3, v3, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/MessageSystem$Msg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/youku/vo/MessageSystem$Msg;->isReaded:Z

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "sysid":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/youku/util/MessageManager$6;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v3, :cond_1

    .line 290
    iget-object v3, p0, Lcom/youku/util/MessageManager$6;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v3}, Lcom/youku/util/IMessageFinish;->onSuccess()V

    .line 291
    :cond_1
    return-void
.end method
