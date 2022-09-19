.class public Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
.super Ljava/lang/Object;
.source "BeanPushResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBody:Ljava/lang/String;

.field private mCooike:Ljava/lang/String;

.field private mExtraData:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mRespStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse$1;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse$1;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mCooike:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mBody:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mExtraData:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mMessage:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mRespStatusCode:I

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mCooike:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mExtraData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mRespStatusCode:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCooike()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mCooike:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRespStatusCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mRespStatusCode:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBody"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mBody:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCooike(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCooike"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mCooike:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setExtraData(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtraData"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mExtraData:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMessage"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mMessage:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setRespStatusCode(I)V
    .locals 0
    .param p1, "mRespStatusCode"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mRespStatusCode:I

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mCooike:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mExtraData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->mRespStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
