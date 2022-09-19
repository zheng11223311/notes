.class final Lcom/youku/player/goplay/EventMonitor$1;
.super Ljava/lang/Object;
.source "EventMonitor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/goplay/EventMonitor;
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
        "Lcom/youku/player/goplay/EventMonitor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/player/goplay/EventMonitor;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 39
    new-instance v0, Lcom/youku/player/goplay/EventMonitor;

    invoke-direct {v0, p1}, Lcom/youku/player/goplay/EventMonitor;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/youku/player/goplay/EventMonitor$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/player/goplay/EventMonitor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/player/goplay/EventMonitor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 44
    new-array v0, p1, [Lcom/youku/player/goplay/EventMonitor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/youku/player/goplay/EventMonitor$1;->newArray(I)[Lcom/youku/player/goplay/EventMonitor;

    move-result-object v0

    return-object v0
.end method
