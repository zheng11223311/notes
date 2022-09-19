.class public Lio/rong/notification/PushMessageContent;
.super Lio/rong/imlib/model/MessageContent;
.source "PushMessageContent.java"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 20
    iput-object p1, p0, Lio/rong/notification/PushMessageContent;->content:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/rong/notification/PushMessageContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lio/rong/notification/PushMessageContent;->content:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    return-void
.end method
