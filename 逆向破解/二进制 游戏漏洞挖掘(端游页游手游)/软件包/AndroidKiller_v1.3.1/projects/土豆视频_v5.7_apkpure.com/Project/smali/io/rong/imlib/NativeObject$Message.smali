.class public Lio/rong/imlib/NativeObject$Message;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field private UId:Ljava/lang/String;

.field private content:[B

.field private conversationType:I

.field private extra:Ljava/lang/String;

.field private messageDirection:Z

.field private messageId:I

.field private objectName:Ljava/lang/String;

.field private pushContent:Ljava/lang/String;

.field private readStatus:I

.field private receivedTime:J

.field private senderUserId:Ljava/lang/String;

.field private sentStatus:I

.field private sentTime:J

.field private targetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "conversation_category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/rong/imlib/NativeObject$Message;->conversationType:I

    .line 134
    const-string/jumbo v0, "target_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->targetId:Ljava/lang/String;

    .line 135
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/rong/imlib/NativeObject$Message;->messageId:I

    .line 136
    const-string v0, "message_direction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imlib/NativeObject$Message;->messageDirection:Z

    .line 137
    const-string/jumbo v0, "sender_user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->senderUserId:Ljava/lang/String;

    .line 138
    const-string v0, "read_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/rong/imlib/NativeObject$Message;->readStatus:I

    .line 139
    const-string/jumbo v0, "send_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/rong/imlib/NativeObject$Message;->sentStatus:I

    .line 140
    const-string v0, "receive_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/NativeObject$Message;->receivedTime:J

    .line 141
    const-string/jumbo v0, "send_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/NativeObject$Message;->sentTime:J

    .line 142
    const-string v0, "object_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->objectName:Ljava/lang/String;

    .line 143
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->content:[B

    .line 144
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->extra:Ljava/lang/String;

    .line 145
    const-string v0, "push"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeObject$Message;->pushContent:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->content:[B

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lio/rong/imlib/NativeObject$Message;->conversationType:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDirection()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lio/rong/imlib/NativeObject$Message;->messageDirection:Z

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lio/rong/imlib/NativeObject$Message;->messageId:I

    return v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->pushContent:Ljava/lang/String;

    return-object v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lio/rong/imlib/NativeObject$Message;->readStatus:I

    return v0
.end method

.method public getReceivedTime()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Message;->receivedTime:J

    return-wide v0
.end method

.method public getSenderUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->senderUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lio/rong/imlib/NativeObject$Message;->sentStatus:I

    return v0
.end method

.method public getSentTime()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$Message;->sentTime:J

    return-wide v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lio/rong/imlib/NativeObject$Message;->UId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 244
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->content:[B

    .line 245
    return-void
.end method

.method public setConversationType(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 172
    iput p1, p0, Lio/rong/imlib/NativeObject$Message;->conversationType:I

    .line 173
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->extra:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setMessageDirection(Z)V
    .locals 0
    .param p1, "messageDirection"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lio/rong/imlib/NativeObject$Message;->messageDirection:Z

    .line 197
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 188
    iput p1, p0, Lio/rong/imlib/NativeObject$Message;->messageId:I

    .line 189
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->objectName:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setPushContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushContent"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->pushContent:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setReadStatus(I)V
    .locals 0
    .param p1, "readStatus"    # I

    .prologue
    .line 204
    iput p1, p0, Lio/rong/imlib/NativeObject$Message;->readStatus:I

    .line 205
    return-void
.end method

.method public setReceivedTime(J)V
    .locals 1
    .param p1, "receivedTime"    # J

    .prologue
    .line 220
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Message;->receivedTime:J

    .line 221
    return-void
.end method

.method public setSenderUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderUserId"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->senderUserId:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setSentStatus(I)V
    .locals 0
    .param p1, "sentStatus"    # I

    .prologue
    .line 212
    iput p1, p0, Lio/rong/imlib/NativeObject$Message;->sentStatus:I

    .line 213
    return-void
.end method

.method public setSentTime(J)V
    .locals 1
    .param p1, "sentTime"    # J

    .prologue
    .line 228
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$Message;->sentTime:J

    .line 229
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->targetId:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setUId(Ljava/lang/String;)V
    .locals 0
    .param p1, "UId"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lio/rong/imlib/NativeObject$Message;->UId:Ljava/lang/String;

    .line 157
    return-void
.end method
