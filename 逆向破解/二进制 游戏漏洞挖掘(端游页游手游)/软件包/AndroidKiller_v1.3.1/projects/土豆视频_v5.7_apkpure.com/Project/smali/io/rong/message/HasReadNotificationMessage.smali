.class Lio/rong/message/HasReadNotificationMessage;
.super Lio/rong/message/NotificationMessage;
.source "HasReadNotificationMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    value = "RC:ReadNtf"
.end annotation


# instance fields
.field private hasRead:Z

.field private lastMessageSendTime:J


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
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLastMessageSendTime()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lio/rong/message/HasReadNotificationMessage;->lastMessageSendTime:J

    return-wide v0
.end method

.method public hasRead(Z)V
    .locals 0
    .param p1, "hasRead"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lio/rong/message/HasReadNotificationMessage;->hasRead:Z

    .line 39
    return-void
.end method

.method public hasRead()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lio/rong/message/HasReadNotificationMessage;->hasRead:Z

    return v0
.end method

.method public setLastMessageSendTime(J)V
    .locals 1
    .param p1, "lastMessageSendTime"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lio/rong/message/HasReadNotificationMessage;->lastMessageSendTime:J

    .line 21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    return-void
.end method
