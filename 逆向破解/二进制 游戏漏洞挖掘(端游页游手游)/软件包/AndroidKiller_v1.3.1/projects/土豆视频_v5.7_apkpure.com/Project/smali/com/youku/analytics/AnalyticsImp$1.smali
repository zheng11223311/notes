.class Lcom/youku/analytics/AnalyticsImp$1;
.super Ljava/lang/Object;
.source "AnalyticsImp.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/analytics/AnalyticsImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/analytics/AnalyticsImp;


# direct methods
.method constructor <init>(Lcom/youku/analytics/AnalyticsImp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp$1;->this$0:Lcom/youku/analytics/AnalyticsImp;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get location:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->d(Ljava/lang/String;)I

    .line 496
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->setLocation(Landroid/location/Location;)V

    .line 497
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$1;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v0, v0, Lcom/youku/analytics/AnalyticsImp;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$1;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v0, v0, Lcom/youku/analytics/AnalyticsImp;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$1;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v0, v0, Lcom/youku/analytics/AnalyticsImp;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$1;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v1, v1, Lcom/youku/analytics/AnalyticsImp;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$1;->this$0:Lcom/youku/analytics/AnalyticsImp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/youku/analytics/AnalyticsImp;->mLocationListener:Landroid/location/LocationListener;

    .line 500
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 509
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 506
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 503
    return-void
.end method
