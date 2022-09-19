.class public Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;
.super Lio/rong/message/StatusMessage;
.source "IsTypingStatusMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    value = "RC:TypSts"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage$1;

    invoke-direct {v0}, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage$1;-><init>()V

    sput-object v0, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/rong/message/StatusMessage;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Lio/rong/message/StatusMessage;-><init>()V

    .line 56
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;->setData(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lio/rong/message/StatusMessage;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;->setData(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/message/StatusMessage;-><init>()V

    .line 36
    const/4 v2, 0x0

    .line 39
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

    .line 45
    .end local v3    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "jsonStr":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "IsTypingStatusMessage"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "IsTypingStatusMessage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 69
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p0}, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 83
    :goto_1
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 83
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;->data:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 95
    return-void
.end method
