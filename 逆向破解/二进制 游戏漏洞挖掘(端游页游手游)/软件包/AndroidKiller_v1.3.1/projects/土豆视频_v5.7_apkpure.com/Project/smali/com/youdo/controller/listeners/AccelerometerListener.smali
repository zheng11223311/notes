.class public Lcom/youdo/controller/listeners/AccelerometerListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final FORCE_THRESHOLD:I = 0x3e8

.field private static final SHAKE_COUNT:I = 0x2

.field private static final SHAKE_DURATION:I = 0x7d0

.field private static final SHAKE_TIMEOUT:I = 0x1f4

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field private bAccReady:Z

.field private bMagReady:Z

.field private mAccVals:[F

.field private mActualOrientation:[F

.field mKey:Ljava/lang/String;

.field private mLastAccVals:[F

.field private mLastForce:J

.field private mLastShake:J

.field private mLastTime:J

.field private mMagVals:[F

.field mSensorController:Lcom/youdo/controller/MraidSensorController;

.field private mSensorDelay:I

.field private mShakeCount:I

.field registeredHeadingListeners:I

.field registeredShakeListeners:I

.field registeredTiltListeners:I

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youdo/controller/MraidSensorController;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    iput v1, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mSensorDelay:I

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastAccVals:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mActualOrientation:[F

    iput-object p2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private start()V
    .locals 3

    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mSensorDelay:I

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private startMag()V
    .locals 3

    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mSensorDelay:I

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-direct {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mActualOrientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/16 v1, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mMagVals:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->bAccReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->bMagReady:Z

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->bAccReady:Z

    iput-boolean v6, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->bMagReady:Z

    new-array v0, v1, [F

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    iget-object v3, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mMagVals:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mActualOrientation:[F

    iget-object v1, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mActualOrientation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    iget-object v1, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mActualOrientation:[F

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/youdo/controller/MraidSensorController;->onHeadingChange(F)V

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastForce:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iput v6, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mShakeCount:I

    :cond_1
    iget-wide v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastTime:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    aget v4, v4, v6

    iget-object v5, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    aget v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastAccVals:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastAccVals:[F

    aget v5, v5, v7

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastAccVals:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float v2, v4, v2

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mShakeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mShakeCount:I

    if-lt v2, v8, :cond_2

    iget-wide v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastShake:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iput-wide v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastShake:J

    iput v6, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mShakeCount:I

    iget-object v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    invoke-virtual {v2}, Lcom/youdo/controller/MraidSensorController;->onShake()V

    :cond_2
    iput-wide v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastForce:J

    :cond_3
    iput-wide v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastTime:J

    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mSensorController:Lcom/youdo/controller/MraidSensorController;

    iget-object v1, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    aget v3, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/youdo/controller/MraidSensorController;->onTilt(FFF)V

    :cond_4
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mMagVals:[F

    iput-boolean v7, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->bMagReady:Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    iput-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mLastAccVals:[F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mAccVals:[F

    iput-boolean v7, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->bAccReady:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSensorDelay(I)V
    .locals 1

    iput p1, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->mSensorDelay:I

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stop()V

    invoke-direct {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->start()V

    :cond_1
    return-void
.end method

.method public startTrackingHeading()V
    .locals 1

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->startMag()V

    :cond_0
    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    return-void
.end method

.method public startTrackingShake()V
    .locals 1

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->setSensorDelay(I)V

    invoke-direct {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->start()V

    :cond_0
    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    return-void
.end method

.method public startTrackingTilt()V
    .locals 1

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->start()V

    :cond_0
    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    return-void
.end method

.method public stop()V
    .locals 1

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    :try_start_0
    invoke-virtual {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopTrackingHeading()V
    .locals 1

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stop()V

    :cond_0
    return-void
.end method

.method public stopTrackingShake()V
    .locals 1

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredShakeListeners:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/youdo/controller/listeners/AccelerometerListener;->setSensorDelay(I)V

    invoke-virtual {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stop()V

    :cond_0
    return-void
.end method

.method public stopTrackingTilt()V
    .locals 1

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youdo/controller/listeners/AccelerometerListener;->registeredTiltListeners:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/controller/listeners/AccelerometerListener;->stop()V

    :cond_0
    return-void
.end method
