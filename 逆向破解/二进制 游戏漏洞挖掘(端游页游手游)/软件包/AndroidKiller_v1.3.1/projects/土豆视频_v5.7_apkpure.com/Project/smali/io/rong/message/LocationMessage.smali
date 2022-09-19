.class public final Lio/rong/message/LocationMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "LocationMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    messageHandler = Lio/rong/message/LocationMessageHandler;
    value = "RC:LBSMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/LocationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected extra:Ljava/lang/String;

.field mBase64:Ljava/lang/String;

.field mImgUri:Landroid/net/Uri;

.field mLat:D

.field mLng:D

.field mPoi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lio/rong/message/LocationMessage$1;

    invoke-direct {v0}, Lio/rong/message/LocationMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/LocationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(DDLjava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "poi"    # Ljava/lang/String;
    .param p6, "imgUri"    # Landroid/net/Uri;

    .prologue
    .line 119
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 120
    iput-wide p1, p0, Lio/rong/message/LocationMessage;->mLat:D

    .line 121
    iput-wide p3, p0, Lio/rong/message/LocationMessage;->mLng:D

    .line 122
    iput-object p5, p0, Lio/rong/message/LocationMessage;->mPoi:Ljava/lang/String;

    .line 123
    iput-object p6, p0, Lio/rong/message/LocationMessage;->mImgUri:Landroid/net/Uri;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 243
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 244
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/LocationMessage;->extra:Ljava/lang/String;

    .line 245
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readDoubleFromParcel(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/message/LocationMessage;->mLat:D

    .line 246
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readDoubleFromParcel(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/message/LocationMessage;->mLng:D

    .line 247
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/LocationMessage;->mPoi:Ljava/lang/String;

    .line 248
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/LocationMessage;->mBase64:Ljava/lang/String;

    .line 249
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/message/LocationMessage;->mImgUri:Landroid/net/Uri;

    .line 250
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/LocationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 251
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 80
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 82
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 85
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "Location:"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v3, "latitude"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/rong/message/LocationMessage;->setLat(D)V

    .line 89
    const-string v3, "longitude"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/rong/message/LocationMessage;->setLng(D)V

    .line 91
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/LocationMessage;->setBase64(Ljava/lang/String;)V

    .line 94
    :cond_0
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/LocationMessage;->setExtra(Ljava/lang/String;)V

    .line 96
    :cond_1
    const-string v3, "poi"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/LocationMessage;->setPoi(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/LocationMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/LocationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static obtain(DDLjava/lang/String;Landroid/net/Uri;)Lio/rong/message/LocationMessage;
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lng"    # D
    .param p4, "poi"    # Ljava/lang/String;
    .param p5, "imgUri"    # Landroid/net/Uri;

    .prologue
    .line 115
    new-instance v1, Lio/rong/message/LocationMessage;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/rong/message/LocationMessage;-><init>(DDLjava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v1, "message":Lio/rong/message/LocationMessage;
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 6

    .prologue
    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lio/rong/message/LocationMessage;->mBase64:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string v2, "content"

    iget-object v3, p0, Lio/rong/message/LocationMessage;->mBase64:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_0
    const-string v2, "latitude"

    iget-wide v4, p0, Lio/rong/message/LocationMessage;->mLat:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 57
    const-string v2, "longitude"

    iget-wide v4, p0, Lio/rong/message/LocationMessage;->mLng:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {p0}, Lio/rong/message/LocationMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/LocationMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_1
    iget-object v2, p0, Lio/rong/message/LocationMessage;->mPoi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    const-string v2, "poi"

    iget-object v3, p0, Lio/rong/message/LocationMessage;->mPoi:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_2
    invoke-virtual {p0}, Lio/rong/message/LocationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 66
    const-string/jumbo v2, "user"

    invoke-virtual {p0}, Lio/rong/message/LocationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_3
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lio/rong/message/LocationMessage;->mBase64:Ljava/lang/String;

    .line 75
    const-string v2, "Location-encode:"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lio/rong/message/LocationMessage;->mBase64:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/rong/message/LocationMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lio/rong/message/LocationMessage;->mImgUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lio/rong/message/LocationMessage;->mLat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lio/rong/message/LocationMessage;->mLng:D

    return-wide v0
.end method

.method public getPoi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lio/rong/message/LocationMessage;->mPoi:Ljava/lang/String;

    return-object v0
.end method

.method public setBase64(Ljava/lang/String;)V
    .locals 0
    .param p1, "base64"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lio/rong/message/LocationMessage;->mBase64:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lio/rong/message/LocationMessage;->extra:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setImgUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "imgUri"    # Landroid/net/Uri;

    .prologue
    .line 213
    iput-object p1, p0, Lio/rong/message/LocationMessage;->mImgUri:Landroid/net/Uri;

    .line 214
    return-void
.end method

.method public setLat(D)V
    .locals 1
    .param p1, "lat"    # D

    .prologue
    .line 141
    iput-wide p1, p0, Lio/rong/message/LocationMessage;->mLat:D

    .line 142
    return-void
.end method

.method public setLng(D)V
    .locals 1
    .param p1, "lng"    # D

    .prologue
    .line 159
    iput-wide p1, p0, Lio/rong/message/LocationMessage;->mLng:D

    .line 160
    return-void
.end method

.method public setPoi(Ljava/lang/String;)V
    .locals 0
    .param p1, "poi"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lio/rong/message/LocationMessage;->mPoi:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lio/rong/message/LocationMessage;->extra:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 235
    iget-wide v0, p0, Lio/rong/message/LocationMessage;->mLat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 236
    iget-wide v0, p0, Lio/rong/message/LocationMessage;->mLng:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 237
    iget-object v0, p0, Lio/rong/message/LocationMessage;->mPoi:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lio/rong/message/LocationMessage;->mBase64:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lio/rong/message/LocationMessage;->mImgUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 240
    invoke-virtual {p0}, Lio/rong/message/LocationMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 241
    return-void
.end method
