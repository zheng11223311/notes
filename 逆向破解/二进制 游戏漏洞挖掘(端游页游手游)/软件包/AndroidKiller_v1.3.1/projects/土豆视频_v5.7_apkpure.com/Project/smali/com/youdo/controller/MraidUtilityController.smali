.class public Lcom/youdo/controller/MraidUtilityController;
.super Lcom/youdo/controller/MraidController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/controller/MraidUtilityController$AssetStatus;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MraidUtilityController"


# instance fields
.field private mAssetController:Lcom/youdo/controller/MraidAssetController;

.field private mAssetStatus:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

.field public mDisplayController:Lcom/youdo/controller/MraidDisplayController;

.field private mLocationController:Lcom/youdo/controller/MraidLocationController;

.field private mNetworkController:Lcom/youdo/controller/MraidNetworkController;

.field private mSensorController:Lcom/youdo/controller/MraidSensorController;

.field private mVideoAdDuration:D

.field private mVideoAdPlayheadTime:D


# direct methods
.method public constructor <init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/youdo/controller/MraidController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    sget-object v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->UNKNOWN:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    iput-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetStatus:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    new-instance v0, Lcom/youdo/controller/MraidAssetController;

    invoke-direct {v0, p1, p2}, Lcom/youdo/controller/MraidAssetController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetController:Lcom/youdo/controller/MraidAssetController;

    new-instance v0, Lcom/youdo/controller/MraidDisplayController;

    invoke-direct {v0, p1, p2}, Lcom/youdo/controller/MraidDisplayController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    new-instance v0, Lcom/youdo/controller/MraidLocationController;

    invoke-direct {v0, p1, p2}, Lcom/youdo/controller/MraidLocationController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mLocationController:Lcom/youdo/controller/MraidLocationController;

    new-instance v0, Lcom/youdo/controller/MraidNetworkController;

    invoke-direct {v0, p1, p2}, Lcom/youdo/controller/MraidNetworkController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mNetworkController:Lcom/youdo/controller/MraidNetworkController;

    new-instance v0, Lcom/youdo/controller/MraidSensorController;

    invoke-direct {v0, p1, p2}, Lcom/youdo/controller/MraidSensorController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-static {}, Lorg/openad/common/util/OSUtils;->isJavascriptInterfaceWorkable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetController:Lcom/youdo/controller/MraidAssetController;

    const-string v1, "MRAIDAssetsControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/youdo/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    const-string v1, "MRAIDDisplayControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/youdo/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mLocationController:Lcom/youdo/controller/MraidLocationController;

    const-string v1, "MRAIDLocationControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/youdo/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mNetworkController:Lcom/youdo/controller/MraidNetworkController;

    const-string v1, "MRAIDNetworkControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/youdo/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    const-string v1, "MRAIDSensorControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/youdo/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSupports()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "supports: [ \'level-1\', \'level-2\', \'screen\', \'orientation\', \'network\'"

    iget-object v3, p0, Lcom/youdo/controller/MraidUtilityController;->mLocationController:Lcom/youdo/controller/MraidLocationController;

    invoke-virtual {v3}, Lcom/youdo/controller/MraidLocationController;->allowLocationServices()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \'location\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SEND_SMS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \'sms\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CALL_PHONE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \'phone\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_CALENDAR"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    :goto_3
    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'calendar\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'video\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'audio\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'map\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'email\' ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidUtilityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupports: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    move v3, v2

    goto/16 :goto_0

    :cond_6
    move v3, v2

    goto/16 :goto_1

    :cond_7
    move v3, v2

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public activate(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "networkChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mNetworkController:Lcom/youdo/controller/MraidNetworkController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidNetworkController;->startNetworkListener()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mLocationController:Lcom/youdo/controller/MraidLocationController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidLocationController;->allowLocationServices()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "locationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mLocationController:Lcom/youdo/controller/MraidLocationController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidLocationController;->startLocationListener()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "shake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidSensorController;->startShakeListener()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "tiltChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidSensorController;->startTiltListener()V

    goto :goto_0

    :cond_4
    const-string v0, "headingChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidSensorController;->startHeadingListener()V

    goto :goto_0

    :cond_5
    const-string v0, "orientationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidDisplayController;->startConfigurationListener()V

    goto :goto_0
.end method

.method public copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetController:Lcom/youdo/controller/MraidAssetController;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/controller/MraidAssetController;->copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    return-void
.end method

.method public deactivate(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "networkChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mNetworkController:Lcom/youdo/controller/MraidNetworkController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidNetworkController;->stopNetworkListener()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "locationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mLocationController:Lcom/youdo/controller/MraidLocationController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidLocationController;->stopAllListeners()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "shake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidSensorController;->stopShakeListener()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "tiltChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidSensorController;->stopTiltListener()V

    goto :goto_0

    :cond_4
    const-string v0, "headingChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidSensorController;->stopHeadingListener()V

    goto :goto_0

    :cond_5
    const-string v0, "orientationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidDisplayController;->stopConfigurationListener()V

    goto :goto_0
.end method

.method public deleteOldAds()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetController:Lcom/youdo/controller/MraidAssetController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidAssetController;->deleteOldAds()V

    return-void
.end method

.method public getAssetStatus()Lcom/youdo/controller/MraidUtilityController$AssetStatus;
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetStatus:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetController:Lcom/youdo/controller/MraidAssetController;

    invoke-virtual {v0, p1}, Lcom/youdo/controller/MraidAssetController;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMraidNetworkController()Lcom/youdo/controller/MraidNetworkController;
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mNetworkController:Lcom/youdo/controller/MraidNetworkController;

    return-object v0
.end method

.method public getSDKProfile()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "sdk_tag"

    const-string v3, "master"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sdk_seq_reversion"

    const-string v3, "1412"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sdk_debug"

    sget-object v3, Lcom/GitVersion;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sdk"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "os_sdk_int"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "os_release"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "can not get adsdk profile"

    goto :goto_0
.end method

.method public getVideoAdDuration()D
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-wide v0, p0, Lcom/youdo/controller/MraidUtilityController;->mVideoAdDuration:D

    return-wide v0
.end method

.method public getVideoAdPlayheadTime()D
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-wide v0, p0, Lcom/youdo/controller/MraidUtilityController;->mVideoAdPlayheadTime:D

    return-wide v0
.end method

.method public init(F)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ state: \'default\', network: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mNetworkController:Lcom/youdo/controller/MraidNetworkController;

    invoke-virtual {v1}, Lcom/youdo/controller/MraidNetworkController;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v1}, Lcom/youdo/controller/MraidDisplayController;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v1}, Lcom/youdo/controller/MraidDisplayController;->getMaxSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v1}, Lcom/youdo/controller/MraidDisplayController;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " defaultPosition: { x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getDefaultPositionX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getDefaultPositionY()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " },"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v1}, Lcom/youdo/controller/MraidDisplayController;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/youdo/controller/MraidUtilityController;->getSupports()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidUtilityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: injection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    new-instance v2, Lcom/youdo/controller/MraidUtilityController$1;

    invoke-direct {v2, p0}, Lcom/youdo/controller/MraidUtilityController$1;-><init>(Lcom/youdo/controller/MraidUtilityController;)V

    invoke-virtual {v1, v2}, Lcom/youdo/view/MraidView;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    const-string v0, "Android"

    return-void
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCall: number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/youdo/controller/MraidUtilityController;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    const-string v1, "Bad Phone Number"

    const-string v2, "makeCall"

    invoke-virtual {v0, v1, v2}, Lcom/youdo/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/youdo/controller/MraidUtilityController$4;

    invoke-direct {v2, p0, v1}, Lcom/youdo/controller/MraidUtilityController$4;-><init>(Lcom/youdo/controller/MraidUtilityController;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public ready()V
    .locals 3

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setState(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v2}, Lcom/youdo/view/MraidView;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mMraidView:Lcom/youdo/view/MraidView;

    const-string v1, "mraid.addEventListener(\'ready\', mraidReadyEvent);"

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMail: recipient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/youdo/controller/MraidUtilityController$3;

    invoke-direct {v2, p0, v0}, Lcom/youdo/controller/MraidUtilityController$3;-><init>(Lcom/youdo/controller/MraidUtilityController;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSMS: recipient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/youdo/controller/MraidUtilityController$2;

    invoke-direct {v2, p0, v0}, Lcom/youdo/controller/MraidUtilityController$2;-><init>(Lcom/youdo/controller/MraidUtilityController;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAssetStatus(Lcom/youdo/controller/MraidUtilityController$AssetStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetStatus:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    return-void
.end method

.method public setMaxSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/controller/MraidDisplayController;->setMaxSize(II)V

    return-void
.end method

.method public setVideoAdDuration(D)V
    .locals 1

    iput-wide p1, p0, Lcom/youdo/controller/MraidUtilityController;->mVideoAdDuration:D

    return-void
.end method

.method public setVideoAdPlayheadTime(D)V
    .locals 1

    iput-wide p1, p0, Lcom/youdo/controller/MraidUtilityController;->mVideoAdPlayheadTime:D

    return-void
.end method

.method public share(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lorg/openad/common/util/OSUtils;->isValidAction_1000ms()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string/jumbo v2, "share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "share to "

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/youdo/controller/MraidUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/youdo/controller/MraidUtilityController$5;

    invoke-direct {v2, p0, v0}, Lcom/youdo/controller/MraidUtilityController$5;-><init>(Lcom/youdo/controller/MraidUtilityController;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MraidUtilityController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetController:Lcom/youdo/controller/MraidAssetController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidAssetController;->stopAllListeners()V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mDisplayController:Lcom/youdo/controller/MraidDisplayController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidDisplayController;->stopAllListeners()V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mLocationController:Lcom/youdo/controller/MraidLocationController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidLocationController;->stopAllListeners()V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mNetworkController:Lcom/youdo/controller/MraidNetworkController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidNetworkController;->stopAllListeners()V

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-virtual {v0}, Lcom/youdo/controller/MraidSensorController;->stopAllListeners()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeToDiskWrap(Lcom/youdo/view/MraidView;Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidUtilityController;->mAssetController:Lcom/youdo/controller/MraidAssetController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/youdo/controller/MraidAssetController;->writeToDiskWrap(Lcom/youdo/view/MraidView;Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
