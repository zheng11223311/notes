.class public Lio/rong/message/FileMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "FileMessage.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    messageHandler = Lio/rong/message/FileMessageHandler;
    value = "RC:FileMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/FileMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected extra:Ljava/lang/String;

.field private mBase64:Ljava/lang/String;

.field mIsFull:Z

.field private mLocalUri:Landroid/net/Uri;

.field private mRemoteUri:Landroid/net/Uri;

.field private mThumUri:Landroid/net/Uri;

.field private mUpLoadExp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lio/rong/message/FileMessage$1;

    invoke-direct {v0}, Lio/rong/message/FileMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/FileMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/message/FileMessage;->mUpLoadExp:Z

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "thumbUri"    # Landroid/net/Uri;
    .param p2, "localUri"    # Landroid/net/Uri;

    .prologue
    .line 88
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/message/FileMessage;->mUpLoadExp:Z

    .line 89
    iput-object p1, p0, Lio/rong/message/FileMessage;->mThumUri:Landroid/net/Uri;

    .line 90
    iput-object p2, p0, Lio/rong/message/FileMessage;->mLocalUri:Landroid/net/Uri;

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "thumbUri"    # Landroid/net/Uri;
    .param p2, "localUri"    # Landroid/net/Uri;
    .param p3, "original"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/message/FileMessage;->mUpLoadExp:Z

    .line 94
    iput-object p1, p0, Lio/rong/message/FileMessage;->mThumUri:Landroid/net/Uri;

    .line 95
    iput-object p2, p0, Lio/rong/message/FileMessage;->mLocalUri:Landroid/net/Uri;

    .line 96
    iput-boolean p3, p0, Lio/rong/message/FileMessage;->mIsFull:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    iput-boolean v2, p0, Lio/rong/message/FileMessage;->mUpLoadExp:Z

    .line 287
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/FileMessage;->setExtra(Ljava/lang/String;)V

    .line 288
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/message/FileMessage;->mLocalUri:Landroid/net/Uri;

    .line 289
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/message/FileMessage;->mRemoteUri:Landroid/net/Uri;

    .line 290
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/message/FileMessage;->mThumUri:Landroid/net/Uri;

    .line 291
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/FileMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 292
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/message/FileMessage;->mIsFull:Z

    .line 293
    return-void

    :cond_0
    move v0, v2

    .line 292
    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 49
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const/4 v4, 0x0

    iput-boolean v4, p0, Lio/rong/message/FileMessage;->mUpLoadExp:Z

    .line 50
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 53
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "fileUri"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const-string v4, "fileUri"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/FileMessage;->setRemoteUri(Landroid/net/Uri;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/FileMessage;->setLocalUri(Landroid/net/Uri;)V

    .line 64
    .end local v3    # "uri":Ljava/lang/String;
    :cond_1
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/FileMessage;->setBase64(Ljava/lang/String;)V

    .line 67
    :cond_2
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/FileMessage;->setExtra(Ljava/lang/String;)V

    .line 70
    :cond_3
    const-string v4, "exp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lio/rong/message/FileMessage;->setUpLoadExp(Z)V

    .line 73
    :cond_4
    const-string v4, "isFull"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    const-string v4, "isFull"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/rong/message/FileMessage;->setIsFull(Z)V

    .line 76
    :cond_5
    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 77
    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/FileMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/FileMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_6
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static obtain()Lio/rong/message/FileMessage;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lio/rong/message/FileMessage;

    invoke-direct {v0}, Lio/rong/message/FileMessage;-><init>()V

    return-object v0
.end method

.method public static obtain(Landroid/net/Uri;Landroid/net/Uri;)Lio/rong/message/FileMessage;
    .locals 1
    .param p0, "thumUri"    # Landroid/net/Uri;
    .param p1, "localUri"    # Landroid/net/Uri;

    .prologue
    .line 107
    new-instance v0, Lio/rong/message/FileMessage;

    invoke-direct {v0, p0, p1}, Lio/rong/message/FileMessage;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static obtain(Landroid/net/Uri;Landroid/net/Uri;Z)Lio/rong/message/FileMessage;
    .locals 1
    .param p0, "thumUri"    # Landroid/net/Uri;
    .param p1, "localUri"    # Landroid/net/Uri;
    .param p2, "isFull"    # Z

    .prologue
    .line 119
    new-instance v0, Lio/rong/message/FileMessage;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/message/FileMessage;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 241
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lio/rong/message/FileMessage;->mBase64:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    const-string v2, "content"

    iget-object v3, p0, Lio/rong/message/FileMessage;->mBase64:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :goto_0
    iget-object v2, p0, Lio/rong/message/FileMessage;->mRemoteUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 251
    const-string v2, "fileUri"

    iget-object v3, p0, Lio/rong/message/FileMessage;->mRemoteUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lio/rong/message/FileMessage;->mUpLoadExp:Z

    if-eqz v2, :cond_1

    .line 257
    const-string v2, "exp"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 259
    :cond_1
    const-string v2, "isFull"

    iget-boolean v3, p0, Lio/rong/message/FileMessage;->mIsFull:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 260
    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    :cond_2
    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 263
    const-string/jumbo v2, "user"

    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_3
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Lio/rong/message/FileMessage;->mBase64:Ljava/lang/String;

    .line 268
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 247
    :cond_4
    :try_start_1
    const-string v2, "ImageMessage"

    const-string v3, "base64 is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 252
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    const-string v2, "fileUri"

    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public getBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lio/rong/message/FileMessage;->mBase64:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/rong/message/FileMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lio/rong/message/FileMessage;->mLocalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRemoteUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lio/rong/message/FileMessage;->mRemoteUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lio/rong/message/FileMessage;->mThumUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lio/rong/message/FileMessage;->mIsFull:Z

    return v0
.end method

.method public isUpLoadExp()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lio/rong/message/FileMessage;->mUpLoadExp:Z

    return v0
.end method

.method public setBase64(Ljava/lang/String;)V
    .locals 0
    .param p1, "base64"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lio/rong/message/FileMessage;->mBase64:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lio/rong/message/FileMessage;->extra:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setIsFull(Z)V
    .locals 0
    .param p1, "isFull"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lio/rong/message/FileMessage;->mIsFull:Z

    .line 156
    return-void
.end method

.method public setLocalUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "localUri"    # Landroid/net/Uri;

    .prologue
    .line 182
    iput-object p1, p0, Lio/rong/message/FileMessage;->mLocalUri:Landroid/net/Uri;

    .line 183
    return-void
.end method

.method public setRemoteUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "remoteUri"    # Landroid/net/Uri;

    .prologue
    .line 200
    iput-object p1, p0, Lio/rong/message/FileMessage;->mRemoteUri:Landroid/net/Uri;

    .line 201
    return-void
.end method

.method public setThumUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "thumUri"    # Landroid/net/Uri;

    .prologue
    .line 164
    iput-object p1, p0, Lio/rong/message/FileMessage;->mThumUri:Landroid/net/Uri;

    .line 165
    return-void
.end method

.method public setUpLoadExp(Z)V
    .locals 0
    .param p1, "upLoadExp"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lio/rong/message/FileMessage;->mUpLoadExp:Z

    .line 237
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 303
    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lio/rong/message/FileMessage;->mLocalUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 305
    iget-object v0, p0, Lio/rong/message/FileMessage;->mRemoteUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 306
    iget-object v0, p0, Lio/rong/message/FileMessage;->mThumUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 307
    invoke-virtual {p0}, Lio/rong/message/FileMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 308
    iget-boolean v0, p0, Lio/rong/message/FileMessage;->mIsFull:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 309
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
