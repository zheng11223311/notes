.class Lcom/youku/util/MessageManager$1;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/MessageManager;->getMessageList(ILcom/youku/util/IMessageFinish;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/MessageManager;

.field final synthetic val$onFinish:Lcom/youku/util/IMessageFinish;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/youku/util/MessageManager;ILcom/youku/util/IMessageFinish;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/youku/util/MessageManager$1;->this$0:Lcom/youku/util/MessageManager;

    iput p2, p0, Lcom/youku/util/MessageManager$1;->val$page:I

    iput-object p3, p0, Lcom/youku/util/MessageManager$1;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/youku/util/MessageManager$1;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/youku/util/MessageManager$1;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v0}, Lcom/youku/util/IMessageFinish;->onFailed()V

    .line 109
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v6, 0x0

    .line 84
    iget v4, p0, Lcom/youku/util/MessageManager$1;->val$page:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 85
    iget-object v4, p0, Lcom/youku/util/MessageManager$1;->this$0:Lcom/youku/util/MessageManager;

    iget-object v4, v4, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v4, p0, Lcom/youku/util/MessageManager$1;->this$0:Lcom/youku/util/MessageManager;

    iput v6, v4, Lcom/youku/util/MessageManager;->messagesTotal:I

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "str":Ljava/lang/String;
    const-class v4, Lcom/youku/vo/MessageResult;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/MessageResult;

    .line 90
    .local v3, "temp":Lcom/youku/vo/MessageResult;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/youku/vo/MessageResult;->data:Lcom/youku/vo/MessageData;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/youku/vo/MessageResult;->data:Lcom/youku/vo/MessageData;

    iget-object v4, v4, Lcom/youku/vo/MessageData;->msgList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, v3, Lcom/youku/vo/MessageResult;->data:Lcom/youku/vo/MessageData;

    iget-object v4, v4, Lcom/youku/vo/MessageData;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 93
    iget-object v4, v3, Lcom/youku/vo/MessageResult;->data:Lcom/youku/vo/MessageData;

    iget-object v4, v4, Lcom/youku/vo/MessageData;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Message;

    .line 94
    .local v1, "msg":Lcom/youku/vo/Message;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "private"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/youku/vo/Message;->privatemsgid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/youku/vo/Message;->isReaded:Z

    .line 96
    iget-object v4, p0, Lcom/youku/util/MessageManager$1;->this$0:Lcom/youku/util/MessageManager;

    iget-object v4, v4, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    .end local v1    # "msg":Lcom/youku/vo/Message;
    :cond_1
    iget-object v4, p0, Lcom/youku/util/MessageManager$1;->this$0:Lcom/youku/util/MessageManager;

    iget-object v5, v3, Lcom/youku/vo/MessageResult;->data:Lcom/youku/vo/MessageData;

    iget-object v5, v5, Lcom/youku/vo/MessageData;->listPage:Lcom/youku/vo/MessageData$ListPage;

    iget v5, v5, Lcom/youku/vo/MessageData$ListPage;->totalNumberOfElements:I

    iput v5, v4, Lcom/youku/util/MessageManager;->messagesTotal:I

    .line 100
    iget-object v4, p0, Lcom/youku/util/MessageManager$1;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v4, :cond_2

    .line 101
    iget-object v4, p0, Lcom/youku/util/MessageManager$1;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v4}, Lcom/youku/util/IMessageFinish;->onSuccess()V

    .line 102
    :cond_2
    return-void
.end method
