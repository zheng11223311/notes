.class public Lio/rong/message/ContactNotificationMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "ContactNotificationMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x1
    value = "RC:ContactNtf"
.end annotation


# static fields
.field public static final CONTACT_OPERATION_ACCEPT_RESPONSE:Ljava/lang/String; = "AcceptResponse"

.field public static final CONTACT_OPERATION_REJECT_RESPONSE:Ljava/lang/String; = "RejectResponse"

.field public static final CONTACT_OPERATION_REQUEST:Ljava/lang/String; = "Request"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/ContactNotificationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extra:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private operation:Ljava/lang/String;

.field private sourceUserId:Ljava/lang/String;

.field private targetUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lio/rong/message/ContactNotificationMessage$1;

    invoke-direct {v0}, Lio/rong/message/ContactNotificationMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/ContactNotificationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 133
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/ContactNotificationMessage;->operation:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/ContactNotificationMessage;->sourceUserId:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/ContactNotificationMessage;->targetUserId:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/ContactNotificationMessage;->message:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/ContactNotificationMessage;->extra:Ljava/lang/String;

    .line 138
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/ContactNotificationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 139
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 194
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 195
    const/4 v2, 0x0

    .line 197
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "jsonStr":Ljava/lang/String;
    .local v3, "jsonStr":Ljava/lang/String;
    move-object v2, v3

    .line 203
    .end local v3    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "jsonStr":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "operation"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ContactNotificationMessage;->setOperation(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v4, "sourceUserId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ContactNotificationMessage;->setSourceUserId(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v4, "targetUserId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ContactNotificationMessage;->setTargetUserId(Ljava/lang/String;)V

    .line 208
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ContactNotificationMessage;->setMessage(Ljava/lang/String;)V

    .line 209
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ContactNotificationMessage;->setExtra(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ContactNotificationMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ContactNotificationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/message/ContactNotificationMessage;
    .locals 1
    .param p0, "operation"    # Ljava/lang/String;
    .param p1, "sourceUserId"    # Ljava/lang/String;
    .param p2, "targetUserId"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Lio/rong/message/ContactNotificationMessage;

    invoke-direct {v0}, Lio/rong/message/ContactNotificationMessage;-><init>()V

    .line 152
    .local v0, "obj":Lio/rong/message/ContactNotificationMessage;
    iput-object p0, v0, Lio/rong/message/ContactNotificationMessage;->operation:Ljava/lang/String;

    .line 153
    iput-object p1, v0, Lio/rong/message/ContactNotificationMessage;->sourceUserId:Ljava/lang/String;

    .line 154
    iput-object p2, v0, Lio/rong/message/ContactNotificationMessage;->targetUserId:Ljava/lang/String;

    .line 155
    iput-object p3, v0, Lio/rong/message/ContactNotificationMessage;->message:Ljava/lang/String;

    .line 156
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "operation"

    iget-object v3, p0, Lio/rong/message/ContactNotificationMessage;->operation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string/jumbo v2, "sourceUserId"

    iget-object v3, p0, Lio/rong/message/ContactNotificationMessage;->sourceUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string/jumbo v2, "targetUserId"

    iget-object v3, p0, Lio/rong/message/ContactNotificationMessage;->targetUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    iget-object v2, p0, Lio/rong/message/ContactNotificationMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-string v2, "message"

    iget-object v3, p0, Lio/rong/message/ContactNotificationMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/ContactNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/ContactNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_1
    invoke-virtual {p0}, Lio/rong/message/ContactNotificationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 179
    const-string/jumbo v2, "user"

    invoke-virtual {p0}, Lio/rong/message/ContactNotificationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 190
    :goto_1
    return-object v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 190
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->sourceUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->targetUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lio/rong/message/ContactNotificationMessage;->extra:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lio/rong/message/ContactNotificationMessage;->message:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lio/rong/message/ContactNotificationMessage;->operation:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSourceUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUserId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lio/rong/message/ContactNotificationMessage;->sourceUserId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setTargetUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUserId"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lio/rong/message/ContactNotificationMessage;->targetUserId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->operation:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->sourceUserId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->targetUserId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->message:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lio/rong/message/ContactNotificationMessage;->extra:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lio/rong/message/ContactNotificationMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 233
    return-void
.end method
