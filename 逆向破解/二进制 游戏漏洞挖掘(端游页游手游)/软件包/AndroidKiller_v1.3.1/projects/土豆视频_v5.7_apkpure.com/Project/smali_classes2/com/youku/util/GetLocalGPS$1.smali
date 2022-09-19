.class Lcom/youku/util/GetLocalGPS$1;
.super Ljava/lang/Object;
.source "GetLocalGPS.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/util/GetLocalGPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/GetLocalGPS;


# direct methods
.method constructor <init>(Lcom/youku/util/GetLocalGPS;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/youku/util/GetLocalGPS$1;->this$0:Lcom/youku/util/GetLocalGPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "paramLocation"    # Landroid/location/Location;

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    .line 18
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    .line 19
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS$1;->this$0:Lcom/youku/util/GetLocalGPS;

    invoke-static {v0}, Lcom/youku/util/GetLocalGPS;->access$000(Lcom/youku/util/GetLocalGPS;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged  gps mLocGPS_latitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/youku/util/GetLocalGPS$1;->this$0:Lcom/youku/util/GetLocalGPS;

    invoke-static {v0}, Lcom/youku/util/GetLocalGPS;->access$000(Lcom/youku/util/GetLocalGPS;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged  gps mLocGPS_longitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 28
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramInt"    # I
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    return-void
.end method
