.class public Lio/rong/message/PublicServiceCommandMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "PublicServiceCommandMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    value = "RC:PSCmd"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/PublicServiceCommandMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private command:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field protected extra:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lio/rong/message/PublicServiceCommandMessage$1;

    invoke-direct {v0}, Lio/rong/message/PublicServiceCommandMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/PublicServiceCommandMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 128
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/PublicServiceCommandMessage;->setExtra(Ljava/lang/String;)V

    .line 131
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/PublicServiceCommandMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 132
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 78
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 80
    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/PublicServiceMenuItem;)Lio/rong/message/PublicServiceCommandMessage;
    .locals 2
    .param p0, "item"    # Lio/rong/imlib/model/PublicServiceMenuItem;

    .prologue
    .line 83
    new-instance v0, Lio/rong/message/PublicServiceCommandMessage;

    invoke-direct {v0}, Lio/rong/message/PublicServiceCommandMessage;-><init>()V

    .line 84
    .local v0, "model":Lio/rong/message/PublicServiceCommandMessage;
    invoke-virtual {p0}, Lio/rong/imlib/model/PublicServiceMenuItem;->getType()Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lio/rong/imlib/model/PublicServiceMenuItem;->getType()Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lio/rong/imlib/model/PublicServiceMenuItem;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    .line 88
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "cmd"

    iget-object v3, p0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v2, "data"

    iget-object v3, p0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    const-string/jumbo v2, "user"

    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 71
    :goto_1
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 71
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lio/rong/message/PublicServiceCommandMessage;->extra:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 120
    return-void
.end method
