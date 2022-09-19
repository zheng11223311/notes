.class final Lcom/youdo/controller/MraidController$PlayerProperties$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/MraidController$PlayerProperties;
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
        "Lcom/youdo/controller/MraidController$PlayerProperties;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youdo/controller/MraidController$PlayerProperties;
    .locals 1

    new-instance v0, Lcom/youdo/controller/MraidController$PlayerProperties;

    invoke-direct {v0, p1}, Lcom/youdo/controller/MraidController$PlayerProperties;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/youdo/controller/MraidController$PlayerProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youdo/controller/MraidController$PlayerProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youdo/controller/MraidController$PlayerProperties;
    .locals 1

    new-array v0, p1, [Lcom/youdo/controller/MraidController$PlayerProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/youdo/controller/MraidController$PlayerProperties$1;->newArray(I)[Lcom/youdo/controller/MraidController$PlayerProperties;

    move-result-object v0

    return-object v0
.end method
