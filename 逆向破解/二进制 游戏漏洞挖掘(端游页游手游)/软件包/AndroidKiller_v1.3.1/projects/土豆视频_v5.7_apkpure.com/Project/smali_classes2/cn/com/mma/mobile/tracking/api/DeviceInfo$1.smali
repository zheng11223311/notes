.class final Lcn/com/mma/mobile/tracking/api/DeviceInfo$1;
.super Ljava/lang/Object;
.source "Countly.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getLocation(Landroid/content/Context;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/DeviceInfo$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 943
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/DeviceInfo$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getLocation(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "latestLocation":Ljava/lang/String;
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/mma/mobile/tracking/api/Countly;->updateLocationParams(Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/DeviceInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->access$000(Landroid/content/Context;)V

    .line 946
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 940
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 937
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 934
    return-void
.end method
