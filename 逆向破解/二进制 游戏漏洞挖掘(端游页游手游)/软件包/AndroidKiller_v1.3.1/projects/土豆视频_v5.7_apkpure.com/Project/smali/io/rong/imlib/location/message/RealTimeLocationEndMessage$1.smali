.class final Lio/rong/imlib/location/message/RealTimeLocationEndMessage$1;
.super Ljava/lang/Object;
.source "RealTimeLocationEndMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/message/RealTimeLocationEndMessage;
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
        "Lio/rong/imlib/location/message/RealTimeLocationEndMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/location/message/RealTimeLocationEndMessage;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;

    invoke-direct {v0, p1}, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lio/rong/imlib/location/message/RealTimeLocationEndMessage$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/location/message/RealTimeLocationEndMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/imlib/location/message/RealTimeLocationEndMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 62
    new-array v0, p1, [Lio/rong/imlib/location/message/RealTimeLocationEndMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lio/rong/imlib/location/message/RealTimeLocationEndMessage$1;->newArray(I)[Lio/rong/imlib/location/message/RealTimeLocationEndMessage;

    move-result-object v0

    return-object v0
.end method
