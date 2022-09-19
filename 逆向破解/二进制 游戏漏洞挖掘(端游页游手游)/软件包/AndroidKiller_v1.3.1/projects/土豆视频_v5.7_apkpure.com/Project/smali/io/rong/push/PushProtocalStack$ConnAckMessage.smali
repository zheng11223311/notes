.class public Lio/rong/push/PushProtocalStack$ConnAckMessage;
.super Lio/rong/push/PushProtocalStack$Message;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnAckMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final MESSAGE_LENGTH:I = 0x2


# instance fields
.field private status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lio/rong/push/PushProtocalStack$Message$Type;->CONNACK:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;)V
    .locals 2
    .param p1, "status"    # Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    .prologue
    .line 50
    sget-object v0, Lio/rong/push/PushProtocalStack$Message$Type;->CONNACK:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The status of ConnAskMessage can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    .line 55
    return-void
.end method

.method public constructor <init>(Lio/rong/push/PushProtocalStack$Message$Header;)V
    .locals 0
    .param p1, "header"    # Lio/rong/push/PushProtocalStack$Message$Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getStatus()Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    return-object v0
.end method

.method protected messageLength()I
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x2

    .line 61
    .local v0, "length":I
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    invoke-static {v1}, Lio/rong/push/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 65
    :cond_0
    return v0
.end method

.method protected readMessage(Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "msgLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 72
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 73
    .local v1, "result":I
    packed-switch v1, :pswitch_data_0

    .line 96
    const-string v2, "PushProtocol"

    const-string v3, "Unsupported CONNACK code"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v2, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->REDIRECT:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    .line 101
    :goto_0
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    .line 102
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    .line 105
    .end local v0    # "dis":Ljava/io/DataInputStream;
    :cond_0
    return-void

    .line 75
    :pswitch_0
    sget-object v2, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ACCEPTED:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v2, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->UNACCEPTABLE_PROTOCOL_VERSION:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 81
    :pswitch_2
    sget-object v2, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->IDENTIFIER_REJECTED:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 84
    :pswitch_3
    sget-object v2, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->SERVER_UNAVAILABLE:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 87
    :pswitch_4
    sget-object v2, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->BAD_USERNAME_OR_PASSWORD:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 90
    :pswitch_5
    sget-object v2, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->NOT_AUTHORIZED:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 93
    :pswitch_6
    sget-object v2, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->REDIRECT:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setDup(Z)V
    .locals 2
    .param p1, "dup"    # Z

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNACK messages don\'t use the DUP flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQos(Lio/rong/push/PushProtocalStack$QoS;)V
    .locals 2
    .param p1, "qos"    # Lio/rong/push/PushProtocalStack$QoS;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNACK messages don\'t use the QoS flags."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetained(Z)V
    .locals 2
    .param p1, "retain"    # Z

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CONNACK messages don\'t use the RETAIN flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    .line 149
    return-void
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
    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 110
    sget-object v1, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    iget-object v2, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v2}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 133
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported CONNACK code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->status:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :pswitch_0
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 136
    :goto_0
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$ConnAckMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 141
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    :cond_0
    return-void

    .line 115
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 118
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 121
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 124
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 127
    :pswitch_5
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 130
    :pswitch_6
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
