.class final Lio/rong/message/ReadReceiptMessage$1;
.super Ljava/lang/Object;
.source "ReadReceiptMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/message/ReadReceiptMessage;
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
        "Lio/rong/message/ReadReceiptMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/message/ReadReceiptMessage;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 162
    new-instance v0, Lio/rong/message/ReadReceiptMessage;

    invoke-direct {v0, p1}, Lio/rong/message/ReadReceiptMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lio/rong/message/ReadReceiptMessage$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/message/ReadReceiptMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/message/ReadReceiptMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 167
    new-array v0, p1, [Lio/rong/message/ReadReceiptMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lio/rong/message/ReadReceiptMessage$1;->newArray(I)[Lio/rong/message/ReadReceiptMessage;

    move-result-object v0

    return-object v0
.end method
