.class final Lio/rong/imkit/RongIMClientWrapper$2;
.super Ljava/lang/Object;
.source "RongIMClientWrapper.java"

# interfaces
.implements Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->initConnectedData(Lio/rong/imlib/RongIMClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/model/Message;I)Z
    .locals 12
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "left"    # I

    .prologue
    const/4 v1, 0x1

    .line 154
    const/4 v9, 0x0

    .line 156
    .local v9, "isProcess":Z
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    if-eqz v2, :cond_0

    .line 157
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    invoke-interface {v2, p1, p2}, Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;->onReceived(Lio/rong/imlib/model/Message;I)Z

    move-result v9

    .line 159
    :cond_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/rong/imlib/MessageTag;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lio/rong/imlib/MessageTag;

    .line 161
    .local v10, "msgTag":Lio/rong/imlib/MessageTag;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v2

    if-lez v2, :cond_5

    .line 162
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v2, v2, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;

    invoke-direct {v3, p1, p2}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;-><init>(Lio/rong/imlib/model/Message;I)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v2, v2, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/utils/CommonUtils;->refreshUserInfoIfNeed(Lio/rong/imkit/RongContext;Lio/rong/imlib/model/UserInfo;)V

    .line 170
    :cond_1
    if-nez v9, :cond_2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    :cond_2
    :goto_0
    return v1

    .line 174
    :cond_3
    invoke-static {}, Lio/rong/imkit/notification/MessageNotificationManager;->getInstance()Lio/rong/imkit/notification/MessageNotificationManager;

    move-result-object v1

    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v2, v2, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1, v2, p1, p2}, Lio/rong/imkit/notification/MessageNotificationManager;->notifyIfNeed(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    .line 209
    :cond_4
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 178
    :cond_5
    const/4 v11, 0x0

    .line 180
    .local v11, "readRec":Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 186
    :goto_2
    if-ne v11, v1, :cond_6

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RC:ReadNtf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    check-cast v7, Lio/rong/message/ReadReceiptMessage;

    .line 188
    .local v7, "content":Lio/rong/message/ReadReceiptMessage;
    sget-object v1, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v1, v1, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v4

    new-instance v6, Lio/rong/imkit/RongIMClientWrapper$2$1;

    invoke-direct {v6, p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$2$1;-><init>(Lio/rong/imkit/RongIMClientWrapper$2;Lio/rong/imlib/model/Message;I)V

    invoke-virtual/range {v1 .. v6}, Lio/rong/imlib/RongIMClient;->updateMessageReceiptStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JLio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 201
    .end local v7    # "content":Lio/rong/message/ReadReceiptMessage;
    :cond_6
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v1, v2, :cond_4

    .line 202
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "className":Ljava/lang/String;
    const-string v1, "io.rong.voipkit.message.VoIPCallMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "io.rong.voipkit.message.VoIPAcceptMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "io.rong.voipkit.message.VoIPFinishMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    :cond_7
    sget-object v1, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v1, v1, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;-><init>(Lio/rong/imlib/model/Message;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    .end local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 182
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "initConnectedData"

    const-string v3, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {p0, v2, v3}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v8}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_2
.end method
