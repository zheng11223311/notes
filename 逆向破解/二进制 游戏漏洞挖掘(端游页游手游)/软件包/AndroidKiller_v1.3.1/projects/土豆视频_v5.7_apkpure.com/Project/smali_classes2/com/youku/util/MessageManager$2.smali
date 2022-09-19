.class Lcom/youku/util/MessageManager$2;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/MessageManager;->getMessagesOfUser(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
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
    .line 126
    iput-object p1, p0, Lcom/youku/util/MessageManager$2;->this$0:Lcom/youku/util/MessageManager;

    iput-object p2, p0, Lcom/youku/util/MessageManager$2;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessagesOfUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/youku/util/MessageManager$2;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/youku/util/MessageManager$2;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v0}, Lcom/youku/util/IMessageFinish;->onFailed()V

    .line 150
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 130
    iget-object v3, p0, Lcom/youku/util/MessageManager$2;->this$0:Lcom/youku/util/MessageManager;

    iget-object v3, v3, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 131
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "str":Ljava/lang/String;
    const-class v3, Lcom/youku/vo/MessageDetailRes;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/MessageDetailRes;

    .line 134
    .local v2, "temp":Lcom/youku/vo/MessageDetailRes;
    const-string v3, "MessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessagesOfUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/youku/vo/MessageDetailRes;->data:Lcom/youku/vo/MessageDetail;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/youku/vo/MessageDetailRes;->data:Lcom/youku/vo/MessageDetail;

    iget-object v3, v3, Lcom/youku/vo/MessageDetail;->msgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, v2, Lcom/youku/vo/MessageDetailRes;->data:Lcom/youku/vo/MessageDetail;

    iget-object v3, v3, Lcom/youku/vo/MessageDetail;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 138
    iget-object v3, p0, Lcom/youku/util/MessageManager$2;->this$0:Lcom/youku/util/MessageManager;

    iget-object v3, v3, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/youku/vo/MessageDetailRes;->data:Lcom/youku/vo/MessageDetail;

    iget-object v4, v4, Lcom/youku/vo/MessageDetail;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/youku/util/MessageManager$2;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/youku/util/MessageManager$2;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v3}, Lcom/youku/util/IMessageFinish;->onSuccess()V

    .line 143
    :cond_1
    return-void
.end method
