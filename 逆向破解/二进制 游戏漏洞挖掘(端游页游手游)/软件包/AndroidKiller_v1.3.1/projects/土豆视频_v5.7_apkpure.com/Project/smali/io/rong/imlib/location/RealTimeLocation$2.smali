.class Lio/rong/imlib/location/RealTimeLocation$2;
.super Ljava/lang/Object;
.source "RealTimeLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/location/RealTimeLocation;->gpsInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 213
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lio/rong/imlib/location/RealTimeLocation;->access$302(Lio/rong/imlib/location/RealTimeLocation;D)D

    .line 216
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lio/rong/imlib/location/RealTimeLocation;->access$402(Lio/rong/imlib/location/RealTimeLocation;D)D

    .line 218
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$502(Lio/rong/imlib/location/RealTimeLocation;Z)Z

    .line 249
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$502(Lio/rong/imlib/location/RealTimeLocation;Z)Z

    .line 239
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$600(Lio/rong/imlib/location/RealTimeLocation;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 240
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/rong/imlib/location/RealTimeLocation;->access$302(Lio/rong/imlib/location/RealTimeLocation;D)D

    .line 242
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$2;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/rong/imlib/location/RealTimeLocation;->access$402(Lio/rong/imlib/location/RealTimeLocation;D)D

    .line 244
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u53ef\u89c1\u72b6\u6001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u670d\u52a1\u533a\u5916\u72b6\u6001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u6682\u505c\u670d\u52a1\u72b6\u6001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
