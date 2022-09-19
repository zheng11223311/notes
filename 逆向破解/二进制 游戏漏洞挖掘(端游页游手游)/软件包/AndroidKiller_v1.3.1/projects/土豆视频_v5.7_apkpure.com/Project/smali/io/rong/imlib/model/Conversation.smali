.class public Lio/rong/imlib/model/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;,
        Lio/rong/imlib/model/Conversation$ConversationType;,
        Lio/rong/imlib/model/Conversation$PublicServiceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conversationTitle:Ljava/lang/String;

.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private draft:Ljava/lang/String;

.field private isTop:Z

.field private latestMessage:Lio/rong/imlib/model/MessageContent;

.field private latestMessageId:I

.field private notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

.field private objectName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

.field private receivedTime:J

.field private senderUserId:Ljava/lang/String;

.field private senderUserName:Ljava/lang/String;

.field private sentStatus:Lio/rong/imlib/model/Message$SentStatus;

.field private sentTime:J

.field private targetId:Ljava/lang/String;

.field private unreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lio/rong/imlib/model/Conversation$1;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "className":Ljava/lang/String;
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 369
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 370
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 371
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lio/rong/imlib/model/Conversation;->setUnreadMessageCount(I)V

    .line 372
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setTop(Z)V

    .line 373
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setLatestMessageId(I)V

    .line 374
    new-instance v3, Lio/rong/imlib/model/Message$ReceivedStatus;

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 375
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 376
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/rong/imlib/model/Conversation;->setReceivedTime(J)V

    .line 377
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/rong/imlib/model/Conversation;->setSentTime(J)V

    .line 378
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setObjectName(Ljava/lang/String;)V

    .line 379
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setSenderUserId(Ljava/lang/String;)V

    .line 380
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setSenderUserName(Ljava/lang/String;)V

    .line 382
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    const/4 v2, 0x0

    .line 385
    .local v2, "loader":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 386
    invoke-static {p1, v2}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/MessageContent;

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setLatestMessage(Lio/rong/imlib/model/MessageContent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v2    # "loader":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :goto_1
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setDraft(Ljava/lang/String;)V

    .line 394
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setPortraitUrl(Ljava/lang/String;)V

    .line 395
    return-void

    .line 372
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 387
    .restart local v2    # "loader":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 391
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "loader":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :cond_1
    const-class v3, Lio/rong/imlib/model/MessageContent;

    invoke-static {p1, v3}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/MessageContent;

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Conversation;->setLatestMessage(Lio/rong/imlib/model/MessageContent;)V

    goto :goto_1
.end method

.method public static obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 1
    .param p0, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 26
    .local v0, "model":Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p0}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 27
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public getConversationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->conversationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->draft:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMessage()Lio/rong/imlib/model/MessageContent;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->latestMessage:Lio/rong/imlib/model/MessageContent;

    return-object v0
.end method

.method public getLatestMessageId()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lio/rong/imlib/model/Conversation;->latestMessageId:I

    return v0
.end method

.method public getNotificationStatus()Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

    return-object v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lio/rong/imlib/model/Conversation;->receivedTime:J

    return-wide v0
.end method

.method public getSenderUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->senderUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->senderUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()Lio/rong/imlib/model/Message$SentStatus;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lio/rong/imlib/model/Conversation;->sentTime:J

    return-wide v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lio/rong/imlib/model/Conversation;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lio/rong/imlib/model/Conversation;->unreadMessageCount:I

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lio/rong/imlib/model/Conversation;->isTop:Z

    return v0
.end method

.method public setConversationTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationTitle"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->conversationTitle:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 74
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 75
    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .param p1, "draft"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->draft:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setLatestMessage(Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .param p1, "latestMessage"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 300
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->latestMessage:Lio/rong/imlib/model/MessageContent;

    .line 301
    return-void
.end method

.method public setLatestMessageId(I)V
    .locals 0
    .param p1, "latestMessageId"    # I

    .prologue
    .line 282
    iput p1, p0, Lio/rong/imlib/model/Conversation;->latestMessageId:I

    .line 283
    return-void
.end method

.method public setNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 0
    .param p1, "notificationStatus"    # Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .prologue
    .line 355
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->notificationStatus:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .line 356
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->objectName:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "portraitUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->portraitUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V
    .locals 0
    .param p1, "receivedStatus"    # Lio/rong/imlib/model/Message$ReceivedStatus;

    .prologue
    .line 168
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

    .line 169
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .param p1, "receivedTime"    # J

    .prologue
    .line 204
    iput-wide p1, p0, Lio/rong/imlib/model/Conversation;->receivedTime:J

    .line 205
    return-void
.end method

.method public setSenderUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderUserId"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->senderUserId:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setSenderUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderUserName"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->senderUserName:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V
    .locals 0
    .param p1, "sentStatus"    # Lio/rong/imlib/model/Message$SentStatus;

    .prologue
    .line 186
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    .line 187
    return-void
.end method

.method public setSentTime(J)V
    .locals 1
    .param p1, "sentTime"    # J

    .prologue
    .line 222
    iput-wide p1, p0, Lio/rong/imlib/model/Conversation;->sentTime:J

    .line 223
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lio/rong/imlib/model/Conversation;->targetId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lio/rong/imlib/model/Conversation;->isTop:Z

    .line 151
    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 0
    .param p1, "unreadMessageCount"    # I

    .prologue
    .line 132
    iput p1, p0, Lio/rong/imlib/model/Conversation;->unreadMessageCount:I

    .line 133
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 403
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getUnreadMessageCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 406
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->isTop()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 407
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 408
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 409
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 410
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getReceivedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 411
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 412
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSenderUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 416
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getDraft()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getPortraitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 418
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 406
    goto :goto_1

    .line 408
    :cond_2
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$ReceivedStatus;->getFlag()I

    move-result v0

    goto :goto_2

    .line 409
    :cond_3
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v1

    goto :goto_3
.end method
