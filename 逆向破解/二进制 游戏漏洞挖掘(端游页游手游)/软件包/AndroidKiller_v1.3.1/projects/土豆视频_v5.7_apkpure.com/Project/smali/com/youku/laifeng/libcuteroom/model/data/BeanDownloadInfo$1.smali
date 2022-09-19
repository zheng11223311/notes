.class final Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo$1;
.super Ljava/lang/Object;
.source "BeanDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
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
        "Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;-><init>()V

    .line 88
    .local v0, "pb":Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->access$502(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;I)I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->access$602(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;I)I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->access$702(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 100
    new-array v0, p1, [Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo$1;->newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v0

    return-object v0
.end method
