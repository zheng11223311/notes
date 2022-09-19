.class public Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
.super Ljava/lang/Object;
.source "BeanDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UUID:Ljava/lang/String;

.field private mCurSize:I

.field private mDirPath:Ljava/lang/String;

.field private mFullPath:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSize:I

.field private mTime:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo$1;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mUrl:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->UUID:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mDirPath:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mFullPath:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mName:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mSize:I

    .line 14
    iput v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mCurSize:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mTime:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->UUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mDirPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mFullPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mSize:I

    return p1
.end method

.method static synthetic access$602(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mCurSize:I

    return p1
.end method

.method static synthetic access$702(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mTime:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getCurSize()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mCurSize:I

    return v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mFullPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mSize:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 111
    return-void
.end method

.method public setCurSize(I)V
    .locals 0
    .param p1, "mProgress"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mCurSize:I

    .line 71
    return-void
.end method

.method public setDirPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDirPath"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mDirPath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setFullPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFullPath"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mFullPath:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "mSize"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mSize:I

    .line 63
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTime"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mTime:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uUID"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->UUID:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mUrl:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mDirPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mCurSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->mTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return-void
.end method
