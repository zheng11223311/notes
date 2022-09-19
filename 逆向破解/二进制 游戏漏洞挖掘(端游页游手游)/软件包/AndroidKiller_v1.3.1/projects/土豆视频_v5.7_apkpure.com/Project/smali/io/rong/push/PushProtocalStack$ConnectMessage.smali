.class public Lio/rong/push/PushProtocalStack$ConnectMessage;
.super Lio/rong/push/PushProtocalStack$Message;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectMessage"
.end annotation


# static fields
.field private static CONNECT_HEADER_SIZE:I


# instance fields
.field private cleanSession:Z

.field private clientId:Ljava/lang/String;

.field private hasPassword:Z

.field private hasUsername:Z

.field private hasWill:Z

.field private keepAlive:I

.field private password:Ljava/lang/String;

.field private protocolId:Ljava/lang/String;

.field private protocolVersion:B

.field private retainWill:Z

.field private username:Ljava/lang/String;

.field private will:Ljava/lang/String;

.field private willQoS:Lio/rong/push/PushProtocalStack$QoS;

.field private willTopic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0xc

    sput v0, Lio/rong/push/PushProtocalStack$ConnectMessage;->CONNECT_HEADER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lio/rong/push/PushProtocalStack$Message$Type;->CONNECT:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 176
    const-string v0, "MQIsdp"

    iput-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    .line 177
    const/4 v0, 0x3

    iput-byte v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolVersion:B

    .line 193
    return-void
.end method

.method public constructor <init>(Lio/rong/push/PushProtocalStack$Message$Header;)V
    .locals 1
    .param p1, "header"    # Lio/rong/push/PushProtocalStack$Message$Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 176
    const-string v0, "MQIsdp"

    iput-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    .line 177
    const/4 v0, 0x3

    iput-byte v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolVersion:B

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "cleanSession"    # Z
    .param p3, "keepAlive"    # I

    .prologue
    .line 200
    sget-object v0, Lio/rong/push/PushProtocalStack$Message$Type;->CONNECT:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 176
    const-string v0, "MQIsdp"

    iput-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    .line 177
    const/4 v0, 0x3

    iput-byte v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolVersion:B

    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client id cannot be null and must be at most 64 characters long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    .line 205
    iput-boolean p2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->cleanSession:Z

    .line 206
    iput p3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->keepAlive:I

    .line 207
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepAlive()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->keepAlive:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()B
    .locals 1

    .prologue
    .line 336
    iget-byte v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolVersion:B

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWill()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    return-object v0
.end method

.method public getWillQoS()Lio/rong/push/PushProtocalStack$QoS;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/PushProtocalStack$QoS;

    return-object v0
.end method

.method public getWillTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    return-object v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasPassword:Z

    return v0
.end method

.method public hasUsername()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasUsername:Z

    return v0
.end method

.method public hasWill()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasWill:Z

    return v0
.end method

.method public isCleanSession()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->cleanSession:Z

    return v0
.end method

.method public isWillRetained()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->retainWill:Z

    return v0
.end method

.method protected messageLength()I
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1

    .line 212
    .local v0, "payloadSize":I
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 213
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 214
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 215
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 216
    sget v1, Lio/rong/push/PushProtocalStack$ConnectMessage;->CONNECT_HEADER_SIZE:I

    add-int/2addr v1, v0

    return v1
.end method

.method protected readMessage(Ljava/io/InputStream;I)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "msgLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 221
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 222
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    .line 223
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolVersion:B

    .line 224
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 225
    .local v0, "cFlags":B
    and-int/lit16 v2, v0, 0x80

    if-lez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasUsername:Z

    .line 226
    and-int/lit8 v2, v0, 0x40

    if-lez v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasPassword:Z

    .line 227
    and-int/lit8 v2, v0, 0x20

    if-lez v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->retainWill:Z

    .line 228
    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lio/rong/push/PushProtocalStack$QoS;->valueOf(I)Lio/rong/push/PushProtocalStack$QoS;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/PushProtocalStack$QoS;

    .line 229
    and-int/lit8 v2, v0, 0x4

    if-lez v2, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasWill:Z

    .line 230
    and-int/lit8 v2, v0, 0x20

    if-lez v2, :cond_7

    :goto_4
    iput-boolean v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->cleanSession:Z

    .line 231
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->keepAlive:I

    .line 232
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    .line 233
    iget-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasWill:Z

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    .line 235
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    .line 237
    :cond_0
    iget-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasUsername:Z

    if-eqz v2, :cond_1

    .line 239
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :cond_1
    :goto_5
    iget-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasPassword:Z

    if-eqz v2, :cond_2

    .line 246
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :cond_2
    :goto_6
    return-void

    :cond_3
    move v2, v4

    .line 225
    goto :goto_0

    :cond_4
    move v2, v4

    .line 226
    goto :goto_1

    :cond_5
    move v2, v4

    .line 227
    goto :goto_2

    :cond_6
    move v2, v4

    .line 229
    goto :goto_3

    :cond_7
    move v3, v4

    .line 230
    goto :goto_4

    .line 247
    :catch_0
    move-exception v2

    goto :goto_6

    .line 240
    :catch_1
    move-exception v2

    goto :goto_5
.end method

.method public setCredentials(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/rong/push/PushProtocalStack$ConnectMessage;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is not valid to supply a password without supplying a username."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    .line 294
    iput-object p2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasUsername:Z

    .line 296
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasPassword:Z

    .line 298
    return-void

    :cond_2
    move v0, v2

    .line 295
    goto :goto_0

    :cond_3
    move v1, v2

    .line 296
    goto :goto_1
.end method

.method public setDup(Z)V
    .locals 2
    .param p1, "dup"    # Z

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNECT messages don\'t use the DUP flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQos(Lio/rong/push/PushProtocalStack$QoS;)V
    .locals 2
    .param p1, "qos"    # Lio/rong/push/PushProtocalStack$QoS;

    .prologue
    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNECT messages don\'t use the QoS flags."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetained(Z)V
    .locals 2
    .param p1, "retain"    # Z

    .prologue
    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNECT messages don\'t use the RETAIN flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWill(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "willTopic"    # Ljava/lang/String;
    .param p2, "will"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lio/rong/push/PushProtocalStack$QoS;->AT_MOST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/rong/push/PushProtocalStack$ConnectMessage;->setWill(Ljava/lang/String;Ljava/lang/String;Lio/rong/push/PushProtocalStack$QoS;Z)V

    .line 302
    return-void
.end method

.method public setWill(Ljava/lang/String;Ljava/lang/String;Lio/rong/push/PushProtocalStack$QoS;Z)V
    .locals 4
    .param p1, "willTopic"    # Ljava/lang/String;
    .param p2, "will"    # Ljava/lang/String;
    .param p3, "willQoS"    # Lio/rong/push/PushProtocalStack$QoS;
    .param p4, "retainWill"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    if-nez p1, :cond_1

    move v3, v0

    :goto_0
    if-nez p2, :cond_2

    move v2, v0

    :goto_1
    xor-int/2addr v2, v3

    if-nez v2, :cond_0

    if-nez p2, :cond_3

    move v3, v0

    :goto_2
    if-nez p3, :cond_4

    move v2, v0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set willTopic, will or willQoS value independently"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v1

    .line 305
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    .line 309
    :cond_5
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    .line 310
    iput-object p2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/PushProtocalStack$QoS;

    .line 312
    iput-boolean p4, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->retainWill:Z

    .line 313
    if-eqz p1, :cond_6

    :goto_4
    iput-boolean v0, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasWill:Z

    .line 314
    return-void

    :cond_6
    move v0, v1

    .line 313
    goto :goto_4
.end method

.method protected writeMessage(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 256
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 257
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 258
    iget-byte v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->protocolVersion:B

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 259
    iget-boolean v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->cleanSession:Z

    if-eqz v3, :cond_4

    const/4 v1, 0x2

    .line 260
    .local v1, "flags":I
    :goto_0
    iget-boolean v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasWill:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    :goto_1
    or-int/2addr v1, v3

    .line 261
    iget-object v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/PushProtocalStack$QoS;

    if-nez v3, :cond_6

    move v3, v2

    :goto_2
    or-int/2addr v1, v3

    .line 262
    iget-boolean v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->retainWill:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x20

    :goto_3
    or-int/2addr v1, v3

    .line 263
    iget-boolean v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasPassword:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x40

    :goto_4
    or-int/2addr v1, v3

    .line 264
    iget-boolean v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasUsername:Z

    if-eqz v3, :cond_0

    const/16 v2, 0x80

    :cond_0
    or-int/2addr v1, v2

    .line 265
    int-to-byte v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 266
    iget v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->keepAlive:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 268
    iget-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 269
    iget-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasWill:Z

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willTopic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->will:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasUsername:Z

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 276
    :cond_2
    iget-boolean v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->hasPassword:Z

    if-eqz v2, :cond_3

    .line 277
    iget-object v2, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 280
    :cond_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 281
    return-void

    .end local v1    # "flags":I
    :cond_4
    move v1, v2

    .line 259
    goto :goto_0

    .restart local v1    # "flags":I
    :cond_5
    move v3, v2

    .line 260
    goto :goto_1

    .line 261
    :cond_6
    iget-object v3, p0, Lio/rong/push/PushProtocalStack$ConnectMessage;->willQoS:Lio/rong/push/PushProtocalStack$QoS;

    iget v3, v3, Lio/rong/push/PushProtocalStack$QoS;->val:I

    shl-int/lit8 v3, v3, 0x3

    goto :goto_2

    :cond_7
    move v3, v2

    .line 262
    goto :goto_3

    :cond_8
    move v3, v2

    .line 263
    goto :goto_4
.end method
