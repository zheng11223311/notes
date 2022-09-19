.class public Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;
.super Ljava/lang/Object;
.source "IVoiceHandler.java"

# interfaces
.implements Lio/rong/imkit/util/IVoiceHandler;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/util/IVoiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceHandler"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentUri:Landroid/net/Uri;

.field mLastEventValue:F

.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, 0x1

    iput v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mLastEventValue:F

    .line 68
    :try_start_0
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 69
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 70
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mSensor:Landroid/hardware/Sensor;

    .line 73
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x2000000a

    const-string v3, "VoiceHandler"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mCurrentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 207
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 156
    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mCurrentUri:Landroid/net/Uri;

    .line 157
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 161
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 162
    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 163
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    invoke-interface {v0}, Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;->onFinish()V

    .line 164
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(Lio/rong/imkit/widget/InputView$Event;)V
    .locals 1
    .param p1, "event"    # Lio/rong/imkit/widget/InputView$Event;

    .prologue
    .line 210
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/widget/InputView$Event;->DESTROY:Lio/rong/imkit/widget/InputView$Event;

    if-ne p1, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->stop()V

    .line 213
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 175
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v3

    .line 177
    .local v0, "value":F
    iget v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mLastEventValue:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 178
    iput v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mLastEventValue:F

    .line 181
    :cond_0
    iget v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mLastEventValue:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 182
    iput v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mLastEventValue:F

    .line 185
    :cond_1
    iget v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mLastEventValue:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    .line 186
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 189
    :cond_2
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    invoke-interface {v1, v3}, Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;->onCover(Z)V

    .line 202
    :cond_3
    :goto_0
    return-void

    .line 194
    :cond_4
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 195
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 198
    :cond_5
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;->onCover(Z)V

    goto :goto_0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imkit/util/IVoiceHandler$VoiceException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->stop()V

    .line 89
    if-nez p2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iput-object p2, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mCurrentUri:Landroid/net/Uri;

    .line 94
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 95
    iget-object v3, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 96
    iget-object v3, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 97
    iget-object v3, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;

    invoke-direct {v4, p0, p1}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler$1;-><init>(Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 112
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 118
    .local v2, "fis":Ljava/io/FileInputStream;
    iget-object v3, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 120
    iget-object v3, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 121
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lio/rong/imkit/util/IVoiceHandler$VoiceException;

    invoke-direct {v3, v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v3, Lio/rong/imkit/util/IVoiceHandler$VoiceException;

    invoke-direct {v3, v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 125
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Lio/rong/imkit/util/IVoiceHandler$VoiceException;

    invoke-direct {v3, v0}, Lio/rong/imkit/util/IVoiceHandler$VoiceException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 127
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPlayListener(Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    .prologue
    .line 82
    iput-object p1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    .line 83
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mCurrentUri:Landroid/net/Uri;

    .line 136
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 140
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 141
    iput-object v1, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 142
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mPlayListener:Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;

    invoke-interface {v0}, Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;->onStop()V

    .line 146
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method
