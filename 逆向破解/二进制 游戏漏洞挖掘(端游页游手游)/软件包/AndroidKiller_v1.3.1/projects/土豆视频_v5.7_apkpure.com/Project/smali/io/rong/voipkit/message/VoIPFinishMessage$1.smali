.class final Lio/rong/voipkit/message/VoIPFinishMessage$1;
.super Ljava/lang/Object;
.source "VoIPFinishMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/voipkit/message/VoIPFinishMessage;
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
        "Lio/rong/voipkit/message/VoIPFinishMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/voipkit/message/VoIPFinishMessage;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 93
    new-instance v0, Lio/rong/voipkit/message/VoIPFinishMessage;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "c":Lio/rong/voipkit/message/VoIPFinishMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;->setFinish_state(I)V

    .line 95
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lio/rong/voipkit/message/VoIPFinishMessage$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/voipkit/message/VoIPFinishMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/voipkit/message/VoIPFinishMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 100
    new-array v0, p1, [Lio/rong/voipkit/message/VoIPFinishMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lio/rong/voipkit/message/VoIPFinishMessage$1;->newArray(I)[Lio/rong/voipkit/message/VoIPFinishMessage;

    move-result-object v0

    return-object v0
.end method
