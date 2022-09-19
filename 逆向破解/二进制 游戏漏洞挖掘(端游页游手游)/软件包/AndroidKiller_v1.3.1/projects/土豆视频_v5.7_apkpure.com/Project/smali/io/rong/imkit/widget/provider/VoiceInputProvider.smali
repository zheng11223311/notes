.class public Lio/rong/imkit/widget/provider/VoiceInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
.source "VoiceInputProvider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/VoiceInputProvider$VoiceException;
    }
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x2

.field private static final MSG_COMPLETE:I = 0x5

.field private static final MSG_NORMAL:I = 0x0

.field private static final MSG_READY:I = 0x4

.field private static final MSG_REC:I = 0x6

.field private static final MSG_SAMPLING:I = 0x3

.field private static final MSG_SEC:I = 0x1

.field private static final MSG_SHORT:I = 0x7


# instance fields
.field lastTouchY:F

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentRecUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMessage:Landroid/widget/TextView;

.field mOffsetLimit:F

.field mPopWindow:Landroid/widget/PopupWindow;

.field private mStatus:I

.field private mText:Landroid/widget/TextView;

.field mVoiceBtn:Landroid/widget/Button;

.field mVoiceLength:J


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 1
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    .line 85
    return-void
.end method

.method private startRec()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imkit/widget/provider/VoiceInputProvider$VoiceException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 264
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v3

    sget v4, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_INPUTING:I

    invoke-static {v4}, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->obtain(I)Lio/rong/imkit/model/Event$VoiceInputOperationEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 265
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 267
    :try_start_0
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 269
    :try_start_1
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$integer;->rc_audio_encoding_bit_rate:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 270
    .local v0, "bps":I
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 271
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 275
    .end local v0    # "bps":I
    :goto_0
    :try_start_2
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 276
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 277
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 278
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 279
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "temp.voice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentRecUri:Landroid/net/Uri;

    .line 280
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentRecUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 282
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 297
    :goto_1
    const/4 v3, 0x4

    iput v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    .line 298
    return-void

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 283
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 284
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 286
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 288
    :cond_0
    iput-object v8, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 289
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 290
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 291
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 292
    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 293
    iput-object v8, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 294
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private stopRec(Z)V
    .locals 13
    .param p1, "save"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imkit/widget/provider/VoiceInputProvider$VoiceException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 301
    const/4 v3, 0x0

    .line 302
    .local v3, "isError":Z
    iget-object v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v6, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v6

    sget v7, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_INPUT_COMPLETE:I

    invoke-static {v7}, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->obtain(I)Lio/rong/imkit/model/Event$VoiceInputOperationEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 308
    :try_start_0
    iget-object v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->stop()V

    .line 309
    iget-object v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->release()V

    .line 310
    const/4 v6, 0x0

    iput-object v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    if-nez p1, :cond_4

    .line 316
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentRecUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 318
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 319
    :cond_2
    iput-object v8, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentRecUri:Landroid/net/Uri;

    .line 375
    :cond_3
    :goto_2
    iput v12, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    goto :goto_0

    .line 311
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mVoiceLength:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x190

    add-long/2addr v6, v8

    long-to-int v4, v6

    .line 322
    .local v4, "length":I
    const/16 v6, 0x190

    if-eq v4, v6, :cond_0

    .line 326
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentRecUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    .line 333
    .local v5, "player":Landroid/media/MediaPlayer;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 334
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 335
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 350
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 351
    const/4 v5, 0x0

    .line 353
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v3, :cond_5

    .line 354
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_voice_failure:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 336
    :catch_1
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x1

    .line 338
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 350
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 351
    const/4 v5, 0x0

    .line 352
    goto :goto_3

    .line 339
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v3, 0x1

    .line 341
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 350
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 351
    const/4 v5, 0x0

    .line 352
    goto :goto_3

    .line 342
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v3, 0x1

    .line 344
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 350
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 351
    const/4 v5, 0x0

    .line 352
    goto :goto_3

    .line 345
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    .line 347
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 350
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 351
    const/4 v5, 0x0

    .line 352
    goto :goto_3

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 350
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 351
    const/4 v5, 0x0

    throw v6

    .line 358
    :cond_5
    iget-object v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentRecUri:Landroid/net/Uri;

    if-eqz v6, :cond_3

    .line 359
    iget-object v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentRecUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mVoiceLength:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v6, v7}, Lio/rong/message/VoiceMessage;->obtain(Landroid/net/Uri;I)Lio/rong/message/VoiceMessage;

    move-result-object v6

    new-instance v7, Lio/rong/imkit/widget/provider/VoiceInputProvider$1;

    invoke-direct {v7, p0}, Lio/rong/imkit/widget/provider/VoiceInputProvider$1;-><init>(Lio/rong/imkit/widget/provider/VoiceInputProvider;)V

    invoke-virtual {p0, v6, v7}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->publish(Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCurrentVoiceDb()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    div-int/lit16 v0, v0, 0x258

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x96

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 133
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return v8

    .line 135
    :pswitch_0
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    if-nez v4, :cond_1

    .line 136
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lio/rong/imkit/R$layout;->rc_wi_vo_popup:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 138
    .local v3, "view":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    .line 139
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mText:Landroid/widget/TextView;

    .line 140
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMessage:Landroid/widget/TextView;

    .line 141
    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    .line 143
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 144
    .local v2, "parent":Landroid/view/View;
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    const/16 v5, 0x11

    invoke-virtual {v4, v2, v5, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 145
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 146
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 147
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 149
    .end local v2    # "parent":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->startRec()V

    .line 150
    const/4 v4, 0x4

    iput v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mVoiceLength:J

    .line 152
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v7, v6, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0xc350

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 155
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 158
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMessage:Landroid/widget/TextView;

    sget v5, Lio/rong/imkit/R$string;->rc_voice_rec:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_1:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 161
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 164
    :pswitch_1
    iget v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    if-ne v4, v6, :cond_2

    .line 165
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    :cond_2
    const/4 v4, 0x6

    iput v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    .line 168
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMessage:Landroid/widget/TextView;

    sget v5, Lio/rong/imkit/R$string;->rc_voice_rec:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_1:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 171
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 174
    :pswitch_2
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMessage:Landroid/widget/TextView;

    sget v5, Lio/rong/imkit/R$string;->rc_voice_cancel:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_cancel:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMessage:Landroid/widget/TextView;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 177
    iput v6, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    goto/16 :goto_0

    .line 181
    :pswitch_3
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_3

    .line 184
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    iget v6, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7, v6, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 187
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 188
    .local v1, "message":Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v1, Landroid/os/Message;->what:I

    .line 189
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 195
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_4
    iget v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    if-eq v4, v6, :cond_0

    iget v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    .line 198
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->getCurrentVoiceDb()I

    move-result v0

    .line 202
    .local v0, "db":I
    div-int/lit8 v4, v0, 0x5

    packed-switch v4, :pswitch_data_1

    .line 225
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_8:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 204
    :pswitch_5
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_1:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 207
    :pswitch_6
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_2:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 210
    :pswitch_7
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_3:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 213
    :pswitch_8
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_4:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 216
    :pswitch_9
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_5:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 219
    :pswitch_a
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_6:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 222
    :pswitch_b
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_7:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 230
    .end local v0    # "db":I
    :pswitch_c
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 235
    const/4 v4, 0x0

    iput-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mPopWindow:Landroid/widget/PopupWindow;

    .line 237
    :cond_4
    iget v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    if-ne v4, v6, :cond_5

    .line 238
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->stopRec(Z)V

    goto/16 :goto_0

    .line 239
    :cond_5
    iget v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_6

    .line 240
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_volume_wraning:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mMessage:Landroid/widget/TextView;

    sget v5, Lio/rong/imkit/R$string;->rc_voice_short:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 242
    invoke-direct {p0, v8}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->stopRec(Z)V

    goto/16 :goto_0

    .line 244
    :cond_6
    invoke-direct {p0, v7}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->stopRec(Z)V

    goto/16 :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_c
        :pswitch_1
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public obtainSwitchDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_voice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActive(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    return-void
.end method

.method public onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V
    .locals 2
    .param p1, "fragment"    # Lio/rong/imkit/fragment/MessageInputFragment;
    .param p2, "inputView"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {p1}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    const/high16 v0, 0x428c0000    # 70.0f

    invoke-virtual {p1}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mOffsetLimit:F

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "inputView"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 94
    iput-object p1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    sget v1, Lio/rong/imkit/R$layout;->rc_wi_vo_provider:I

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mVoiceBtn:Landroid/widget/Button;

    .line 97
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mVoiceBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    return-object v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onDetached()V

    .line 81
    return-void
.end method

.method public onInactive(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    return-void
.end method

.method public onSwitch(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->onActive(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->lastTouchY:F

    .line 106
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    :cond_0
    :goto_0
    return v4

    .line 107
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 108
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 109
    const/4 v0, 0x7

    iput v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mStatus:I

    .line 111
    :cond_3
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 113
    iget v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->lastTouchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mOffsetLimit:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 114
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 116
    :cond_5
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
