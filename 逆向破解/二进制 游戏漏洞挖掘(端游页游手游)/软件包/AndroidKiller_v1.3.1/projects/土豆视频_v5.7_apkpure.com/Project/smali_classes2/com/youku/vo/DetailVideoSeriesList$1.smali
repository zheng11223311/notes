.class final Lcom/youku/vo/DetailVideoSeriesList$1;
.super Ljava/lang/Object;
.source "DetailVideoSeriesList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/DetailVideoSeriesList;
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
        "Lcom/youku/vo/DetailVideoSeriesList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/vo/DetailVideoSeriesList;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 124
    new-instance v0, Lcom/youku/vo/DetailVideoSeriesList;

    invoke-direct {v0, p1}, Lcom/youku/vo/DetailVideoSeriesList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/youku/vo/DetailVideoSeriesList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/vo/DetailVideoSeriesList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/vo/DetailVideoSeriesList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    new-array v0, p1, [Lcom/youku/vo/DetailVideoSeriesList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/youku/vo/DetailVideoSeriesList$1;->newArray(I)[Lcom/youku/vo/DetailVideoSeriesList;

    move-result-object v0

    return-object v0
.end method
