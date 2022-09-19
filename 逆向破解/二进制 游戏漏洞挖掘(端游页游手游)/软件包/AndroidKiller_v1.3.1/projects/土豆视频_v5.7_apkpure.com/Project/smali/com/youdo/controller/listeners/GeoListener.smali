.class public Lcom/youdo/controller/listeners/GeoListener;
.super Lorg/openad/events/XYDEventDispatcher;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final LOCATE_FAULT:Ljava/lang/String; = "locate_fault"

.field public static final LOCATE_SUCCESS:Ljava/lang/String; = "locate_success"

.field private static final TIME_OUT:J = 0x1388L


# instance fields
.field private final SHARED_PREFERENCES_NAME:Ljava/lang/String;

.field private mLocMan:Landroid/location/LocationManager;

.field mMraidLocationController:Lcom/youdo/controller/MraidLocationController;

.field private mProvider:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field protected mTimer:Ljava/util/Timer;

.field private spChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/youdo/controller/MraidLocationController;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mTimer:Ljava/util/Timer;

    const-string/jumbo v0, "xadsdk_geo"

    iput-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->SHARED_PREFERENCES_NAME:Ljava/lang/String;

    new-instance v0, Lcom/youdo/controller/listeners/GeoListener$1;

    invoke-direct {v0, p0}, Lcom/youdo/controller/listeners/GeoListener$1;-><init>(Lcom/youdo/controller/listeners/GeoListener;)V

    iput-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->spChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p3, p0, Lcom/youdo/controller/listeners/GeoListener;->mMraidLocationController:Lcom/youdo/controller/MraidLocationController;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mLocMan:Landroid/location/LocationManager;

    iput-object p4, p0, Lcom/youdo/controller/listeners/GeoListener;->mProvider:Ljava/lang/String;

    const-string/jumbo v0, "xadsdk_geo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/youdo/controller/listeners/GeoListener;->spChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/youdo/controller/listeners/GeoListener$2;

    invoke-direct {v1, p0}, Lcom/youdo/controller/listeners/GeoListener$2;-><init>(Lcom/youdo/controller/listeners/GeoListener;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private dispatchYDLocation(Lorg/openad/extension/OpenAdLocation;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lorg/openad/extension/OpenAdLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openad/extension/OpenAdLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/youdo/controller/listeners/GeoListener;->stopTimer()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "location"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "locate_success"

    invoke-direct {v1, v2, v0}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/youdo/controller/listeners/GeoListener;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 13

    const/4 v12, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "provider"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "time"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Lorg/openad/extension/OpenAdLocation;

    invoke-direct {v1, p1}, Lorg/openad/extension/OpenAdLocation;-><init>(Landroid/location/Location;)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/youdo/controller/listeners/GeoListener;->dispatchYDLocation(Lorg/openad/extension/OpenAdLocation;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "latitude"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "longitude"

    const-string v4, "0"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "altitude"

    const-string v6, "0"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "accuracy"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "provider"

    iget-object v9, p0, Lcom/youdo/controller/listeners/GeoListener;->mProvider:Ljava/lang/String;

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "time"

    const-wide/16 v10, 0x0

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "speed"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v12

    new-instance v1, Lorg/openad/extension/OpenAdLocation;

    invoke-direct/range {v1 .. v12}, Lorg/openad/extension/OpenAdLocation;-><init>(DDDFLjava/lang/String;JF)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "locate_fault"

    invoke-direct {v0, v1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/youdo/controller/listeners/GeoListener;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "locate_fault"

    invoke-direct {v0, v1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/youdo/controller/listeners/GeoListener;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mLocMan:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/youdo/controller/listeners/GeoListener;->mProvider:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/listeners/GeoListener;->mLocMan:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
