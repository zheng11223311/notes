.class final Lcom/youdo/controller/model/Param$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/model/Param;
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
        "Lcom/youdo/controller/model/Param;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youdo/controller/model/Param;
    .locals 2

    new-instance v0, Lcom/youdo/controller/model/Param;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/youdo/controller/model/Param;-><init>(Landroid/os/Parcel;Lcom/youdo/controller/model/Param$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/youdo/controller/model/Param$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youdo/controller/model/Param;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youdo/controller/model/Param;
    .locals 1

    new-array v0, p1, [Lcom/youdo/controller/model/Param;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/youdo/controller/model/Param$1;->newArray(I)[Lcom/youdo/controller/model/Param;

    move-result-object v0

    return-object v0
.end method
