.class public Lorg/openad/controller/BasicLocationController;
.super Lorg/openad/controller/BasicController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openad/controller/BasicLocationController$LocationResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicLocationController"


# instance fields
.field final INTERVAL:I

.field private hasPermission:Z

.field private mAllowLocationServices:Z

.field private mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

.field private mLocListenerCount:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

.field private mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0x3e8

    invoke-direct {p0, p1}, Lorg/openad/controller/BasicController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openad/controller/BasicLocationController;->hasPermission:Z

    iput v1, p0, Lorg/openad/controller/BasicLocationController;->INTERVAL:I

    new-instance v0, Lorg/openad/controller/BasicLocationController$LocationResultListener;

    invoke-direct {v0, p0}, Lorg/openad/controller/BasicLocationController$LocationResultListener;-><init>(Lorg/openad/controller/BasicLocationController;)V

    iput-object v0, p0, Lorg/openad/controller/BasicLocationController;->mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

    iput-boolean v2, p0, Lorg/openad/controller/BasicLocationController;->mAllowLocationServices:Z

    :try_start_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/openad/controller/BasicLocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openad/controller/BasicLocationListener;

    const/16 v1, 0x3e8

    const-string v2, "gps"

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/openad/controller/BasicLocationListener;-><init>(Landroid/content/Context;ILorg/openad/controller/BasicLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/openad/controller/BasicLocationController;->mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

    const-string v1, "PositioningSuccess"

    iget-object v2, p0, Lorg/openad/controller/BasicLocationController;->mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

    invoke-virtual {v0, v1, v2}, Lorg/openad/controller/BasicLocationListener;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

    const-string v1, "PositioningFault"

    iget-object v2, p0, Lorg/openad/controller/BasicLocationController;->mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

    invoke-virtual {v0, v1, v2}, Lorg/openad/controller/BasicLocationListener;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    :cond_0
    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/openad/controller/BasicLocationListener;

    const/16 v1, 0x3e8

    const-string v2, "network"

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/openad/controller/BasicLocationListener;-><init>(Landroid/content/Context;ILorg/openad/controller/BasicLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/openad/controller/BasicLocationController;->mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;

    const-string v1, "PositioningSuccess"

    iget-object v2, p0, Lorg/openad/controller/BasicLocationController;->mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

    invoke-virtual {v0, v1, v2}, Lorg/openad/controller/BasicLocationListener;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;

    const-string v1, "PositioningFault"

    iget-object v2, p0, Lorg/openad/controller/BasicLocationController;->mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

    invoke-virtual {v0, v1, v2}, Lorg/openad/controller/BasicLocationListener;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openad/controller/BasicLocationController;->hasPermission:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public allowLocationServices(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/openad/controller/BasicLocationController;->mAllowLocationServices:Z

    return-void
.end method

.method public allowLocationServices()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openad/controller/BasicLocationController;->mAllowLocationServices:Z

    return v0
.end method

.method public fail()V
    .locals 2

    const-string v0, "BasicLocationController"

    const-string v1, "Location can\'t be determined"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "BasicLocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: hasPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/openad/controller/BasicLocationController;->hasPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lorg/openad/controller/BasicLocationController;->hasPermission:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/openad/controller/BasicLocationController;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openad/controller/BasicLocationController;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public getLocationParams()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "BasicLocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: hasPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/openad/controller/BasicLocationController;->hasPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lorg/openad/controller/BasicLocationController;->hasPermission:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/openad/controller/BasicLocationController;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openad/controller/BasicLocationController;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public startLocationListener()V
    .locals 2

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    iget v0, p0, Lorg/openad/controller/BasicLocationController;->mLocListenerCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;

    invoke-virtual {v0}, Lorg/openad/controller/BasicLocationListener;->start()V

    :cond_0
    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

    invoke-virtual {v0}, Lorg/openad/controller/BasicLocationListener;->start()V

    :cond_1
    iget v0, p0, Lorg/openad/controller/BasicLocationController;->mLocListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openad/controller/BasicLocationController;->mLocListenerCount:I

    return-void
.end method

.method public stopAllListeners()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    iput v2, p0, Lorg/openad/controller/BasicLocationController;->mLocListenerCount:I

    :try_start_0
    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

    invoke-virtual {v0}, Lorg/openad/controller/BasicLocationListener;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;

    invoke-virtual {v0}, Lorg/openad/controller/BasicLocationListener;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stopLocationListener()V
    .locals 2

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mLocationResultListener:Lorg/openad/controller/BasicLocationController$LocationResultListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/openad/controller/BasicLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    iget v0, p0, Lorg/openad/controller/BasicLocationController;->mLocListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/openad/controller/BasicLocationController;->mLocListenerCount:I

    iget v0, p0, Lorg/openad/controller/BasicLocationController;->mLocListenerCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mNetworkLocationListener:Lorg/openad/controller/BasicLocationListener;

    invoke-virtual {v0}, Lorg/openad/controller/BasicLocationListener;->stop()V

    :cond_0
    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openad/controller/BasicLocationController;->mGPSLocationListener:Lorg/openad/controller/BasicLocationListener;

    invoke-virtual {v0}, Lorg/openad/controller/BasicLocationListener;->stop()V

    :cond_1
    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 0

    return-void
.end method
