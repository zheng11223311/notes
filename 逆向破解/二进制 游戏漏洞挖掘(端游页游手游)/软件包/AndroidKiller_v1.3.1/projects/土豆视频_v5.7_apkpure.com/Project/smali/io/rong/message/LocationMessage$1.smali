.class final Lio/rong/message/LocationMessage$1;
.super Ljava/lang/Object;
.source "LocationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/message/LocationMessage;
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
        "Lio/rong/message/LocationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/message/LocationMessage;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 261
    new-instance v0, Lio/rong/message/LocationMessage;

    invoke-direct {v0, p1}, Lio/rong/message/LocationMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lio/rong/message/LocationMessage$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/message/LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/message/LocationMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 266
    new-array v0, p1, [Lio/rong/message/LocationMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lio/rong/message/LocationMessage$1;->newArray(I)[Lio/rong/message/LocationMessage;

    move-result-object v0

    return-object v0
.end method
