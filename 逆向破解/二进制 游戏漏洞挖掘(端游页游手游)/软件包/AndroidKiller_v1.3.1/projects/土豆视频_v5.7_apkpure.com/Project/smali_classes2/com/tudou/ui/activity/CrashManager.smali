.class public Lcom/tudou/ui/activity/CrashManager;
.super Ljava/lang/Object;
.source "CrashManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/CrashManager$OnShakeListener;
    }
.end annotation


# static fields
.field private static SPEED_SHRESHOLD:D = 0.0

.field private static final UPTATE_INTERVAL_TIME:I = 0x64


# instance fields
.field TAG:Ljava/lang/String;

.field private USED:Z

.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mBreakFlag:Z

.field private mContext:Landroid/content/Context;

.field private mShareFlag:Z

.field private onShakeListener:Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/high16 v0, 0x4026000000000000L    # 11.0

    sput-wide v0, Lcom/tudou/ui/activity/CrashManager;->SPEED_SHRESHOLD:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "CrashListener"

    iput-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->TAG:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/tudou/ui/activity/CrashManager;->mShareFlag:Z

    .line 31
    iput-boolean v1, p0, Lcom/tudou/ui/activity/CrashManager;->mBreakFlag:Z

    .line 32
    iput-boolean v2, p0, Lcom/tudou/ui/activity/CrashManager;->USED:Z

    .line 37
    iput-object p1, p0, Lcom/tudou/ui/activity/CrashManager;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 42
    iget-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->sensor:Landroid/hardware/Sensor;

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 87
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v5, v10, v11

    .line 88
    .local v5, "x":F
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x1

    aget v8, v10, v11

    .line 89
    .local v8, "y":F
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v9, v10, v11

    .line 91
    .local v9, "z":F
    iget v10, p0, Lcom/tudou/ui/activity/CrashManager;->lastX:F

    float-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    const/4 v2, 0x0

    .line 92
    .local v2, "deltaX":F
    :goto_0
    iget v10, p0, Lcom/tudou/ui/activity/CrashManager;->lastY:F

    float-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    const/4 v3, 0x0

    .line 93
    .local v3, "deltaY":F
    :goto_1
    iget v10, p0, Lcom/tudou/ui/activity/CrashManager;->lastZ:F

    float-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    const/4 v4, 0x0

    .line 95
    .local v4, "deltaZ":F
    :goto_2
    iput v5, p0, Lcom/tudou/ui/activity/CrashManager;->lastX:F

    .line 96
    iput v8, p0, Lcom/tudou/ui/activity/CrashManager;->lastY:F

    .line 97
    iput v9, p0, Lcom/tudou/ui/activity/CrashManager;->lastZ:F

    .line 98
    iget-boolean v10, p0, Lcom/tudou/ui/activity/CrashManager;->mBreakFlag:Z

    if-eqz v10, :cond_5

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, "currentUpdateTime":J
    iget-wide v10, p0, Lcom/tudou/ui/activity/CrashManager;->lastUpdateTime:J

    sub-long v6, v0, v10

    .line 104
    .local v6, "timeInterval":J
    const-wide/16 v10, 0x64

    cmp-long v10, v6, v10

    if-gez v10, :cond_4

    .line 125
    .end local v0    # "currentUpdateTime":J
    .end local v6    # "timeInterval":J
    :cond_0
    :goto_3
    return-void

    .line 91
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "deltaZ":F
    :cond_1
    iget v10, p0, Lcom/tudou/ui/activity/CrashManager;->lastX:F

    sub-float v2, v5, v10

    goto :goto_0

    .line 92
    .restart local v2    # "deltaX":F
    :cond_2
    iget v10, p0, Lcom/tudou/ui/activity/CrashManager;->lastY:F

    sub-float v3, v8, v10

    goto :goto_1

    .line 93
    .restart local v3    # "deltaY":F
    :cond_3
    iget v10, p0, Lcom/tudou/ui/activity/CrashManager;->lastZ:F

    sub-float v4, v9, v10

    goto :goto_2

    .line 106
    .restart local v0    # "currentUpdateTime":J
    .restart local v4    # "deltaZ":F
    .restart local v6    # "timeInterval":J
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/tudou/ui/activity/CrashManager;->mBreakFlag:Z

    .line 117
    .end local v0    # "currentUpdateTime":J
    .end local v6    # "timeInterval":J
    :cond_5
    mul-float v10, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    sget-wide v12, Lcom/tudou/ui/activity/CrashManager;->SPEED_SHRESHOLD:D

    cmpg-double v10, v10, v12

    if-lez v10, :cond_0

    .line 119
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/tudou/ui/activity/CrashManager;->mBreakFlag:Z

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/tudou/ui/activity/CrashManager;->lastUpdateTime:J

    .line 122
    iget-boolean v10, p0, Lcom/tudou/ui/activity/CrashManager;->mShareFlag:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/tudou/ui/activity/CrashManager;->onShakeListener:Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

    if-eqz v10, :cond_0

    .line 124
    iget-object v10, p0, Lcom/tudou/ui/activity/CrashManager;->onShakeListener:Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

    invoke-interface {v10}, Lcom/tudou/ui/activity/CrashManager$OnShakeListener;->onShake()V

    goto :goto_3
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "param"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/tudou/ui/activity/CrashManager;->mShareFlag:Z

    .line 132
    return-void
.end method

.method public setOnShakeListener(Lcom/tudou/ui/activity/CrashManager$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tudou/ui/activity/CrashManager;->onShakeListener:Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

    .line 82
    return-void
.end method

.method public start(Lcom/tudou/ui/activity/CrashManager$OnShakeListener;)Z
    .locals 3
    .param p1, "paramOnShakeListener"    # Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 50
    iget-boolean v2, p0, Lcom/tudou/ui/activity/CrashManager;->USED:Z

    if-nez v2, :cond_0

    .line 61
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-boolean v2, p0, Lcom/tudou/ui/activity/CrashManager;->mShareFlag:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/activity/CrashManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/activity/CrashManager;->sensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    iput-object p1, p0, Lcom/tudou/ui/activity/CrashManager;->onShakeListener:Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

    .line 59
    iget-object v1, p0, Lcom/tudou/ui/activity/CrashManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/tudou/ui/activity/CrashManager;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 60
    iput-boolean v0, p0, Lcom/tudou/ui/activity/CrashManager;->mShareFlag:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/tudou/ui/activity/CrashManager;->USED:Z

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/tudou/ui/activity/CrashManager;->mShareFlag:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/activity/CrashManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/activity/CrashManager;->mShareFlag:Z

    goto :goto_0
.end method
