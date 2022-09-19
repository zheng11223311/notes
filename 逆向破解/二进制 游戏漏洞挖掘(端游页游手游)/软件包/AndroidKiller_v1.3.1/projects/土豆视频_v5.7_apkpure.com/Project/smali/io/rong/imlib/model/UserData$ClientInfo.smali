.class public Lio/rong/imlib/model/UserData$ClientInfo;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/UserData$ClientInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field carrier:Ljava/lang/String;

.field device:Ljava/lang/String;

.field mobilePhoneManufacturers:Ljava/lang/String;

.field network:Ljava/lang/String;

.field os:Ljava/lang/String;

.field systemVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 487
    new-instance v0, Lio/rong/imlib/model/UserData$ClientInfo$1;

    invoke-direct {v0}, Lio/rong/imlib/model/UserData$ClientInfo$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/UserData$ClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-string v0, "Android"

    iput-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-string v2, "Android"

    iput-object v2, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    .line 394
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 396
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 400
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imlib/model/UserData$ClientInfo;->network:Ljava/lang/String;

    .line 405
    :cond_0
    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imlib/model/UserData$ClientInfo;->carrier:Ljava/lang/String;

    .line 409
    :cond_1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, p0, Lio/rong/imlib/model/UserData$ClientInfo;->mobilePhoneManufacturers:Ljava/lang/String;

    .line 410
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lio/rong/imlib/model/UserData$ClientInfo;->device:Ljava/lang/String;

    .line 411
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imlib/model/UserData$ClientInfo;->systemVersion:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-string v0, "Android"

    iput-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    .line 416
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setNetwork(Ljava/lang/String;)V

    .line 417
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setCarrier(Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setSystemVersion(Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setOs(Ljava/lang/String;)V

    .line 420
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setDevice(Ljava/lang/String;)V

    .line 421
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setMobilePhoneManufacturers(Ljava/lang/String;)V

    .line 422
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhoneManufacturers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->mobilePhoneManufacturers:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->systemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->carrier:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->device:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public setMobilePhoneManufacturers(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobilePhoneManufacturers"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->mobilePhoneManufacturers:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1, "network"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->network:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setSystemVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemVersion"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->systemVersion:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->network:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->carrier:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->systemVersion:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->device:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->mobilePhoneManufacturers:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 485
    return-void
.end method
