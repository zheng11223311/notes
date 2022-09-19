.class final Lcom/tudou/upload/UploadInfo$1;
.super Ljava/lang/Object;
.source "UploadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/upload/UploadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tudou/upload/UploadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tudou/upload/UploadInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 923
    new-instance v0, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v0}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 924
    .local v0, "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTaskId(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTitle(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setDesc(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTag(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setCategory(I)V

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setUserName(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setPrivacy(I)V

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setVideoPassword(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setLongitude(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setLatitude(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setFilePath(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setFileName(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setFilePostfix(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tudou/upload/UploadInfo;->setSize(J)V

    .line 940
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setUploadToken(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTargetHost(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setUrl(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTargetIpAddr(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setMd5(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tudou/upload/UploadInfo;->setUploadedSize(J)V

    .line 948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tudou/upload/UploadInfo;->setCreateTime(J)V

    .line 950
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tudou/upload/UploadInfo;->setStartTime(J)V

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tudou/upload/UploadInfo;->setFinishTime(J)V

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setProgress(I)V

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setExceptionCode(I)V

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setSpeed(I)V

    .line 956
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setSpeedDesc(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setSizeDesc(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setUploadedSizeDesc(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setRemainTime(I)V

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tudou/upload/UploadInfo;->setDuration(J)V

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setJsonV4(Ljava/lang/String;)V

    .line 963
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Lcom/tudou/upload/UploadInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tudou/upload/UploadInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 967
    new-array v0, p1, [Lcom/tudou/upload/UploadInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Lcom/tudou/upload/UploadInfo$1;->newArray(I)[Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    return-object v0
.end method
