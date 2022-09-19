.class public Lio/rong/message/InformationNotificationMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "InformationNotificationMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x1
    value = "RC:InfoNtf"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/InformationNotificationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected extra:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lio/rong/message/InformationNotificationMessage$1;

    invoke-direct {v0}, Lio/rong/message/InformationNotificationMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/InformationNotificationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 145
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/InformationNotificationMessage;->setMessage(Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/InformationNotificationMessage;->setExtra(Ljava/lang/String;)V

    .line 147
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/InformationNotificationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 172
    invoke-virtual {p0, p1}, Lio/rong/message/InformationNotificationMessage;->setMessage(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 89
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 90
    const/4 v2, 0x0

    .line 93
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

    .line 99
    .end local v3    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "jsonStr":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/InformationNotificationMessage;->setMessage(Ljava/lang/String;)V

    .line 104
    :cond_0
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/InformationNotificationMessage;->setExtra(Ljava/lang/String;)V

    .line 107
    :cond_1
    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/InformationNotificationMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/InformationNotificationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lio/rong/message/InformationNotificationMessage;

    invoke-direct {v0}, Lio/rong/message/InformationNotificationMessage;-><init>()V

    .line 80
    .local v0, "model":Lio/rong/message/InformationNotificationMessage;
    invoke-virtual {v0, p0}, Lio/rong/message/InformationNotificationMessage;->setMessage(Ljava/lang/String;)V

    .line 81
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const-string v2, "message"

    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_1
    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 50
    const-string/jumbo v2, "user"

    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
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

    .line 62
    :goto_1
    return-object v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 62
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lio/rong/message/InformationNotificationMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lio/rong/message/InformationNotificationMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lio/rong/message/InformationNotificationMessage;->extra:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lio/rong/message/InformationNotificationMessage;->message:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lio/rong/message/InformationNotificationMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 137
    return-void
.end method
