.class final Lcom/youku/player/module/VideoHistoryInfo$1;
.super Ljava/lang/Object;
.source "VideoHistoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/module/VideoHistoryInfo;
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
        "Lcom/youku/player/module/VideoHistoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/player/module/VideoHistoryInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 83
    new-instance v0, Lcom/youku/player/module/VideoHistoryInfo;

    invoke-direct {v0, p1}, Lcom/youku/player/module/VideoHistoryInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/youku/player/module/VideoHistoryInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/player/module/VideoHistoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/player/module/VideoHistoryInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 88
    new-array v0, p1, [Lcom/youku/player/module/VideoHistoryInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/youku/player/module/VideoHistoryInfo$1;->newArray(I)[Lcom/youku/player/module/VideoHistoryInfo;

    move-result-object v0

    return-object v0
.end method
