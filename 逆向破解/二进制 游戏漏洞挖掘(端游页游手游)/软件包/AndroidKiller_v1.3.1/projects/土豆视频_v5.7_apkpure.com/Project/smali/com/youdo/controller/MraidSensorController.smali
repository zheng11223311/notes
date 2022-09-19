.class public Lcom/youdo/controller/MraidSensorController;
.super Lcom/youdo/controller/MraidController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MraidSensorController"


# instance fields
.field final INTERVAL:I

.field private mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F


# direct methods
.method public constructor <init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/youdo/controller/MraidController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/youdo/controller/MraidSensorController;->INTERVAL:I

    iput v1, p0, Lcom/youdo/controller/MraidSensorController;->mLastX:F

    iput v1, p0, Lcom/youdo/controller/MraidSensorController;->mLastY:F

    iput v1, p0, Lcom/youdo/controller/MraidSensorController;->mLastZ:F

    new-instance v0, Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-direct {v0, p2, p0}, Lcom/youdo/controller/listeners/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/youdo/controller/MraidSensorController;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidSensorController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v2}, Lcom/youdo/controller/listeners/AccelerometerListener;->getHeading()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->getHeading()F

    move-result v0

    return v0
.end method

.method public getTilt()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ x : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youdo/controller/MraidSensorController;->mLastX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", y : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youdo/controller/MraidSensorController;->mLastY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", z : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youdo/controller/MraidSensorController;->mLastZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onHeadingChange(F)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ heading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v2, p1

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidSensorController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/controller/MraidSensorController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public onShake()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mMraidView:Lcom/youdo/view/MraidView;

    const-string v1, "Mraid.gotShake()"

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public onTilt(FFF)V
    .locals 2

    iput p1, p0, Lcom/youdo/controller/MraidSensorController;->mLastX:F

    iput p2, p0, Lcom/youdo/controller/MraidSensorController;->mLastY:F

    iput p3, p0, Lcom/youdo/controller/MraidSensorController;->mLastZ:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ tilt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youdo/controller/MraidSensorController;->getTilt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidSensorController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public startHeadingListener()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->startTrackingHeading()V

    return-void
.end method

.method public startShakeListener()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->startTrackingShake()V

    return-void
.end method

.method public startTiltListener()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->startTrackingTilt()V

    return-void
.end method

.method stop()V
    .locals 0

    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stopAllListeners()V

    return-void
.end method

.method public stopHeadingListener()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stopTrackingHeading()V

    return-void
.end method

.method public stopShakeListener()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stopTrackingShake()V

    return-void
.end method

.method public stopTiltListener()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidSensorController;->mAccel:Lcom/youdo/controller/listeners/AccelerometerListener;

    invoke-virtual {v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stopTrackingTilt()V

    return-void
.end method
