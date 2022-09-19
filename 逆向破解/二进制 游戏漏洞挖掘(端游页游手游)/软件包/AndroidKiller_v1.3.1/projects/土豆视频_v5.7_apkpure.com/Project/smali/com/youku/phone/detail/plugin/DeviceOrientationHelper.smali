.class public Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;
.super Landroid/view/OrientationEventListener;
.source "DeviceOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;
    }
.end annotation


# instance fields
.field private callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

.field private fromComplete:Z

.field public fromUser:Z

.field private localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

.field private mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;)V
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 21
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->UNKONWN:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    .line 24
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    .line 26
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromComplete:Z

    .line 48
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    .line 49
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->mAppContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private initLocalOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 55
    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x14a

    if-lt p1, v0, :cond_3

    const/16 v0, 0x168

    if-gt p1, v0, :cond_3

    .line 58
    :cond_1
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    .line 73
    :cond_2
    :goto_0
    return-void

    .line 60
    :cond_3
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_4

    const/16 v0, 0x78

    if-gt p1, v0, :cond_4

    .line 62
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0

    .line 64
    :cond_4
    const/16 v0, 0x96

    if-lt p1, v0, :cond_5

    const/16 v0, 0xd2

    if-gt p1, v0, :cond_5

    .line 66
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0

    .line 68
    :cond_5
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_2

    .line 70
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0
.end method


# virtual methods
.method public disableListener()V
    .locals 3

    .prologue
    .line 154
    const-string v0, "orientation"

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "disableListener"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->disable()V

    .line 157
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->UNKONWN:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    .line 159
    return-void
.end method

.method public enableListener()V
    .locals 3

    .prologue
    .line 146
    const-string v0, "orientation"

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "enableListener"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->enable()V

    .line 151
    :cond_0
    return-void
.end method

.method public getLocalOrientation()Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    return-object v0
.end method

.method public isFromComplete()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromComplete:Z

    .line 167
    return-void
.end method

.method public isFromUser()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    .line 163
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->UNKONWN:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-ne v0, v1, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->initLocalOrientation(I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    const-string v0, "orientation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fromUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  localOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fromComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-ltz p1, :cond_3

    const/16 v0, 0x1e

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0x14a

    if-lt p1, v0, :cond_9

    const/16 v0, 0x168

    if-gt p1, v0, :cond_9

    .line 91
    :cond_4
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-ne v0, v1, :cond_7

    :cond_5
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromComplete:Z

    if-nez v0, :cond_7

    .line 95
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->land2Port()V

    .line 106
    :cond_6
    :goto_1
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0

    .line 98
    :cond_7
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    if-eqz v0, :cond_8

    .line 99
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    goto :goto_1

    .line 100
    :cond_8
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromComplete:Z

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->onFullScreenPlayComplete()V

    .line 103
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromComplete:Z

    goto :goto_1

    .line 108
    :cond_9
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_b

    const/16 v0, 0x78

    if-gt p1, v0, :cond_b

    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_a

    .line 111
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_a

    .line 112
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->reverseLand()V

    .line 116
    :cond_a
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    goto/16 :goto_0

    .line 118
    :cond_b
    const/16 v0, 0x96

    if-lt p1, v0, :cond_d

    const/16 v0, 0xd2

    if-gt p1, v0, :cond_d

    .line 119
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_c

    .line 120
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_c

    .line 121
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->reversePort()V

    .line 125
    :cond_c
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    goto/16 :goto_0

    .line 127
    :cond_d
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_1

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_1

    .line 129
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    if-ne v0, v1, :cond_10

    .line 132
    :cond_e
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->port2Land()V

    .line 139
    :cond_f
    :goto_2
    sget-object v0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->localOrientation:Lcom/youku/phone/detail/plugin/DeviceOrientationHelper$DeviceOrientation;

    goto/16 :goto_0

    .line 135
    :cond_10
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    if-eqz v0, :cond_f

    .line 136
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->fromUser:Z

    goto :goto_2
.end method

.method public setCallback(Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    .line 177
    return-void
.end method
