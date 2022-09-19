.class public Lcom/youku/player/util/DeviceOrientationHelper;
.super Landroid/view/OrientationEventListener;
.source "DeviceOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;,
        Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

.field private fromComplete:Z

.field public fromUser:Z

.field private localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/util/DeviceOrientationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;)V
    .locals 2
    .param p1, "ctxt"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 19
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->UNKONWN:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    .line 24
    iput-boolean v1, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    .line 26
    iput-boolean v1, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromComplete:Z

    .line 46
    iput-object p2, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    .line 48
    return-void
.end method

.method private initLocalOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 52
    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x14a

    if-lt p1, v0, :cond_3

    const/16 v0, 0x168

    if-gt p1, v0, :cond_3

    .line 55
    :cond_1
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    .line 70
    :cond_2
    :goto_0
    return-void

    .line 57
    :cond_3
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_4

    const/16 v0, 0x78

    if-gt p1, v0, :cond_4

    .line 59
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0

    .line 61
    :cond_4
    const/16 v0, 0x96

    if-lt p1, v0, :cond_5

    const/16 v0, 0xd2

    if-gt p1, v0, :cond_5

    .line 63
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0

    .line 65
    :cond_5
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_2

    .line 67
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0
.end method


# virtual methods
.method public disableListener()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/youku/player/util/DeviceOrientationHelper;->disable()V

    .line 162
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->UNKONWN:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    .line 164
    return-void
.end method

.method public enableListener()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/youku/player/util/DeviceOrientationHelper;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->enableOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/youku/player/util/DeviceOrientationHelper;->enable()V

    .line 157
    :cond_0
    return-void
.end method

.method public getLocalOrientation()Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    return-object v0
.end method

.method public isFromComplete()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromComplete:Z

    .line 172
    return-void
.end method

.method public isFromUser()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    .line 168
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->UNKONWN:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    if-ne v0, v1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/youku/player/util/DeviceOrientationHelper;->initLocalOrientation(I)V

    .line 81
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x14a

    if-lt p1, v0, :cond_8

    const/16 v0, 0x168

    if-gt p1, v0, :cond_8

    .line 84
    :cond_2
    iget-boolean v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    if-ne v0, v1, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromComplete:Z

    if-nez v0, :cond_6

    .line 88
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->land2Port()V

    .line 99
    :cond_4
    :goto_0
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_PORTRAIT:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    .line 135
    :cond_5
    :goto_1
    return-void

    .line 91
    :cond_6
    iget-boolean v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    if-eqz v0, :cond_7

    .line 92
    iput-boolean v2, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    goto :goto_0

    .line 93
    :cond_7
    iget-boolean v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromComplete:Z

    if-eqz v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->onFullScreenPlayComplete()V

    .line 96
    iput-boolean v2, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromComplete:Z

    goto :goto_0

    .line 101
    :cond_8
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_a

    const/16 v0, 0x78

    if-gt p1, v0, :cond_a

    .line 103
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_9

    .line 104
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->reverseLand()V

    .line 109
    :cond_9
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_LANDSCAPE:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_1

    .line 111
    :cond_a
    const/16 v0, 0x96

    if-lt p1, v0, :cond_c

    const/16 v0, 0xd2

    if-gt p1, v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_b

    .line 113
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->reversePort()V

    .line 118
    :cond_b
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_REVERSE_PORTRAIT:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_1

    .line 120
    :cond_c
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_5

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_5

    .line 122
    iget-boolean v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    if-eq v0, v1, :cond_e

    .line 124
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    invoke-interface {v0}, Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;->port2Land()V

    .line 131
    :cond_d
    :goto_2
    sget-object v0, Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;->ORIENTATION_LANDSCAPE:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->localOrientation:Lcom/youku/player/util/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_1

    .line 127
    :cond_e
    iget-boolean v0, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    if-eqz v0, :cond_d

    .line 128
    iput-boolean v2, p0, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    goto :goto_2
.end method

.method public setCallback(Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/youku/player/util/DeviceOrientationHelper;->callback:Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;

    .line 182
    return-void
.end method
