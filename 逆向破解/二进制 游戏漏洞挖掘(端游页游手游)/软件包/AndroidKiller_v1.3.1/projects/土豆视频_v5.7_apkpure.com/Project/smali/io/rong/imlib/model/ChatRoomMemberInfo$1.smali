.class final Lio/rong/imlib/model/ChatRoomMemberInfo$1;
.super Ljava/lang/Object;
.source "ChatRoomMemberInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/ChatRoomMemberInfo;
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
        "Lio/rong/imlib/model/ChatRoomMemberInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/model/ChatRoomMemberInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    new-instance v0, Lio/rong/imlib/model/ChatRoomMemberInfo;

    invoke-direct {v0, p1}, Lio/rong/imlib/model/ChatRoomMemberInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lio/rong/imlib/model/ChatRoomMemberInfo$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/model/ChatRoomMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/imlib/model/ChatRoomMemberInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 73
    new-array v0, p1, [Lio/rong/imlib/model/ChatRoomMemberInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lio/rong/imlib/model/ChatRoomMemberInfo$1;->newArray(I)[Lio/rong/imlib/model/ChatRoomMemberInfo;

    move-result-object v0

    return-object v0
.end method
