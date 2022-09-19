.class public Lio/rong/imkit/model/UIConversation;
.super Ljava/lang/Object;
.source "UIConversation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/model/UIConversation$UnreadRemindType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imkit/model/UIConversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conversationContent:Landroid/text/Spannable;

.field private conversationTime:J

.field private conversationTitle:Ljava/lang/String;

.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private draft:Ljava/lang/String;

.field private extraFlag:Z

.field private isGathered:Z

.field private isShowDraft:Z

.field private isTop:Z

.field private latestMessageId:I

.field private mUnreadType:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

.field private messageContent:Lio/rong/imlib/model/MessageContent;

.field private nicknameIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBlockStatus:Z

.field private portrait:Landroid/net/Uri;

.field private senderId:Ljava/lang/String;

.field private sentStatus:Lio/rong/imlib/model/Message$SentStatus;

.field private targetId:Ljava/lang/String;

.field private unReadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lio/rong/imkit/model/UIConversation$1;

    invoke-direct {v0}, Lio/rong/imkit/model/UIConversation$1;-><init>()V

    sput-object v0, Lio/rong/imkit/model/UIConversation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    sget-object v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    iput-object v0, p0, Lio/rong/imkit/model/UIConversation;->mUnreadType:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/model/UIConversation;->nicknameIds:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;
    .locals 11
    .param p0, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p1, "gatherState"    # Z

    .prologue
    const/4 v5, 0x0

    .line 202
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongContext hasn\'t been initialized !!"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the conversation type hasn\'t been registered! type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    .line 212
    .local v6, "msgContent":Lio/rong/imlib/model/MessageContent;
    const/4 v3, 0x0

    .line 213
    .local v3, "title":Ljava/lang/String;
    const/4 v9, 0x0

    .line 214
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getPortraitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getPortraitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 216
    :cond_2
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v3

    .line 218
    if-nez v9, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    :cond_3
    invoke-virtual {v6}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v10

    .line 223
    .local v10, "userInfo":Lio/rong/imlib/model/UserInfo;
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "targetId":Ljava/lang/String;
    if-eqz v7, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    invoke-virtual {v10}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v10}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v9

    .line 229
    :cond_4
    if-nez p1, :cond_5

    if-eqz v9, :cond_5

    .line 230
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 234
    .end local v7    # "targetId":Ljava/lang/String;
    .end local v10    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_5
    if-eqz v9, :cond_6

    if-nez v3, :cond_7

    .line 235
    :cond_6
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 241
    :cond_7
    new-instance v8, Lio/rong/imkit/model/UIConversation;

    invoke-direct {v8}, Lio/rong/imkit/model/UIConversation;-><init>()V

    .line 243
    .local v8, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v8, v6}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 244
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getUnreadMessageCount()I

    move-result v0

    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 245
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 246
    iput-boolean p1, v8, Lio/rong/imkit/model/UIConversation;->isGathered:Z

    .line 247
    if-nez p1, :cond_8

    .line 248
    iput-object v9, v8, Lio/rong/imkit/model/UIConversation;->portrait:Landroid/net/Uri;

    .line 249
    iput-object v3, v8, Lio/rong/imkit/model/UIConversation;->conversationTitle:Ljava/lang/String;

    .line 251
    :cond_8
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 252
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->isTop()Z

    move-result v0

    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 254
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 255
    invoke-virtual {v8, v5}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 259
    :goto_0
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v0

    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setLatestMessageId(I)V

    .line 263
    invoke-virtual {v8, v8}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 265
    return-object v8

    .line 257
    :cond_9
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    goto :goto_0
.end method

.method public static obtain(Lio/rong/imlib/model/Message;Z)Lio/rong/imkit/model/UIConversation;
    .locals 11
    .param p0, "message"    # Lio/rong/imlib/model/Message;
    .param p1, "gather"    # Z

    .prologue
    .line 269
    const-string v3, ""

    .line 270
    .local v3, "title":Ljava/lang/String;
    const/4 v7, 0x0

    .line 271
    .local v7, "iconUri":Landroid/net/Uri;
    new-instance v9, Lio/rong/imkit/model/UIConversation;

    invoke-direct {v9}, Lio/rong/imkit/model/UIConversation;-><init>()V

    .line 273
    .local v9, "tempUIConversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v10

    .line 274
    .local v10, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-virtual {v10}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v7

    .line 276
    invoke-virtual {v10}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    .line 278
    .local v6, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    if-nez p1, :cond_1

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v0}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v0}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    iput-object v7, v9, Lio/rong/imkit/model/UIConversation;->portrait:Landroid/net/Uri;

    .line 281
    iput-object v3, v9, Lio/rong/imkit/model/UIConversation;->conversationTitle:Ljava/lang/String;

    .line 282
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 286
    .end local v6    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    .line 287
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 292
    :cond_3
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/MessageTag;

    .line 295
    .local v8, "tag":Lio/rong/imlib/MessageTag;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 296
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 298
    :cond_4
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 299
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v0, v1, :cond_7

    .line 300
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 303
    :goto_1
    invoke-virtual {v9, v7}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 304
    invoke-virtual {v9, v3}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 306
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v0, v1, :cond_8

    .line 308
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 309
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 312
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 314
    invoke-virtual {v9, v9}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 315
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setLatestMessageId(I)V

    .line 317
    return-object v9

    .line 282
    .end local v8    # "tag":Lio/rong/imlib/MessageTag;
    .restart local v6    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_6
    const-string v4, ""

    goto/16 :goto_0

    .line 302
    .end local v6    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    .restart local v8    # "tag":Lio/rong/imlib/MessageTag;
    :cond_7
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getReceivedTime()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    goto :goto_1

    .line 311
    :cond_8
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public addNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->nicknameIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;
    .locals 17
    .param p1, "uiConversation"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    .line 321
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationGatherState()Z

    move-result v4

    .line 322
    .local v4, "isGathered":Z
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v11

    .line 323
    .local v11, "type":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 327
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v13

    if-nez v13, :cond_0

    .line 328
    const-string v13, ""

    invoke-virtual {v1, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 396
    .end local v1    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v1

    .line 332
    .restart local v1    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v13

    invoke-interface {v13}, Lio/rong/imkit/model/ProviderTag;->showSummaryWithName()Z

    move-result v6

    .line 334
    .local v6, "isShowName":Z
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v7

    .line 336
    .local v7, "messageData":Landroid/text/Spannable;
    if-nez v7, :cond_1

    .line 337
    const-string v13, ""

    invoke-virtual {v1, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v13

    instance-of v13, v13, Lio/rong/message/VoiceMessage;

    if-eqz v13, :cond_2

    .line 342
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 344
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v2

    .line 345
    .local v2, "conv":Lio/rong/imlib/model/Conversation;
    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v5

    .line 347
    .local v5, "isListened":Z
    if-eqz v5, :cond_3

    .line 348
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-interface {v7, v13, v14, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 356
    .end local v2    # "conv":Lio/rong/imlib/model/Conversation;
    .end local v5    # "isListened":Z
    :cond_2
    :goto_1
    if-nez v6, :cond_4

    .line 357
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 350
    .restart local v2    # "conv":Lio/rong/imlib/model/Conversation;
    .restart local v5    # "isListened":Z
    :cond_3
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-interface {v7, v13, v14, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 361
    .end local v2    # "conv":Lio/rong/imlib/model/Conversation;
    .end local v5    # "isListened":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "senderId":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 363
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    invoke-virtual {v13, v11}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 365
    .local v10, "targetName":Ljava/lang/String;
    if-nez v10, :cond_5

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v10

    .end local v10    # "targetName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 368
    :cond_6
    sget-object v13, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v13}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 370
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lio/rong/imkit/model/UIConversation;->targetId:Ljava/lang/String;

    invoke-virtual {v13, v14, v8}, Lio/rong/imkit/RongContext;->getGroupUserInfoFromCache(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v3

    .line 371
    .local v3, "info":Lio/rong/imkit/model/GroupUserInfo;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongContext;->getGroupUserInfoProvider()Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    move-result-object v13

    if-eqz v13, :cond_8

    if-eqz v3, :cond_8

    .line 372
    invoke-virtual {v3}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, "senderName":Ljava/lang/String;
    :goto_2
    if-nez v9, :cond_b

    if-nez v8, :cond_7

    const-string v8, ""

    .end local v8    # "senderId":Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 374
    .end local v9    # "senderName":Ljava/lang/String;
    .restart local v8    # "senderId":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v12

    .line 375
    .local v12, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    .line 376
    :cond_9
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v14}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v13

    invoke-interface {v13, v8}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "senderName":Ljava/lang/String;
    goto :goto_2

    .line 380
    .end local v9    # "senderName":Ljava/lang/String;
    :cond_a
    invoke-virtual {v12}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "senderName":Ljava/lang/String;
    goto :goto_2

    .end local v12    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_b
    move-object v8, v9

    .line 383
    goto :goto_3

    .line 386
    .end local v3    # "info":Lio/rong/imkit/model/GroupUserInfo;
    .end local v9    # "senderName":Ljava/lang/String;
    :cond_c
    sget-object v13, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v13}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 387
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v14}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 390
    .restart local v9    # "senderName":Ljava/lang/String;
    if-nez v9, :cond_e

    if-nez v8, :cond_d

    const-string v8, ""

    .end local v8    # "senderId":Ljava/lang/String;
    :cond_d
    :goto_4
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .restart local v8    # "senderId":Ljava/lang/String;
    :cond_e
    move-object v8, v9

    goto :goto_4

    .line 394
    .end local v9    # "senderName":Ljava/lang/String;
    :cond_f
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public getConversationContent()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->conversationContent:Landroid/text/Spannable;

    return-object v0
.end method

.method public getConversationGatherState()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->isGathered:Z

    return v0
.end method

.method public getConversationSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->draft:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraFlag()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->extraFlag:Z

    return v0
.end method

.method public getIconUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->portrait:Landroid/net/Uri;

    return-object v0
.end method

.method public getLatestMessageId()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lio/rong/imkit/model/UIConversation;->latestMessageId:I

    return v0
.end method

.method public getMessageContent()Lio/rong/imlib/model/MessageContent;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->messageContent:Lio/rong/imlib/model/MessageContent;

    return-object v0
.end method

.method public getNotificationBlockStatus()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->notificationBlockStatus:Z

    return v0
.end method

.method public getSentStatus()Lio/rong/imlib/model/Message$SentStatus;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    return-object v0
.end method

.method public getShowDraftFlag()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->isShowDraft:Z

    return v0
.end method

.method public getUIConversationTime()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lio/rong/imkit/model/UIConversation;->conversationTime:J

    return-wide v0
.end method

.method public getUIConversationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->conversationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUnReadMessageCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lio/rong/imkit/model/UIConversation;->unReadMessageCount:I

    return v0
.end method

.method public getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->mUnreadType:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    return-object v0
.end method

.method public hasNickname(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->nicknameIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->isTop:Z

    return v0
.end method

.method public removeNickName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->nicknameIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public setConversationContent(Landroid/text/Spannable;)V
    .locals 0
    .param p1, "content"    # Landroid/text/Spannable;

    .prologue
    .line 78
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->conversationContent:Landroid/text/Spannable;

    .line 79
    return-void
.end method

.method public setConversationGatherState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->isGathered:Z

    .line 151
    return-void
.end method

.method public setConversationSenderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->senderId:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setConversationTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->targetId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 118
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 119
    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->draft:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setExtraFlag(Z)V
    .locals 0
    .param p1, "extraFlag"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->extraFlag:Z

    .line 52
    return-void
.end method

.method public setIconUrl(Landroid/net/Uri;)V
    .locals 0
    .param p1, "iconUrl"    # Landroid/net/Uri;

    .prologue
    .line 70
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->portrait:Landroid/net/Uri;

    .line 71
    return-void
.end method

.method public setLatestMessageId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 182
    iput p1, p0, Lio/rong/imkit/model/UIConversation;->latestMessageId:I

    .line 183
    return-void
.end method

.method public setMessageContent(Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .param p1, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 86
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->messageContent:Lio/rong/imlib/model/MessageContent;

    .line 87
    return-void
.end method

.method public setNotificationBlockStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->notificationBlockStatus:Z

    .line 159
    return-void
.end method

.method public setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V
    .locals 0
    .param p1, "status"    # Lio/rong/imlib/model/Message$SentStatus;

    .prologue
    .line 126
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    .line 127
    return-void
.end method

.method public setShowDraftFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->isShowDraft:Z

    .line 175
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->isTop:Z

    .line 111
    return-void
.end method

.method public setUIConversationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lio/rong/imkit/model/UIConversation;->conversationTime:J

    .line 95
    return-void
.end method

.method public setUIConversationTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->conversationTitle:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUnReadMessageCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 102
    iput p1, p0, Lio/rong/imkit/model/UIConversation;->unReadMessageCount:I

    .line 103
    return-void
.end method

.method public setUnreadType(Lio/rong/imkit/model/UIConversation$UnreadRemindType;)V
    .locals 0
    .param p1, "type"    # Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    .prologue
    .line 402
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->mUnreadType:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    .line 403
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 432
    return-void
.end method
