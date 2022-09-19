.class public Lio/rong/push/PushProtocalStack$DisconnectMessage;
.super Lio/rong/push/PushProtocalStack$Message;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisconnectMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;
    }
.end annotation


# static fields
.field public static final MESSAGE_LENGTH:I = 0x2


# instance fields
.field private status:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lio/rong/push/PushProtocalStack$Message$Type;->DISCONNECT:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 416
    return-void
.end method

.method public constructor <init>(Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;)V
    .locals 2
    .param p1, "status"    # Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    .prologue
    .line 407
    sget-object v0, Lio/rong/push/PushProtocalStack$Message$Type;->DISCONNECT:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The status of ConnAskMessage can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$DisconnectMessage;->status:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    .line 412
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
    .line 403
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 404
    return-void
.end method


# virtual methods
.method public getStatus()Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$DisconnectMessage;->status:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    return-object v0
.end method

.method protected messageLength()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x2

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
    .line 426
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 427
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 428
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 439
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported CONNACK code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :pswitch_0
    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->RECONNECT:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    iput-object v1, p0, Lio/rong/push/PushProtocalStack$DisconnectMessage;->status:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    .line 441
    :goto_0
    return-void

    .line 433
    :pswitch_1
    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->OTHER_DEVICE_LOGIN:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    iput-object v1, p0, Lio/rong/push/PushProtocalStack$DisconnectMessage;->status:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    goto :goto_0

    .line 436
    :pswitch_2
    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->CLOSURE:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    iput-object v1, p0, Lio/rong/push/PushProtocalStack$DisconnectMessage;->status:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDup(Z)V
    .locals 2
    .param p1, "dup"    # Z

    .prologue
    .line 467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DISCONNECT message does not support the DUP flag"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQos(Lio/rong/push/PushProtocalStack$QoS;)V
    .locals 2
    .param p1, "qos"    # Lio/rong/push/PushProtocalStack$QoS;

    .prologue
    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DISCONNECT message does not support the QoS flag"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetained(Z)V
    .locals 2
    .param p1, "retain"    # Z

    .prologue
    .line 477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DISCONNECT message does not support the RETAIN flag"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeMessage(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 446
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$DisconnectMessage$DisconnectionStatus:[I

    iget-object v1, p0, Lio/rong/push/PushProtocalStack$DisconnectMessage;->status:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CONNACK code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/push/PushProtocalStack$DisconnectMessage;->status:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :pswitch_0
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 459
    :goto_0
    return-void

    .line 451
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 454
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
