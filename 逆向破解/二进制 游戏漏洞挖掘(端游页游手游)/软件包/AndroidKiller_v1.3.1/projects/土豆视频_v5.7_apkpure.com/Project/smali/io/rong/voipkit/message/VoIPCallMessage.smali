.class public Lio/rong/voipkit/message/VoIPCallMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "VoIPCallMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x0
    value = "RC:VoipCallMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/voipkit/message/VoIPCallMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fromId:Ljava/lang/String;

.field private fromUserName:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private remoteControlPort:I

.field private remoteTransferPort:I

.field private sessionId:Ljava/lang/String;

.field private toId:Ljava/lang/String;

.field private toUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lio/rong/voipkit/message/VoIPCallMessage$1;

    invoke-direct {v0}, Lio/rong/voipkit/message/VoIPCallMessage$1;-><init>()V

    sput-object v0, Lio/rong/voipkit/message/VoIPCallMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 169
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->sessionId:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->ip:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteTransferPort:I

    .line 173
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteControlPort:I

    .line 174
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toId:Ljava/lang/String;

    .line 175
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toUserName:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromId:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromUserName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "remoteTransferPort"    # I
    .param p4, "remoteControlPort"    # I
    .param p5, "toId"    # Ljava/lang/String;
    .param p6, "toUserName"    # Ljava/lang/String;
    .param p7, "fromId"    # Ljava/lang/String;
    .param p8, "fromUserName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 88
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->sessionId:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lio/rong/voipkit/message/VoIPCallMessage;->ip:Ljava/lang/String;

    .line 90
    iput p3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteTransferPort:I

    .line 91
    iput p4, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteControlPort:I

    .line 92
    iput-object p5, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toId:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toUserName:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromId:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromUserName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 57
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 58
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 61
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "sessionId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setSessionId(Ljava/lang/String;)V

    .line 63
    const-string v3, "ip"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setIp(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v3, "remoteTransferPort"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setRemoteTransferPort(I)V

    .line 65
    const-string/jumbo v3, "remoteControlPort"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setRemoteControlPort(I)V

    .line 67
    const-string/jumbo v3, "toId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setToId(Ljava/lang/String;)V

    .line 69
    const-string v3, "fromUserName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const-string/jumbo v3, "toUserName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setToUserName(Ljava/lang/String;)V

    .line 72
    :cond_0
    const-string v3, "fromId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setFromId(Ljava/lang/String;)V

    .line 74
    const-string v3, "fromUserName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const-string v3, "fromUserName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPCallMessage;->setFromUserName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 5

    .prologue
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "sessionId"

    iget-object v3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v2, "ip"

    iget-object v3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v2, "remoteTransferPort"

    iget v3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteTransferPort:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v2, "remoteControlPort"

    iget v3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteControlPort:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v2, "toId"

    iget-object v3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object v2, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toUserName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    const-string/jumbo v2, "toUserName"

    iget-object v3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toUserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_0
    const-string v2, "fromId"

    iget-object v3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v2, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromUserName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const-string v2, "fromUserName"

    iget-object v3, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromUserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_1
    const-string v2, "econde"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteControlPort()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteControlPort:I

    return v0
.end method

.method public getRemoteTransferPort()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteTransferPort:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getToId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toId:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toUserName:Ljava/lang/String;

    return-object v0
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromId"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromId:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setFromUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromUserName"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromUserName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->ip:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setRemoteControlPort(I)V
    .locals 0
    .param p1, "remoteControlPort"    # I

    .prologue
    .line 128
    iput p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteControlPort:I

    .line 129
    return-void
.end method

.method public setRemoteTransferPort(I)V
    .locals 0
    .param p1, "remoteTransferPort"    # I

    .prologue
    .line 120
    iput p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteTransferPort:I

    .line 121
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->sessionId:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setToId(Ljava/lang/String;)V
    .locals 0
    .param p1, "toId"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setToUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "toUserName"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toUserName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->sessionId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->ip:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteTransferPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 185
    iget v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->remoteControlPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 186
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->toUserName:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPCallMessage;->fromUserName:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 190
    return-void
.end method
