.class final Lio/rong/voipkit/message/VoIPCallMessage$1;
.super Ljava/lang/Object;
.source "VoIPCallMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/voipkit/message/VoIPCallMessage;
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
        "Lio/rong/voipkit/message/VoIPCallMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/voipkit/message/VoIPCallMessage;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 196
    new-instance v0, Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-direct {v0, p1}, Lio/rong/voipkit/message/VoIPCallMessage;-><init>(Landroid/os/Parcel;)V

    .line 197
    .local v0, "c":Lio/rong/voipkit/message/VoIPCallMessage;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lio/rong/voipkit/message/VoIPCallMessage$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/voipkit/message/VoIPCallMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/voipkit/message/VoIPCallMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 202
    new-array v0, p1, [Lio/rong/voipkit/message/VoIPCallMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lio/rong/voipkit/message/VoIPCallMessage$1;->newArray(I)[Lio/rong/voipkit/message/VoIPCallMessage;

    move-result-object v0

    return-object v0
.end method
