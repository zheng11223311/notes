.class final Lio/rong/message/ImageMessage$1;
.super Ljava/lang/Object;
.source "ImageMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/message/ImageMessage;
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
        "Lio/rong/message/ImageMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/message/ImageMessage;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 315
    new-instance v0, Lio/rong/message/ImageMessage;

    invoke-direct {v0, p1}, Lio/rong/message/ImageMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lio/rong/message/ImageMessage$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/message/ImageMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/message/ImageMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 320
    new-array v0, p1, [Lio/rong/message/ImageMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lio/rong/message/ImageMessage$1;->newArray(I)[Lio/rong/message/ImageMessage;

    move-result-object v0

    return-object v0
.end method
