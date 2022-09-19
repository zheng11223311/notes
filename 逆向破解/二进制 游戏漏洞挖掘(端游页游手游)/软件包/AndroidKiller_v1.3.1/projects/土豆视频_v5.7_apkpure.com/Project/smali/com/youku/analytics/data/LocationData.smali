.class public Lcom/youku/analytics/data/LocationData;
.super Ljava/lang/Object;
.source "LocationData.java"

# interfaces
.implements Lcom/youku/analytics/common/IOJson;


# static fields
.field protected static final LATITUDE:Ljava/lang/String; = "la"

.field protected static final LONGITUDE:Ljava/lang/String; = "lo"


# instance fields
.field private mLatitude:D

.field private mLocationTime:J

.field private mLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/analytics/data/LocationData;->mLatitude:D

    .line 28
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/analytics/data/LocationData;->mLongitude:D

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/youku/analytics/data/LocationData;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->latitude:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/youku/analytics/data/LocationData;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->longitude:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/analytics/data/LocationData;->mLocationTime:J

    .line 33
    :cond_0
    return-void
.end method

.method public static createLocationData(Landroid/content/Context;)Lcom/youku/analytics/data/LocationData;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/youku/analytics/utils/Tools;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 65
    .local v0, "location":Landroid/location/Location;
    const/4 v1, 0x0

    .line 66
    .local v1, "locationData":Lcom/youku/analytics/data/LocationData;
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/youku/analytics/data/LocationData;

    .end local v1    # "locationData":Lcom/youku/analytics/data/LocationData;
    invoke-direct {v1, v0}, Lcom/youku/analytics/data/LocationData;-><init>(Landroid/location/Location;)V

    .line 68
    .restart local v1    # "locationData":Lcom/youku/analytics/data/LocationData;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    iget-wide v0, p0, Lcom/youku/analytics/data/LocationData;->mLatitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/youku/analytics/data/LocationData;->mLongitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/youku/analytics/data/LocationData;->mLocationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p1, :cond_1

    .line 45
    :try_start_0
    const-string v1, "la"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "la"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/youku/analytics/data/LocationData;->mLatitude:D

    .line 47
    :cond_0
    const-string v1, "lo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string v1, "lo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/youku/analytics/data/LocationData;->mLongitude:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSession(Ljava/lang/String;J)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 74
    return-void
.end method

.method public write(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "la"

    iget-wide v2, p0, Lcom/youku/analytics/data/LocationData;->mLatitude:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 38
    const-string v0, "lo"

    iget-wide v2, p0, Lcom/youku/analytics/data/LocationData;->mLongitude:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 39
    return-void
.end method
