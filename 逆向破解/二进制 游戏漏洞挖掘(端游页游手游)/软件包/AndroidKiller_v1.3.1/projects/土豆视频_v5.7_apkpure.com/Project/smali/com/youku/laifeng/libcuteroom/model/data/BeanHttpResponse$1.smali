.class final Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse$1;
.super Ljava/lang/Object;
.source "BeanHttpResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
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
        "Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 94
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;-><init>()V

    .line 95
    .local v0, "pb":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->access$502(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->access$602(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;I)I

    .line 102
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 106
    new-array v0, p1, [Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse$1;->newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v0

    return-object v0
.end method
