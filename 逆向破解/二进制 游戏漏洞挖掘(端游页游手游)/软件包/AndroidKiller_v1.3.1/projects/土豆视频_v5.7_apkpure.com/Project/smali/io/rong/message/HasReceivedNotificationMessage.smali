.class Lio/rong/message/HasReceivedNotificationMessage;
.super Lio/rong/message/NotificationMessage;
.source "HasReceivedNotificationMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    value = "RC:RecNtf"
.end annotation


# instance fields
.field private hasReceived:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lio/rong/message/NotificationMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public isHasReceived()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lio/rong/message/HasReceivedNotificationMessage;->hasReceived:Z

    return v0
.end method

.method public setHasReceived(Z)V
    .locals 0
    .param p1, "hasReceived"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lio/rong/message/HasReceivedNotificationMessage;->hasReceived:Z

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    return-void
.end method
