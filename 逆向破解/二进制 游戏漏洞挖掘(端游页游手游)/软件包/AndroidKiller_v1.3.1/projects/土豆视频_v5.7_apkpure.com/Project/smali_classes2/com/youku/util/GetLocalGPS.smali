.class public Lcom/youku/util/GetLocalGPS;
.super Ljava/lang/Object;
.source "GetLocalGPS.java"


# static fields
.field public static mLocGPS_latitude:D

.field public static mLocGPS_longitude:D


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mGPSListener:Landroid/location/LocationListener;

.field private mManager:Landroid/location/LocationManager;

.field private mNetworkListener:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 12
    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    .line 13
    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/youku/util/GetLocalGPS$1;

    invoke-direct {v0, p0}, Lcom/youku/util/GetLocalGPS$1;-><init>(Lcom/youku/util/GetLocalGPS;)V

    iput-object v0, p0, Lcom/youku/util/GetLocalGPS;->mGPSListener:Landroid/location/LocationListener;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    .line 34
    new-instance v0, Lcom/youku/util/GetLocalGPS$2;

    invoke-direct {v0, p0}, Lcom/youku/util/GetLocalGPS$2;-><init>(Lcom/youku/util/GetLocalGPS;)V

    iput-object v0, p0, Lcom/youku/util/GetLocalGPS;->mNetworkListener:Landroid/location/LocationListener;

    .line 57
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    .line 58
    invoke-direct {p0}, Lcom/youku/util/GetLocalGPS;->resetLonAndLat()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/youku/util/GetLocalGPS;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/util/GetLocalGPS;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkGPS(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 62
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 64
    .local v0, "localLocationManager":Landroid/location/LocationManager;
    if-eqz v0, :cond_1

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetLonAndLat()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 70
    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    .line 71
    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    .line 72
    return-void
.end method


# virtual methods
.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    .line 76
    iput-object v0, p0, Lcom/youku/util/GetLocalGPS;->mNetworkListener:Landroid/location/LocationListener;

    .line 77
    iput-object v0, p0, Lcom/youku/util/GetLocalGPS;->mGPSListener:Landroid/location/LocationListener;

    .line 78
    invoke-direct {p0}, Lcom/youku/util/GetLocalGPS;->resetLonAndLat()V

    .line 79
    return-void
.end method

.method public startGetLL()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x2

    const/high16 v4, 0x41200000    # 10.0f

    .line 82
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    const-string v1, "startGetGPS mManager == null"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    const-string v1, "startGetGPS start"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v0, 0x32

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v10, "localStringBuilder":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v7

    .line 89
    .local v7, "localList":Ljava/util/List;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/youku/util/GetLocalGPS;->mNetworkListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 96
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 98
    .local v9, "localLocation2":Landroid/location/Location;
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps NETWORK_PROVIDER lo:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz v9, :cond_3

    .line 100
    sget-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    const-wide/16 v12, 0x0

    cmpl-double v0, v0, v12

    if-nez v0, :cond_2

    .line 101
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    .line 102
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps NETWORK_PROVIDER latitude_gps "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v12, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps NETWORK_PROVIDER longitude_gps "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v12, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v9    # "localLocation2":Landroid/location/Location;
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/youku/util/GetLocalGPS;->mGPSListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 111
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    .line 113
    .local v8, "localLocation1":Landroid/location/Location;
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps GPS_PROVIDER lo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz v8, :cond_4

    .line 115
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    .line 116
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    .line 117
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps GPS_PROVIDER latitude_gps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps GPS_PROVIDER longitude_gps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v8    # "localLocation1":Landroid/location/Location;
    :cond_4
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    const-string v1, "startGetGPS end"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopGetLL()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    const-string v1, "stopGetGPS mManager == null"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->TAG:Ljava/lang/String;

    const-string v1, "stopGetGPS "

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/youku/util/GetLocalGPS;->mNetworkListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 131
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS;->mManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/youku/util/GetLocalGPS;->mGPSListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method
