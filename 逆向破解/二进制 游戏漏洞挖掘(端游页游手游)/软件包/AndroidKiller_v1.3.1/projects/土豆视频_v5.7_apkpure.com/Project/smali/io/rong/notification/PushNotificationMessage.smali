.class public Lio/rong/notification/PushNotificationMessage;
.super Ljava/lang/Object;
.source "PushNotificationMessage.java"


# instance fields
.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private extra:Ljava/lang/String;

.field private objectName:Ljava/lang/String;

.field private pushContent:Ljava/lang/String;

.field private pushData:Ljava/lang/String;

.field private pushId:Ljava/lang/String;

.field private pushTitle:Ljava/lang/String;

.field private receivedTime:J

.field private senderId:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private senderPortraitUri:Landroid/net/Uri;

.field private targetId:Ljava/lang/String;

.field private targetUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetUserId"    # Ljava/lang/String;
    .param p3, "targetUserName"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lio/rong/notification/PushNotificationMessage;

    invoke-direct {v0}, Lio/rong/notification/PushNotificationMessage;-><init>()V

    .line 30
    .local v0, "msg":Lio/rong/notification/PushNotificationMessage;
    if-nez p2, :cond_0

    .line 31
    const-string v1, "PushNotificationMessage"

    const-string/jumbo v2, "the targetId can\'t be null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    .line 40
    .end local v0    # "msg":Lio/rong/notification/PushNotificationMessage;
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "msg":Lio/rong/notification/PushNotificationMessage;
    :cond_0
    invoke-virtual {v0, p0}, Lio/rong/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Lio/rong/notification/PushNotificationMessage;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 37
    invoke-virtual {v0, p2}, Lio/rong/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p3}, Lio/rong/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->pushContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPushData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->pushData:Ljava/lang/String;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->pushTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lio/rong/notification/PushNotificationMessage;->receivedTime:J

    return-wide v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderPortraitUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->senderPortraitUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lio/rong/notification/PushNotificationMessage;->targetUserName:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 52
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 53
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->extra:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->objectName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPushContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->pushContent:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPushData(Ljava/lang/String;)V
    .locals 0
    .param p1, "appDataContent"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->pushData:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->pushId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPushTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->pushTitle:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lio/rong/notification/PushNotificationMessage;->receivedTime:J

    .line 61
    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->senderId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->senderName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setSenderPortraitUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 92
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->senderPortraitUri:Landroid/net/Uri;

    .line 93
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->targetId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTargetUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lio/rong/notification/PushNotificationMessage;->targetUserName:Ljava/lang/String;

    .line 109
    return-void
.end method
