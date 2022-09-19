.class final Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap$1;
.super Ljava/lang/Object;
.source "BeanBitmap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
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
        "Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;-><init>()V

    .line 73
    .local v0, "pb":Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;I)I

    .line 78
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->access$502(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 79
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 83
    new-array v0, p1, [Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap$1;->newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    move-result-object v0

    return-object v0
.end method
