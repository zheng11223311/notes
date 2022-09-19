.class public Lcom/youku/util/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/util/IMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/util/MessageManager$Type;
    }
.end annotation


# static fields
.field private static instance:Lcom/youku/util/MessageManager;


# instance fields
.field public cheMessage:I

.field public checks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/MessageChecked;",
            ">;"
        }
    .end annotation
.end field

.field public currentCheckNo:I

.field public messageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/MessageDetail$MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Message;",
            ">;"
        }
    .end annotation
.end field

.field public messagesTotal:I

.field public msgSystem:Lcom/youku/vo/MessageSystem;

.field public priMessage:I

.field public sysMessage:I

.field public totMessage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    .line 34
    iput v1, p0, Lcom/youku/util/MessageManager;->messagesTotal:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/util/MessageManager;->checks:Ljava/util/ArrayList;

    .line 38
    iput v1, p0, Lcom/youku/util/MessageManager;->sysMessage:I

    .line 39
    iput v1, p0, Lcom/youku/util/MessageManager;->cheMessage:I

    .line 40
    iput v1, p0, Lcom/youku/util/MessageManager;->priMessage:I

    .line 41
    iput v1, p0, Lcom/youku/util/MessageManager;->totMessage:I

    .line 42
    iput v1, p0, Lcom/youku/util/MessageManager;->currentCheckNo:I

    .line 44
    return-void
.end method

.method public static clearMessage()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/util/MessageManager;->instance:Lcom/youku/util/MessageManager;

    .line 67
    return-void
.end method

.method public static getInstance()Lcom/youku/util/MessageManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/youku/util/MessageManager;->instance:Lcom/youku/util/MessageManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/youku/util/MessageManager;

    invoke-direct {v0}, Lcom/youku/util/MessageManager;-><init>()V

    sput-object v0, Lcom/youku/util/MessageManager;->instance:Lcom/youku/util/MessageManager;

    .line 62
    :cond_0
    sget-object v0, Lcom/youku/util/MessageManager;->instance:Lcom/youku/util/MessageManager;

    return-object v0
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-class v1, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 472
    return-void
.end method


# virtual methods
.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/youku/util/MessageManager;->deleteMessage(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V

    .line 196
    return-void
.end method

.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    const/4 v3, 0x1

    .line 201
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 203
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 205
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/util/MessageManager$4;

    invoke-direct {v2, p0, p3}, Lcom/youku/util/MessageManager$4;-><init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageFinish;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 222
    return-void
.end method

.method public deleteMessages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "receiverId"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/youku/util/MessageManager;->deleteMessages(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V

    .line 227
    return-void
.end method

.method public deleteMessages(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
    .locals 5
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "receiverId"    # Ljava/lang/String;
    .param p3, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    const/4 v4, 0x1

    .line 232
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 234
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/http/TudouURLContainer;->deleteMessages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 237
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/util/MessageManager$5;

    invoke-direct {v2, p0, p3}, Lcom/youku/util/MessageManager$5;-><init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageFinish;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 254
    return-void
.end method

.method public getCheckedErrorMsg()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/util/MessageManager;->getCheckedErrorMsg(Lcom/youku/util/IMessageFinish;)V

    .line 259
    return-void
.end method

.method public getCheckedErrorMsg(Lcom/youku/util/IMessageFinish;)V
    .locals 0
    .param p1, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    .line 264
    return-void
.end method

.method public getCheckedMessage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youku/util/MessageManager;->getCheckedMessage(ILcom/youku/util/IMessageFinish;)V

    .line 305
    return-void
.end method

.method public getCheckedMessage(ILcom/youku/util/IMessageFinish;)V
    .locals 7
    .param p1, "page"    # I
    .param p2, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    const/4 v6, 0x1

    .line 309
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 311
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getMessageChecks(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "url":Ljava/lang/String;
    const-string v3, "MessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 314
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/youku/util/MessageManager$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/youku/util/MessageManager$7;-><init>(Lcom/youku/util/MessageManager;ILcom/youku/util/IMessageFinish;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 362
    return-void
.end method

.method public getMessageList(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youku/util/MessageManager;->getMessageList(ILcom/youku/util/IMessageFinish;)V

    .line 72
    return-void
.end method

.method public getMessageList(ILcom/youku/util/IMessageFinish;)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    const/4 v3, 0x1

    .line 76
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 78
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getMessages(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 80
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/util/MessageManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/youku/util/MessageManager$1;-><init>(Lcom/youku/util/MessageManager;ILcom/youku/util/IMessageFinish;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 111
    return-void
.end method

.method public getMessagesOfUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "selfId"    # Ljava/lang/String;
    .param p2, "receiveId"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/youku/util/MessageManager;->getMessagesOfUser(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V

    .line 116
    return-void
.end method

.method public getMessagesOfUser(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
    .locals 5
    .param p1, "selfId"    # Ljava/lang/String;
    .param p2, "receiveId"    # Ljava/lang/String;
    .param p3, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    const/4 v4, 0x1

    .line 121
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 123
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getMessagesOfUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 126
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/util/MessageManager$2;

    invoke-direct {v2, p0, p3}, Lcom/youku/util/MessageManager$2;-><init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageFinish;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 152
    return-void
.end method

.method public getRefreshCount()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/util/MessageManager;->getRefreshCount(Lcom/youku/util/IMessageFinish;)V

    .line 367
    return-void
.end method

.method public getRefreshCount(Lcom/youku/util/IMessageFinish;)V
    .locals 6
    .param p1, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iput v4, p0, Lcom/youku/util/MessageManager;->sysMessage:I

    .line 374
    iput v4, p0, Lcom/youku/util/MessageManager;->cheMessage:I

    .line 375
    iput v4, p0, Lcom/youku/util/MessageManager;->priMessage:I

    .line 376
    iput v4, p0, Lcom/youku/util/MessageManager;->totMessage:I

    .line 377
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/http/TudouURLContainer;->getFreshCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "msgCountUrl":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 384
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 385
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/youku/util/MessageManager$8;

    invoke-direct {v3, p0, p1}, Lcom/youku/util/MessageManager$8;-><init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageFinish;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public getSystemMessage()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/util/MessageManager;->getSystemMessage(Lcom/youku/util/IMessageFinish;)V

    .line 269
    return-void
.end method

.method public getSystemMessage(Lcom/youku/util/IMessageFinish;)V
    .locals 4
    .param p1, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    const/4 v3, 0x1

    .line 273
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 275
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getSystemMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 277
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/util/MessageManager$6;

    invoke-direct {v2, p0, p1}, Lcom/youku/util/MessageManager$6;-><init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageFinish;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 300
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "receiverId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/youku/util/MessageManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageSendFinish;)V

    .line 157
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageSendFinish;)V
    .locals 4
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "receiverId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "onFinish"    # Lcom/youku/util/IMessageSendFinish;

    .prologue
    const/4 v3, 0x1

    .line 162
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 164
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2, p3}, Lcom/youku/http/TudouURLContainer;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 166
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/util/MessageManager$3;

    invoke-direct {v2, p0, p4}, Lcom/youku/util/MessageManager$3;-><init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageSendFinish;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 191
    return-void
.end method

.method public updateRefreshCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgTypes"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youku/util/MessageManager;->updateRefreshCount(Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V

    .line 420
    return-void
.end method

.method public updateRefreshCount(Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
    .locals 5
    .param p1, "msgTypes"    # Ljava/lang/String;
    .param p2, "onFinish"    # Lcom/youku/util/IMessageFinish;

    .prologue
    const/4 v4, 0x1

    .line 425
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->updateFreshCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "updateFreshUrl":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 463
    :goto_0
    return-void

    .line 430
    :cond_0
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 432
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 433
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/youku/util/MessageManager$9;

    invoke-direct {v3, p0, p2}, Lcom/youku/util/MessageManager$9;-><init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageFinish;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method
