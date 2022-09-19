.class final Lcom/youdo/controller/MraidController$ExpandProperties$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/MraidController$ExpandProperties;
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
        "Lcom/youdo/controller/MraidController$ExpandProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youdo/controller/MraidController$ExpandProperties;
    .locals 1

    new-instance v0, Lcom/youdo/controller/MraidController$ExpandProperties;

    invoke-direct {v0, p1}, Lcom/youdo/controller/MraidController$ExpandProperties;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/youdo/controller/MraidController$ExpandProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youdo/controller/MraidController$ExpandProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youdo/controller/MraidController$ExpandProperties;
    .locals 1

    new-array v0, p1, [Lcom/youdo/controller/MraidController$ExpandProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/youdo/controller/MraidController$ExpandProperties$1;->newArray(I)[Lcom/youdo/controller/MraidController$ExpandProperties;

    move-result-object v0

    return-object v0
.end method
