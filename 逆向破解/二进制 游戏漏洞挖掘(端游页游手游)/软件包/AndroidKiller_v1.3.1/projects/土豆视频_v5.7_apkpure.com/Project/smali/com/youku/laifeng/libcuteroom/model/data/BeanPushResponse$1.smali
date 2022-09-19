.class final Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse$1;
.super Ljava/lang/Object;
.source "BeanPushResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
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
        "Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 60
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;-><init>()V

    .line 61
    .local v0, "pb":Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;->access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;I)I

    .line 66
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse$1;->newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanPushResponse;

    move-result-object v0

    return-object v0
.end method
