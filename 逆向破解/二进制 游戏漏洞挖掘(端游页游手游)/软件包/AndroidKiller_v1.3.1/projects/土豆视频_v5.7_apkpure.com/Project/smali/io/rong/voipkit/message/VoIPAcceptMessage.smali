.class public Lio/rong/voipkit/message/VoIPAcceptMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "VoIPAcceptMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x0
    value = "RC:VoipAcceptMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/voipkit/message/VoIPAcceptMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private toId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lio/rong/voipkit/message/VoIPAcceptMessage$1;

    invoke-direct {v0}, Lio/rong/voipkit/message/VoIPAcceptMessage$1;-><init>()V

    sput-object v0, Lio/rong/voipkit/message/VoIPAcceptMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "toId"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 50
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPAcceptMessage;->toId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 34
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 35
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 38
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "toId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/voipkit/message/VoIPAcceptMessage;->setToId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
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
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "toId"

    iget-object v3, p0, Lio/rong/voipkit/message/VoIPAcceptMessage;->toId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPAcceptMessage;->toId:Ljava/lang/String;

    return-object v0
.end method

.method public setToId(Ljava/lang/String;)V
    .locals 0
    .param p1, "toId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lio/rong/voipkit/message/VoIPAcceptMessage;->toId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lio/rong/voipkit/message/VoIPAcceptMessage;->toId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
