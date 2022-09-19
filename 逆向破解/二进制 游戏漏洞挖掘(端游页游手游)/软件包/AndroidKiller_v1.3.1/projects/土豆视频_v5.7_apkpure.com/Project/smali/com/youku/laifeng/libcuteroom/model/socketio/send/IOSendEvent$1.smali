.class final Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent$1;
.super Ljava/lang/Object;
.source "IOSendEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
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
        "Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 28
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;-><init>()V

    .line 29
    .local v0, "pb":Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->access$002(Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->access$102(Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 35
    new-array v0, p1, [Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent$1;->newArray(I)[Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;

    move-result-object v0

    return-object v0
.end method
