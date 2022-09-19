.class public Lio/rong/imlib/model/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/Message$ReceivedStatus;,
        Lio/rong/imlib/model/Message$SentStatus;,
        Lio/rong/imlib/model/Message$MessageDirection;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UId:Ljava/lang/String;

.field private content:Lio/rong/imlib/model/MessageContent;

.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private extra:Ljava/lang/String;

.field private messageDirection:Lio/rong/imlib/model/Message$MessageDirection;

.field private messageId:I

.field private objectName:Ljava/lang/String;

.field private receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

.field private receivedTime:J

.field private senderUserId:Ljava/lang/String;

.field private sentStatus:Lio/rong/imlib/model/Message$SentStatus;

.field private sentTime:J

.field private targetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 576
    new-instance v0, Lio/rong/imlib/model/Message$1;

    invoke-direct {v0}, Lio/rong/imlib/model/Message$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "className":Ljava/lang/String;
    const/4 v2, 0x0

    .line 534
    .local v2, "loader":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 539
    :goto_0
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setTargetId(Ljava/lang/String;)V

    .line 540
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 541
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 542
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/rong/imlib/model/Message;->setReceivedTime(J)V

    .line 543
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 544
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 545
    invoke-static {p1, v2}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/MessageContent;

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 546
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setExtra(Ljava/lang/String;)V

    .line 547
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setUId(Ljava/lang/String;)V

    .line 549
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 550
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Message$MessageDirection;->setValue(I)Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 551
    new-instance v3, Lio/rong/imlib/model/Message$ReceivedStatus;

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 552
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 553
    return-void

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public constructor <init>(Lio/rong/imlib/NativeObject$Message;)V
    .locals 2
    .param p1, "msg"    # Lio/rong/imlib/NativeObject$Message;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getConversationType()I

    move-result v0

    invoke-static {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/Message;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 61
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/Message;->targetId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getMessageId()I

    move-result v0

    iput v0, p0, Lio/rong/imlib/model/Message;->messageId:I

    .line 63
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getMessageDirection()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    :goto_0
    iput-object v0, p0, Lio/rong/imlib/model/Message;->messageDirection:Lio/rong/imlib/model/Message$MessageDirection;

    .line 64
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/Message;->senderUserId:Ljava/lang/String;

    .line 65
    new-instance v0, Lio/rong/imlib/model/Message$ReceivedStatus;

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getReadStatus()I

    move-result v1

    invoke-direct {v0, v1}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    iput-object v0, p0, Lio/rong/imlib/model/Message;->receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

    .line 66
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getSentStatus()I

    move-result v0

    invoke-static {v0}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/Message;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    .line 67
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getReceivedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/model/Message;->receivedTime:J

    .line 68
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getSentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/model/Message;->sentTime:J

    .line 69
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/Message;->objectName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Message;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/Message;->extra:Ljava/lang/String;

    .line 72
    return-void

    .line 63
    :cond_0
    sget-object v0, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 1
    .param p0, "targetId"    # Ljava/lang/String;
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 75
    new-instance v0, Lio/rong/imlib/model/Message;

    invoke-direct {v0}, Lio/rong/imlib/model/Message;-><init>()V

    .line 76
    .local v0, "obj":Lio/rong/imlib/model/Message;
    invoke-virtual {v0, p0}, Lio/rong/imlib/model/Message;->setTargetId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Message;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 78
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 592
    if-nez p1, :cond_1

    .line 599
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 595
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lio/rong/imlib/model/Message;

    if-eqz v1, :cond_2

    .line 596
    iget v1, p0, Lio/rong/imlib/model/Message;->messageId:I

    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 599
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContent()Lio/rong/imlib/model/MessageContent;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lio/rong/imlib/model/Message;->content:Lio/rong/imlib/model/MessageContent;

    return-object v0
.end method

.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/rong/imlib/model/Message;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lio/rong/imlib/model/Message;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imlib/model/Message;->messageDirection:Lio/rong/imlib/model/Message$MessageDirection;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lio/rong/imlib/model/Message;->messageId:I

    return v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lio/rong/imlib/model/Message;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lio/rong/imlib/model/Message;->receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

    return-object v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lio/rong/imlib/model/Message;->receivedTime:J

    return-wide v0
.end method

.method public getSenderUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lio/rong/imlib/model/Message;->senderUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()Lio/rong/imlib/model/Message$SentStatus;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lio/rong/imlib/model/Message;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lio/rong/imlib/model/Message;->sentTime:J

    return-wide v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lio/rong/imlib/model/Message;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imlib/model/Message;->UId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .param p1, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 280
    iput-object p1, p0, Lio/rong/imlib/model/Message;->content:Lio/rong/imlib/model/MessageContent;

    .line 281
    return-void
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 99
    iput-object p1, p0, Lio/rong/imlib/model/Message;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 100
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lio/rong/imlib/model/Message;->extra:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V
    .locals 0
    .param p1, "messageDirection"    # Lio/rong/imlib/model/Message$MessageDirection;

    .prologue
    .line 158
    iput-object p1, p0, Lio/rong/imlib/model/Message;->messageDirection:Lio/rong/imlib/model/Message$MessageDirection;

    .line 159
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 140
    iput p1, p0, Lio/rong/imlib/model/Message;->messageId:I

    .line 141
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lio/rong/imlib/model/Message;->objectName:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V
    .locals 0
    .param p1, "receivedStatus"    # Lio/rong/imlib/model/Message$ReceivedStatus;

    .prologue
    .line 176
    iput-object p1, p0, Lio/rong/imlib/model/Message;->receivedStatus:Lio/rong/imlib/model/Message$ReceivedStatus;

    .line 177
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .param p1, "receivedTime"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lio/rong/imlib/model/Message;->receivedTime:J

    .line 217
    return-void
.end method

.method public setSenderUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderUserId"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lio/rong/imlib/model/Message;->senderUserId:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V
    .locals 0
    .param p1, "sentStatus"    # Lio/rong/imlib/model/Message$SentStatus;

    .prologue
    .line 194
    iput-object p1, p0, Lio/rong/imlib/model/Message;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    .line 195
    return-void
.end method

.method public setSentTime(J)V
    .locals 1
    .param p1, "sentTime"    # J

    .prologue
    .line 238
    iput-wide p1, p0, Lio/rong/imlib/model/Message;->sentTime:J

    .line 239
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lio/rong/imlib/model/Message;->targetId:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setUId(Ljava/lang/String;)V
    .locals 0
    .param p1, "UId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lio/rong/imlib/model/Message;->UId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 560
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getReceivedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 562
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 563
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 565
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getUId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 569
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 570
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 571
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 574
    return-void

    .line 569
    :cond_0
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$MessageDirection;->getValue()I

    move-result v0

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$ReceivedStatus;->getFlag()I

    move-result v0

    goto :goto_1

    .line 571
    :cond_2
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v1

    goto :goto_2
.end method
