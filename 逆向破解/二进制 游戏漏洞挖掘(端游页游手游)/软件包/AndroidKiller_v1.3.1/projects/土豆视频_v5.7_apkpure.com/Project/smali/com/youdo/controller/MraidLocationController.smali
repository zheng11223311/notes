.class public Lcom/youdo/controller/MraidLocationController;
.super Lcom/youdo/controller/MraidController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/controller/MraidLocationController$LocationResultListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MraidLocationController"


# instance fields
.field final INTERVAL:I

.field private allowLocationServices:Z

.field private hasPermission:Z

.field private mGps:Lcom/youdo/controller/listeners/GeoListener;

.field private mLocListenerCount:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

.field private mNetwork:Lcom/youdo/controller/listeners/GeoListener;


# direct methods
.method public constructor <init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0x3e8

    invoke-direct {p0, p1, p2}, Lcom/youdo/controller/MraidController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/controller/MraidLocationController;->hasPermission:Z

    iput v1, p0, Lcom/youdo/controller/MraidLocationController;->INTERVAL:I

    new-instance v0, Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    invoke-direct {v0, p0}, Lcom/youdo/controller/MraidLocationController$LocationResultListener;-><init>(Lcom/youdo/controller/MraidLocationController;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    iput-boolean v2, p0, Lcom/youdo/controller/MraidLocationController;->allowLocationServices:Z

    :try_start_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/youdo/controller/listeners/GeoListener;

    const/16 v1, 0x3e8

    const-string v2, "gps"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/youdo/controller/listeners/GeoListener;-><init>(Landroid/content/Context;ILcom/youdo/controller/MraidLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    const-string v1, "locate_success"

    iget-object v2, p0, Lcom/youdo/controller/MraidLocationController;->mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/youdo/controller/listeners/GeoListener;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    const-string v1, "locate_fault"

    iget-object v2, p0, Lcom/youdo/controller/MraidLocationController;->mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/youdo/controller/listeners/GeoListener;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/youdo/controller/listeners/GeoListener;

    const/16 v1, 0x3e8

    const-string v2, "network"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/youdo/controller/listeners/GeoListener;-><init>(Landroid/content/Context;ILcom/youdo/controller/MraidLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    const-string v1, "locate_success"

    iget-object v2, p0, Lcom/youdo/controller/MraidLocationController;->mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/youdo/controller/listeners/GeoListener;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    const-string v1, "locate_fault"

    iget-object v2, p0, Lcom/youdo/controller/MraidLocationController;->mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/youdo/controller/listeners/GeoListener;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/controller/MraidLocationController;->hasPermission:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static formatLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowLocationServices(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/youdo/controller/MraidLocationController;->allowLocationServices:Z

    return-void
.end method

.method public allowLocationServices()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/controller/MraidLocationController;->allowLocationServices:Z

    return v0
.end method

.method public fail()V
    .locals 2

    const-string v0, "MraidLocationController"

    const-string v1, "Location can\'t be determined"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MraidLocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: hasPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/youdo/controller/MraidLocationController;->hasPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/youdo/controller/MraidLocationController;->hasPermission:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/youdo/controller/MraidLocationController;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youdo/controller/MraidLocationController;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_2
    const-string v1, "MraidLocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLocationParams()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MraidLocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: hasPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/youdo/controller/MraidLocationController;->hasPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/youdo/controller/MraidLocationController;->hasPermission:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/youdo/controller/MraidLocationController;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youdo/controller/MraidLocationController;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_2
    const-string v1, "MraidLocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/youdo/controller/MraidLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    iget v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocListenerCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/GeoListener;->start()V

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    iget-object v1, p0, Lcom/youdo/controller/MraidController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youdo/controller/listeners/GeoListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/GeoListener;->start()V

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    iget-object v1, p0, Lcom/youdo/controller/MraidController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youdo/controller/listeners/GeoListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_1
    iget v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocListenerCount:I

    return-void
.end method

.method public stopAllListeners()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/youdo/controller/MraidLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    iput v2, p0, Lcom/youdo/controller/MraidLocationController;->mLocListenerCount:I

    :try_start_0
    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/GeoListener;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/GeoListener;->stop()V
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

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocationResultListener:Lcom/youdo/controller/MraidLocationController$LocationResultListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/youdo/controller/MraidLocationController$LocationResultListener;->allowLocateFailReporting:Ljava/lang/Boolean;

    iget v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocListenerCount:I

    iget v0, p0, Lcom/youdo/controller/MraidLocationController;->mLocListenerCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mNetwork:Lcom/youdo/controller/listeners/GeoListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/GeoListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidLocationController;->mGps:Lcom/youdo/controller/listeners/GeoListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/GeoListener;->stop()V

    :cond_1
    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/youdo/controller/MraidLocationController;->formatLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidLocationController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/controller/MraidLocationController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
