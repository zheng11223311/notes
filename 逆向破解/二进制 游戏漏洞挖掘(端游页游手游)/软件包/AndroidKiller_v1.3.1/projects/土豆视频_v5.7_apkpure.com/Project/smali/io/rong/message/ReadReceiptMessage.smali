.class public Lio/rong/message/ReadReceiptMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "ReadReceiptMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    value = "RC:ReadNtf"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/ReadReceiptMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastMessageSendTime:J

.field private messageUId:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lio/rong/message/ReadReceiptMessage$1;

    invoke-direct {v0}, Lio/rong/message/ReadReceiptMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/ReadReceiptMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 130
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "sendTime"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2}, Lio/rong/message/ReadReceiptMessage;->setLastMessageSendTime(J)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/message/ReadReceiptMessage;->setType(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1
    .param p1, "sendTime"    # J
    .param p3, "uId"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2}, Lio/rong/message/ReadReceiptMessage;->setLastMessageSendTime(J)V

    .line 45
    invoke-virtual {p0, p3}, Lio/rong/message/ReadReceiptMessage;->setMessageUId(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p4}, Lio/rong/message/ReadReceiptMessage;->setType(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 50
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/rong/message/ReadReceiptMessage;->setLastMessageSendTime(J)V

    .line 51
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/ReadReceiptMessage;->setMessageUId(Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/rong/message/ReadReceiptMessage;->setType(I)V

    .line 53
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 56
    const/4 v2, 0x0

    .line 59
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "jsonStr":Ljava/lang/String;
    .local v3, "jsonStr":Ljava/lang/String;
    move-object v2, v3

    .line 65
    .end local v3    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "jsonStr":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "lastMessageSendTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "lastMessageSendTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/rong/message/ReadReceiptMessage;->setLastMessageSendTime(J)V

    .line 70
    :cond_0
    const-string v4, "messageUId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    const-string v4, "messageUId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ReadReceiptMessage;->setMessageUId(Ljava/lang/String;)V

    .line 73
    :cond_1
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lio/rong/message/ReadReceiptMessage;->setType(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "ReadReceiptMessage"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "ReadReceiptMessage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static obtain(J)Lio/rong/message/ReadReceiptMessage;
    .locals 2
    .param p0, "sendTime"    # J

    .prologue
    .line 138
    new-instance v0, Lio/rong/message/ReadReceiptMessage;

    invoke-direct {v0}, Lio/rong/message/ReadReceiptMessage;-><init>()V

    .line 139
    .local v0, "obj":Lio/rong/message/ReadReceiptMessage;
    invoke-virtual {v0, p0, p1}, Lio/rong/message/ReadReceiptMessage;->setLastMessageSendTime(J)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/rong/message/ReadReceiptMessage;->setType(I)V

    .line 141
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 6

    .prologue
    .line 107
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "lastMessageSendTime"

    invoke-virtual {p0}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {p0}, Lio/rong/message/ReadReceiptMessage;->getMessageUId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const-string v2, "messageUId"

    invoke-virtual {p0}, Lio/rong/message/ReadReceiptMessage;->getMessageUId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_0
    const-string/jumbo v2, "type"

    invoke-virtual {p0}, Lio/rong/message/ReadReceiptMessage;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 125
    :goto_1
    return-object v2

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 125
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLastMessageSendTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lio/rong/message/ReadReceiptMessage;->lastMessageSendTime:J

    return-wide v0
.end method

.method public getMessageUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/rong/message/ReadReceiptMessage;->messageUId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lio/rong/message/ReadReceiptMessage;->type:I

    return v0
.end method

.method public setLastMessageSendTime(J)V
    .locals 1
    .param p1, "lastMessageSendTime"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lio/rong/message/ReadReceiptMessage;->lastMessageSendTime:J

    .line 87
    return-void
.end method

.method public setMessageUId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageUId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lio/rong/message/ReadReceiptMessage;->messageUId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 102
    iput p1, p0, Lio/rong/message/ReadReceiptMessage;->type:I

    .line 103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 152
    invoke-virtual {p0}, Lio/rong/message/ReadReceiptMessage;->getMessageUId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lio/rong/message/ReadReceiptMessage;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 154
    return-void
.end method
