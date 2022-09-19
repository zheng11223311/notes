.class public abstract Lio/rong/voipkit/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final RINGSTYLE_CALL:I = 0x58

.field public static final RINGSTYLE_CALLED:I = 0xbc


# instance fields
.field protected appId:Ljava/lang/String;

.field protected calling_state:Landroid/widget/TextView;

.field protected initAudioMode:I

.field private isSupportCPU:Z

.field protected isVoIPSuccess:Z

.field protected localPort:I

.field protected mAudioManager:Landroid/media/AudioManager;

.field mLastEventValue:F

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTicker:Ljava/lang/Runnable;

.field protected mySelfId:Ljava/lang/String;

.field protected peerUserPhoteUri:Ljava/lang/String;

.field protected peerid:Ljava/lang/String;

.field protected remoteIp:Ljava/lang/String;

.field protected remotePort:I

.field protected session:Lcom/ultrapower/mcs/engine/UMCS;

.field protected sessionId:Ljava/lang/String;

.field private setPhotoHandler:Landroid/os/Handler;

.field startTime:J

.field private stepTimeHandler:Landroid/os/Handler;

.field protected uUMCSInternal:Lcom/ultrapower/mcs/engine/internal/UMCSInternal;

.field protected user_photo:Lio/rong/imkit/widget/AsyncImageView;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    .line 62
    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->remoteIp:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lio/rong/voipkit/activity/BaseActivity;->isVoIPSuccess:Z

    .line 82
    iput-boolean v1, p0, Lio/rong/voipkit/activity/BaseActivity;->isSupportCPU:Z

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mLastEventValue:F

    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/rong/voipkit/activity/BaseActivity;->startTime:J

    .line 550
    new-instance v0, Lio/rong/voipkit/activity/BaseActivity$8;

    invoke-direct {v0, p0}, Lio/rong/voipkit/activity/BaseActivity$8;-><init>(Lio/rong/voipkit/activity/BaseActivity;)V

    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->setPhotoHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lio/rong/voipkit/activity/BaseActivity;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/BaseActivity;
    .param p1, "x1"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lio/rong/voipkit/activity/BaseActivity;->showTimeCount(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/voipkit/activity/BaseActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/BaseActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/voipkit/activity/BaseActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/BaseActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->stepTimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initAudioManager()V
    .locals 3

    .prologue
    .line 107
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 109
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "avtest"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 112
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 114
    const-string/jumbo v1, "sensor"

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 115
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mSensor:Landroid/hardware/Sensor;

    .line 117
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/ultrapower/mcs/engine/UMCS;

    invoke-direct {v1, p0}, Lcom/ultrapower/mcs/engine/UMCS;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    .line 121
    :cond_0
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->uUMCSInternal:Lcom/ultrapower/mcs/engine/internal/UMCSInternal;

    if-nez v1, :cond_1

    .line 122
    new-instance v1, Lcom/ultrapower/mcs/engine/internal/UMCSInternal;

    invoke-direct {v1}, Lcom/ultrapower/mcs/engine/internal/UMCSInternal;-><init>()V

    iput-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->uUMCSInternal:Lcom/ultrapower/mcs/engine/internal/UMCSInternal;

    .line 124
    :cond_1
    return-void
.end method

.method private recoverAudiaMode()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lio/rong/voipkit/activity/BaseActivity;->initAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 508
    return-void
.end method

.method private showTimeCount(J)Ljava/lang/String;
    .locals 15
    .param p1, "time"    # J

    .prologue
    .line 411
    const-wide/32 v10, 0x15752a00

    cmp-long v10, p1, v10

    if-ltz v10, :cond_0

    .line 412
    const-string v7, "00:00:00"

    .line 427
    :goto_0
    return-object v7

    .line 414
    :cond_0
    const-string v7, ""

    .line 415
    .local v7, "timeCount":Ljava/lang/String;
    const-wide/32 v10, 0x36ee80

    div-long v2, p1, v10

    .line 416
    .local v2, "hourc":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "hour":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 419
    const-wide/32 v10, 0x36ee80

    mul-long/2addr v10, v2

    sub-long v10, p1, v10

    const-wide/32 v12, 0xea60

    div-long v4, v10, v12

    .line 420
    .local v4, "minuec":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "minue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 423
    const-wide/32 v10, 0x36ee80

    mul-long/2addr v10, v2

    sub-long v10, p1, v10

    const-wide/32 v12, 0xea60

    mul-long/2addr v12, v4

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v8, v10, v12

    .line 424
    .local v8, "secc":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, "sec":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 426
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 427
    goto/16 :goto_0
.end method


# virtual methods
.method protected StartChat()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 248
    const/4 v7, 0x0

    .line 249
    .local v7, "ret":I
    invoke-static {p0}, Lio/rong/voiplib/utils/VoIPUtil;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "localIp":Ljava/lang/String;
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    iget v2, p0, Lio/rong/voipkit/activity/BaseActivity;->localPort:I

    iget-object v3, p0, Lio/rong/voipkit/activity/BaseActivity;->remoteIp:Ljava/lang/String;

    iget v4, p0, Lio/rong/voipkit/activity/BaseActivity;->remotePort:I

    const/4 v5, 0x0

    new-instance v6, Lio/rong/voipkit/activity/BaseActivity$1;

    invoke-direct {v6, p0}, Lio/rong/voipkit/activity/BaseActivity$1;-><init>(Lio/rong/voipkit/activity/BaseActivity;)V

    invoke-virtual/range {v0 .. v6}, Lcom/ultrapower/mcs/engine/UMCS;->StartTransport(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;Lcom/ultrapower/mcs/engine/ITransportListener;)I

    move-result v7

    .line 256
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    invoke-virtual {v0, v9}, Lcom/ultrapower/mcs/engine/UMCS;->StartSendLocalAudio(I)I

    move-result v7

    .line 257
    if-ne v8, v7, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    invoke-virtual {v0, v9}, Lcom/ultrapower/mcs/engine/UMCS;->StartRecvRemoteAudio(I)I

    move-result v7

    .line 262
    if-ne v8, v7, :cond_0

    goto :goto_0
.end method

.method protected createLocaleAudio()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 209
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->uUMCSInternal:Lcom/ultrapower/mcs/engine/internal/UMCSInternal;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Lcom/ultrapower/mcs/engine/internal/UMCSInternal;->SetECEnable(II)I

    move-result v0

    .line 212
    .local v0, "ret":I
    if-ne v3, v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->uUMCSInternal:Lcom/ultrapower/mcs/engine/internal/UMCSInternal;

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2}, Lcom/ultrapower/mcs/engine/internal/UMCSInternal;->SetNSEnable(II)I

    move-result v0

    .line 217
    if-eq v3, v0, :cond_0

    .line 222
    if-eq v3, v0, :cond_0

    .line 225
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->uUMCSInternal:Lcom/ultrapower/mcs/engine/internal/UMCSInternal;

    invoke-virtual {v1, v4}, Lcom/ultrapower/mcs/engine/internal/UMCSInternal;->SetHighPassFilterEnable(I)I

    move-result v0

    .line 227
    if-eq v3, v0, :cond_0

    .line 231
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    invoke-virtual {v1, v4}, Lcom/ultrapower/mcs/engine/UMCS;->CreateLocalAudio(I)I

    move-result v0

    .line 233
    if-ne v3, v0, :cond_0

    goto :goto_0
.end method

.method protected createRemoteAudio()V
    .locals 3

    .prologue
    .line 240
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ultrapower/mcs/engine/UMCS;->CreateRemoteAudio(I)I

    move-result v0

    .line 241
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 244
    :cond_0
    return-void
.end method

.method protected createVoIP()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/BaseActivity;->setVolumeControlStream(I)V

    .line 196
    invoke-virtual {p0}, Lio/rong/voipkit/activity/BaseActivity;->initCall()V

    .line 197
    invoke-virtual {p0}, Lio/rong/voipkit/activity/BaseActivity;->createLocaleAudio()V

    .line 198
    invoke-virtual {p0}, Lio/rong/voipkit/activity/BaseActivity;->createRemoteAudio()V

    .line 199
    invoke-virtual {p0}, Lio/rong/voipkit/activity/BaseActivity;->StartChat()V

    .line 200
    return-void
.end method

.method protected enableHandOffAndSoundOff(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "sound_off"    # Landroid/widget/ImageView;
    .param p2, "hands_off"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x2

    .line 516
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 518
    new-instance v0, Lio/rong/voipkit/activity/BaseActivity$6;

    invoke-direct {v0, p0, p1}, Lio/rong/voipkit/activity/BaseActivity$6;-><init>(Lio/rong/voipkit/activity/BaseActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 534
    new-instance v0, Lio/rong/voipkit/activity/BaseActivity$7;

    invoke-direct {v0, p0, p2}, Lio/rong/voipkit/activity/BaseActivity$7;-><init>(Lio/rong/voipkit/activity/BaseActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    return-void
.end method

.method protected initCall()V
    .locals 3

    .prologue
    .line 183
    new-instance v1, Lcom/ultrapower/mcs/engine/UmcsConfig;

    invoke-direct {v1}, Lcom/ultrapower/mcs/engine/UmcsConfig;-><init>()V

    .line 184
    .local v1, "uConfig":Lcom/ultrapower/mcs/engine/UmcsConfig;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ultrapower/mcs/engine/UmcsConfig;->setMultiMode(Z)V

    .line 185
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ultrapower/mcs/engine/UmcsConfig;->setTraceFilter(I)V

    .line 186
    sget-object v2, Lcom/ultrapower/mcs/engine/TransportType;->kUdpGernal:Lcom/ultrapower/mcs/engine/TransportType;

    invoke-virtual {v1, v2}, Lcom/ultrapower/mcs/engine/UmcsConfig;->setTransportType(Lcom/ultrapower/mcs/engine/TransportType;)V

    .line 187
    iget-object v2, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    invoke-virtual {v2, v1}, Lcom/ultrapower/mcs/engine/UMCS;->Init(Lcom/ultrapower/mcs/engine/UmcsConfig;)I

    move-result v0

    .line 189
    .local v0, "ret":I
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 192
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/BaseActivity;->requestWindowFeature(I)Z

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 96
    :try_start_0
    invoke-direct {p0}, Lio/rong/voipkit/activity/BaseActivity;->initAudioManager()V

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/rong/voipkit/activity/BaseActivity;->isSupportCPU:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lio/rong/voipkit/activity/BaseActivity;->initAudioMode:I

    .line 103
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/rong/voipkit/activity/BaseActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 590
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 591
    iget-boolean v0, p0, Lio/rong/voipkit/activity/BaseActivity;->isSupportCPU:Z

    if-nez v0, :cond_0

    .line 592
    sget v0, Lio/rong/imkit/R$string;->rc_voip_cpu_error:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 608
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ultrapower/mcs/engine/UMCS;->StartSendLocalAudio(I)I

    .line 597
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    invoke-virtual {v0, v2}, Lcom/ultrapower/mcs/engine/UMCS;->SetLoudSpeakerEnable(Z)I

    .line 598
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->session:Lcom/ultrapower/mcs/engine/UMCS;

    invoke-virtual {v0}, Lcom/ultrapower/mcs/engine/UMCS;->Terminate()I

    .line 600
    const-string v0, "fff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============onDestroy====================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/rong/voipkit/activity/BaseActivity;->isVoIPSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-boolean v0, p0, Lio/rong/voipkit/activity/BaseActivity;->isVoIPSuccess:Z

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->appId:Ljava/lang/String;

    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lio/rong/voipkit/activity/BaseActivity;->mySelfId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/rong/voiplib/RongIMVoIP;->endVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_1
    invoke-virtual {p0}, Lio/rong/voipkit/activity/BaseActivity;->releaseRingtong()V

    .line 606
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public onEventBackgroundThread(Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;)V
    .locals 5
    .param p1, "receiveMessageEvent"    # Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;

    .prologue
    .line 326
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 328
    .local v0, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v2, v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    .line 334
    .local v1, "messageContent":Lio/rong/imlib/model/MessageContent;
    const-string/jumbo v2, "voip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==========voip=====\u63a5\u6536\u5230\u4e00\u4e2acom.ccrc.avtest.action.reciveMsg\u7684\u5e7f\u64ad===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    instance-of v2, v1, Lio/rong/voipkit/message/VoIPAcceptMessage;

    if-eqz v2, :cond_2

    .line 338
    new-instance v2, Lio/rong/voipkit/activity/BaseActivity$3;

    invoke-direct {v2, p0}, Lio/rong/voipkit/activity/BaseActivity$3;-><init>(Lio/rong/voipkit/activity/BaseActivity;)V

    invoke-virtual {p0, v2}, Lio/rong/voipkit/activity/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 345
    :cond_2
    instance-of v2, v1, Lio/rong/voipkit/message/VoIPFinishMessage;

    if-eqz v2, :cond_0

    .line 346
    new-instance v2, Lio/rong/voipkit/activity/BaseActivity$4;

    invoke-direct {v2, p0, v1, v0}, Lio/rong/voipkit/activity/BaseActivity$4;-><init>(Lio/rong/voipkit/activity/BaseActivity;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/model/Message;)V

    invoke-virtual {p0, v2}, Lio/rong/voipkit/activity/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onEventBackgroundThread(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 2
    .param p1, "connectionStatus"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .prologue
    .line 314
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne p1, v1, :cond_0

    .line 316
    new-instance v0, Lio/rong/voipkit/message/VoIPFinishMessage;

    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->peerid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;->setFinish_state(I)V

    .line 318
    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/BaseActivity;->sendMsg(Lio/rong/imlib/model/MessageContent;)V

    .line 320
    invoke-virtual {p0}, Lio/rong/voipkit/activity/BaseActivity;->finish()V

    .line 322
    .end local v0    # "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 131
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v3

    .line 157
    .local v0, "value":F
    iget v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mLastEventValue:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 158
    iput v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mLastEventValue:F

    .line 161
    :cond_0
    iget v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mLastEventValue:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 162
    iput v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mLastEventValue:F

    .line 165
    :cond_1
    iget v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mLastEventValue:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 166
    const-string/jumbo v1, "\u6b63\u5e38\u6a21\u5f0f"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 167
    const-string v1, "afff"

    const-string v2, "===================\u6b63\u5e38\u6a21\u5f0f============================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/BaseActivity;->showMaskLayout(Z)V

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_2
    const-string/jumbo v1, "\u542c\u7b52\u6a21\u5f0f"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 171
    const-string v1, "afff"

    const-string v2, "====================\u542c\u7b52\u6a21\u5f0f==========================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/BaseActivity;->showMaskLayout(Z)V

    goto :goto_0
.end method

.method protected playerRingtone(II)V
    .locals 10
    .param p1, "audiaMode"    # I
    .param p2, "ringstyle"    # I

    .prologue
    const/4 v2, 0x4

    .line 469
    const-string v0, "playerNotificationSound"

    const-string v1, "==================playerNotificationSound============"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0, v2}, Lio/rong/voipkit/activity/BaseActivity;->setVolumeControlStream(I)V

    .line 471
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    .line 473
    const/4 v9, 0x0

    .line 474
    .local v9, "ringname":Ljava/lang/String;
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 475
    :try_start_0
    const-string/jumbo v9, "voip_ring_call.mp3"

    .line 479
    :goto_0
    invoke-virtual {p0}, Lio/rong/voipkit/activity/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 480
    .local v8, "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 481
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 484
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 485
    .local v6, "audioManager":Landroid/media/AudioManager;
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 487
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 488
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 489
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 496
    .end local v6    # "audioManager":Landroid/media/AudioManager;
    .end local v8    # "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_1
    return-void

    .line 477
    :cond_1
    const-string/jumbo v9, "voip_ring_called.mp3"
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 491
    :catch_0
    move-exception v7

    .line 492
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 493
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 494
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected releaseRingtong()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 503
    :cond_0
    invoke-direct {p0}, Lio/rong/voipkit/activity/BaseActivity;->recoverAudiaMode()V

    .line 504
    return-void
.end method

.method protected sendMsg(Lio/rong/imlib/model/MessageContent;)V
    .locals 13
    .param p1, "messageContent"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    const/4 v4, 0x0

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "targetId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/MessageTag;

    .line 271
    .local v8, "msgTag":Lio/rong/imlib/MessageTag;
    invoke-interface {v8}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, "objectName":Ljava/lang/String;
    instance-of v0, p1, Lio/rong/voipkit/message/VoIPCallMessage;

    if-eqz v0, :cond_1

    move-object v11, p1

    .line 274
    check-cast v11, Lio/rong/voipkit/message/VoIPCallMessage;

    .line 275
    .local v11, "voIPCallMessage":Lio/rong/voipkit/message/VoIPCallMessage;
    invoke-virtual {v11}, Lio/rong/voipkit/message/VoIPCallMessage;->getToId()Ljava/lang/String;

    move-result-object v2

    .line 284
    .end local v11    # "voIPCallMessage":Lio/rong/voipkit/message/VoIPCallMessage;
    :cond_0
    :goto_0
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    new-instance v6, Lio/rong/voipkit/activity/BaseActivity$2;

    invoke-direct {v6, p0, v9}, Lio/rong/voipkit/activity/BaseActivity$2;-><init>(Lio/rong/voipkit/activity/BaseActivity;Ljava/lang/String;)V

    move-object v3, p1

    move-object v5, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 310
    return-void

    .line 276
    :cond_1
    instance-of v0, p1, Lio/rong/voipkit/message/VoIPAcceptMessage;

    if-eqz v0, :cond_2

    move-object v10, p1

    .line 277
    check-cast v10, Lio/rong/voipkit/message/VoIPAcceptMessage;

    .line 278
    .local v10, "voIPAcceptMessage":Lio/rong/voipkit/message/VoIPAcceptMessage;
    invoke-virtual {v10}, Lio/rong/voipkit/message/VoIPAcceptMessage;->getToId()Ljava/lang/String;

    move-result-object v2

    .line 279
    goto :goto_0

    .end local v10    # "voIPAcceptMessage":Lio/rong/voipkit/message/VoIPAcceptMessage;
    :cond_2
    instance-of v0, p1, Lio/rong/voipkit/message/VoIPFinishMessage;

    if-eqz v0, :cond_0

    move-object v12, p1

    .line 280
    check-cast v12, Lio/rong/voipkit/message/VoIPFinishMessage;

    .line 281
    .local v12, "voIPFinishMessage":Lio/rong/voipkit/message/VoIPFinishMessage;
    invoke-virtual {v12}, Lio/rong/voipkit/message/VoIPFinishMessage;->getToId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract showMaskLayout(Z)V
.end method

.method public startCountTime()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->calling_state:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->stepTimeHandler:Landroid/os/Handler;

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/voipkit/activity/BaseActivity;->startTime:J

    .line 441
    new-instance v0, Lio/rong/voipkit/activity/BaseActivity$5;

    invoke-direct {v0, p0}, Lio/rong/voipkit/activity/BaseActivity$5;-><init>(Lio/rong/voipkit/activity/BaseActivity;)V

    iput-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mTicker:Ljava/lang/Runnable;

    .line 453
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 454
    return-void
.end method

.method public stopCountTime()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->stepTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity;->stepTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    :cond_0
    return-void
.end method
