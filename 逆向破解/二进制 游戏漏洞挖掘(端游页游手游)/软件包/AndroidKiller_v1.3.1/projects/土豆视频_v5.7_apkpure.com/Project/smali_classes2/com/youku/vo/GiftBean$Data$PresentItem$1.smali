.class final Lcom/youku/vo/GiftBean$Data$PresentItem$1;
.super Ljava/lang/Object;
.source "GiftBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/GiftBean$Data$PresentItem;
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
        "Lcom/youku/vo/GiftBean$Data$PresentItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/vo/GiftBean$Data$PresentItem;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 159
    new-instance v0, Lcom/youku/vo/GiftBean$Data$PresentItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/youku/vo/GiftBean$Data$PresentItem;-><init>(Landroid/os/Parcel;Lcom/youku/vo/GiftBean$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/youku/vo/GiftBean$Data$PresentItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/vo/GiftBean$Data$PresentItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/vo/GiftBean$Data$PresentItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 163
    new-array v0, p1, [Lcom/youku/vo/GiftBean$Data$PresentItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/youku/vo/GiftBean$Data$PresentItem$1;->newArray(I)[Lcom/youku/vo/GiftBean$Data$PresentItem;

    move-result-object v0

    return-object v0
.end method
