.class synthetic Lio/rong/push/PushProtocalStack$1;
.super Ljava/lang/Object;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

.field static final synthetic $SwitchMap$io$rong$push$PushProtocalStack$DisconnectMessage$DisconnectionStatus:[I

.field static final synthetic $SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 676
    invoke-static {}, Lio/rong/push/PushProtocalStack$Message$Type;->values()[Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    :try_start_0
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$Message$Type;->CONNACK:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$Message$Type;->PUBLISH:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$Message$Type;->PINGRESP:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$Message$Type;->CONNECT:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$Message$Type;->PINGREQ:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$Message$Type;->DISCONNECT:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    .line 446
    :goto_5
    invoke-static {}, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->values()[Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$DisconnectMessage$DisconnectionStatus:[I

    :try_start_6
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$DisconnectMessage$DisconnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->RECONNECT:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$DisconnectMessage$DisconnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->OTHER_DEVICE_LOGIN:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$DisconnectMessage$DisconnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->CLOSURE:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    .line 110
    :goto_8
    invoke-static {}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->values()[Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    :try_start_9
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ACCEPTED:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->UNACCEPTABLE_PROTOCOL_VERSION:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->IDENTIFIER_REJECTED:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->SERVER_UNAVAILABLE:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->BAD_USERNAME_OR_PASSWORD:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->NOT_AUTHORIZED:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v0, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$ConnAckMessage$ConnectionStatus:[I

    sget-object v1, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->REDIRECT:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    return-void

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    .line 446
    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    goto :goto_6

    .line 676
    :catch_a
    move-exception v0

    goto/16 :goto_5

    :catch_b
    move-exception v0

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_1

    :catch_f
    move-exception v0

    goto/16 :goto_0
.end method
