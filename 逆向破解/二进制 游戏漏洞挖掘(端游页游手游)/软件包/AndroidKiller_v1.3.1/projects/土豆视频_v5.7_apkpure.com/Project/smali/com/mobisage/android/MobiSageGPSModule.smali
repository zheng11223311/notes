.class Lcom/mobisage/android/MobiSageGPSModule;
.super Ljava/lang/Object;
.source "MobiSageGPSModule.java"


# static fields
.field private static ourInstance:Lcom/mobisage/android/MobiSageGPSModule;


# instance fields
.field private location:Ljava/lang/String;

.field private task:Lcom/mobisage/android/MobiSageGPSTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/mobisage/android/MobiSageGPSModule;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageGPSModule;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageGPSModule;->ourInstance:Lcom/mobisage/android/MobiSageGPSModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    sget-object v1, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 24
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-eqz v0, :cond_0

    .line 25
    new-instance v1, Lcom/mobisage/android/MobiSageGPSTask;

    invoke-direct {v1}, Lcom/mobisage/android/MobiSageGPSTask;-><init>()V

    iput-object v1, p0, Lcom/mobisage/android/MobiSageGPSModule;->task:Lcom/mobisage/android/MobiSageGPSTask;

    .line 26
    iget-object v1, p0, Lcom/mobisage/android/MobiSageGPSModule;->task:Lcom/mobisage/android/MobiSageGPSTask;

    const-wide/16 v2, 0xe10

    iput-wide v2, v1, Lcom/mobisage/android/MobiSageGPSTask;->periodTime:J

    .line 27
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v1

    iget-object v2, p0, Lcom/mobisage/android/MobiSageGPSModule;->task:Lcom/mobisage/android/MobiSageGPSTask;

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageTaskModule;->registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    :cond_0
    :goto_0
    const-string v1, "0 0"

    iput-object v1, p0, Lcom/mobisage/android/MobiSageGPSModule;->location:Ljava/lang/String;

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/mobisage/android/MobiSageGPSModule;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/mobisage/android/MobiSageGPSModule;->ourInstance:Lcom/mobisage/android/MobiSageGPSModule;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageGPSModule;->task:Lcom/mobisage/android/MobiSageGPSTask;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageTaskModule;->unregisterMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mobisage/android/MobiSageGPSModule;->location:Ljava/lang/String;

    return-object v0
.end method

.method public updateGPSLocation()V
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v3

    const-string v4, "enablelocation"

    invoke-virtual {v3, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 55
    .local v1, "locationManager":Landroid/location/LocationManager;
    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "provider":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 59
    .local v0, "gpsLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobisage/android/MobiSageGPSModule;->location:Ljava/lang/String;

    goto :goto_0
.end method
