.class public Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
.super Ljava/lang/Object;
.source "BeanHttpResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBody:Ljava/lang/String;

.field private mCooike:Ljava/lang/String;

.field private mExtraData:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mPaeserData:Ljava/lang/String;

.field private mRequest:Ljava/lang/String;

.field private mRespStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse$1;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse$1;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mCooike:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mBody:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mExtraData:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mMessage:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mPaeserData:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRespStatusCode:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRequest:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mCooike:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mExtraData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mPaeserData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRequest:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRespStatusCode:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCooike()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mCooike:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getParserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mPaeserData:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRequest:Ljava/lang/String;

    return-object v0
.end method

.method public getRespStatusCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRespStatusCode:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 117
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 4
    .param p1, "mBody"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    .local v1, "root":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 70
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mExtraData:Ljava/lang/String;

    .line 71
    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mMessage:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mBody:Ljava/lang/String;

    .line 78
    .end local v1    # "root":Lorg/json/JSONObject;
    .end local v2    # "tmp":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCooike(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCooike"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mCooike:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setExtraData(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtraData"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mExtraData:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMessage"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mMessage:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setParserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "paeserData"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mPaeserData:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRequest:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setRespStatusCode(I)V
    .locals 0
    .param p1, "mRespStatusCode"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRespStatusCode:I

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mCooike:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mExtraData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mPaeserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRequest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->mRespStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void
.end method
