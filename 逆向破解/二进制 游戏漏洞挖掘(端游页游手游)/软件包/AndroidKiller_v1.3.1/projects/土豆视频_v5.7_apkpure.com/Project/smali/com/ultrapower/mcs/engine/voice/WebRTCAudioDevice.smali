.class Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;
.super Ljava/lang/Object;
.source "WebRTCAudioDevice.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private _audioManager:Landroid/media/AudioManager;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _hasRequestFocus:Z

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final _tempBufPlay:[B

.field private final _tempBufRec:[B

.field final logTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x3c0

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 22
    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 32
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doPlayInit:Z

    .line 36
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doRecInit:Z

    .line 37
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isRecording:Z

    .line 38
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isPlaying:Z

    .line 40
    iput v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedRecSamples:I

    .line 41
    iput v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedPlaySamples:I

    .line 42
    iput v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playPosition:I

    .line 43
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_hasRequestFocus:Z

    .line 552
    const-string v1, "WEBRTC-AD"

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->logTag:Ljava/lang/String;

    .line 47
    const-string v1, "WebRTCAudioDevice construct..."

    invoke-direct {p0, v1}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 50
    const/16 v1, 0x3c0

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 52
    const/16 v1, 0x3c0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_tempBufPlay:[B

    .line 59
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_tempBufRec:[B

    .line 60
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private DoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 555
    const-string v0, "WEBRTC-AD"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method private DoLogErr(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 559
    const-string v0, "WEBRTC-AD"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method private GetPlayoutVolume()I
    .locals 3

    .prologue
    .line 509
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 514
    :cond_0
    const/4 v0, -0x1

    .line 516
    .local v0, "level":I
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 521
    :cond_1
    return v0
.end method

.method private InitPlayback(I)I
    .locals 12
    .param p1, "sampleRate"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v9, -0x1

    const/4 v0, 0x2

    const/4 v10, 0x0

    .line 128
    invoke-static {p1, v0, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 132
    .local v8, "minPlayBufSize":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitPlayback() min play buf size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 134
    move v5, v8

    .line 135
    .local v5, "playBufSize":I
    const/16 v0, 0x1770

    if-ge v5, v0, :cond_0

    .line 136
    mul-int/lit8 v5, v5, 0x2

    .line 138
    :cond_0
    iput v10, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedPlaySamples:I

    .line 142
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 148
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v11, :cond_2

    move v0, v9

    .line 176
    :goto_0
    return v0

    .line 152
    :catch_0
    move-exception v7

    .line 153
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    move v0, v9

    .line 154
    goto :goto_0

    .line 165
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_4

    move v0, v10

    .line 174
    goto :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private InitRecording(II)I
    .locals 9
    .param p1, "audioSource"    # I
    .param p2, "sampleRate"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x2

    .line 65
    invoke-static {p2, v0, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 69
    .local v7, "minRecBufSize":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitRecording() min rec buf size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 72
    mul-int/lit8 v5, v7, 0x2

    .line 73
    .local v5, "recBufSize":I
    mul-int/lit8 v0, p2, 0x5

    div-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedRecSamples:I

    .line 77
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 83
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v3, 0x2

    const/4 v4, 0x2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    move v0, v8

    .line 100
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    move v0, v8

    .line 89
    goto :goto_0

    .line 100
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    iget v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedRecSamples:I

    goto :goto_0
.end method

.method private PlayAudio(I)I
    .locals 7
    .param p1, "lengthInBytes"    # I

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_hasRequestFocus:Z

    if-nez v4, :cond_0

    .line 351
    :goto_0
    return v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, "bufferedSamples":I
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    :try_start_0
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 300
    const/4 v0, -0x2

    .line 346
    .end local v0    # "bufferedSamples":I
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 305
    .restart local v0    # "bufferedSamples":I
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doPlayInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 307
    const/16 v4, -0x13

    :try_start_2
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :goto_1
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doPlayInit:Z

    .line 315
    :cond_2
    const/4 v3, 0x0

    .line 316
    .local v3, "written":I
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_tempBufPlay:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 317
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_tempBufPlay:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    .line 318
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 323
    iget v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedPlaySamples:I

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedPlaySamples:I

    .line 326
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    .line 327
    .local v2, "pos":I
    iget v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playPosition:I

    if-ge v2, v4, :cond_3

    .line 328
    const/4 v4, 0x0

    iput v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playPosition:I

    .line 330
    :cond_3
    iget v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedPlaySamples:I

    iget v5, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playPosition:I

    sub-int v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedPlaySamples:I

    .line 331
    iput v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playPosition:I

    .line 333
    iget-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isRecording:Z

    if-nez v4, :cond_4

    .line 334
    iget v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedPlaySamples:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    :cond_4
    if-eq v3, p1, :cond_5

    .line 340
    const/4 v0, -0x1

    .line 346
    .end local v0    # "bufferedSamples":I
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 309
    .end local v2    # "pos":I
    .end local v3    # "written":I
    .restart local v0    # "bufferedSamples":I
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set play thread priority failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 346
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .restart local v2    # "pos":I
    .restart local v3    # "written":I
    :cond_5
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method private RecordAudio(I)I
    .locals 6
    .param p1, "lengthInBytes"    # I

    .prologue
    .line 359
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 362
    :try_start_0
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 363
    const/4 v3, -0x2

    .line 403
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 408
    :goto_0
    return v3

    .line 368
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doRecInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 370
    const/16 v3, -0x13

    :try_start_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doRecInit:Z

    .line 378
    :cond_1
    const/4 v2, 0x0

    .line 379
    .local v2, "readBytes":I
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 380
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_tempBufRec:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 382
    iget-boolean v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_hasRequestFocus:Z

    if-nez v3, :cond_2

    .line 383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_tempBufRec:[B

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 385
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_tempBufRec:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v1

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 372
    .end local v1    # "i":I
    .end local v2    # "readBytes":I
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set rec thread priority failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 398
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecordAudio try failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLogErr(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_bufferedPlaySamples:I

    goto :goto_0

    .line 389
    .restart local v2    # "readBytes":I
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_tempBufRec:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    if-eq v2, p1, :cond_3

    .line 394
    const/4 v3, -0x1

    .line 403
    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .end local v2    # "readBytes":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private SetAudioMode(Z)V
    .locals 4
    .param p1, "startCall"    # Z

    .prologue
    .line 525
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 527
    .local v0, "apiLevel":I
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_2

    .line 533
    const-string v2, "Could not set audio mode - no audio manager"

    invoke-direct {p0, v2}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLogErr(Ljava/lang/String;)V

    .line 550
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "Samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    const/16 v2, 0x8

    if-ne v2, v0, :cond_1

    .line 544
    if-eqz p1, :cond_4

    const/4 v1, 0x4

    .line 545
    .local v1, "mode":I
    :goto_1
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 546
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 547
    const-string v2, "Could not set audio mode for Samsung device"

    invoke-direct {p0, v2}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLogErr(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    .end local v1    # "mode":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 7
    .param p1, "loudspeakerOn"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 417
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 422
    :cond_0
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_1

    .line 423
    const-string v3, "Could not change audio routing - no audio manager"

    invoke-direct {p0, v3}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLogErr(Ljava/lang/String;)V

    .line 424
    const/4 v3, -0x1

    .line 482
    :goto_0
    return v3

    .line 427
    :cond_1
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    .local v0, "apiLevel":I
    const/4 v3, 0x3

    if-eq v3, v0, :cond_2

    const/4 v3, 0x4

    if-ne v3, v0, :cond_4

    .line 431
    :cond_2
    if-eqz p1, :cond_3

    .line 433
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMode(I)V

    :goto_1
    move v3, v4

    .line 482
    goto :goto_0

    .line 436
    :cond_3
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    .line 440
    :cond_4
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v5, "Samsung"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v5, "samsung"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    const/4 v3, 0x5

    if-eq v3, v0, :cond_6

    const/4 v3, 0x6

    if-eq v3, v0, :cond_6

    const/4 v3, 0x7

    if-ne v3, v0, :cond_8

    .line 444
    :cond_6
    if-eqz p1, :cond_7

    .line 446
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setMode(I)V

    .line 447
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 450
    :cond_7
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 451
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    .line 454
    :cond_8
    const/4 v1, 0x0

    .line 461
    .local v1, "isStop":Z
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 462
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 464
    .local v2, "max":I
    if-eqz p1, :cond_9

    .line 465
    mul-int/lit8 v3, v2, 0x3c

    div-int/lit8 v2, v3, 0x64

    .line 466
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 469
    :cond_9
    mul-int/lit8 v3, v2, 0x50

    div-int/lit8 v2, v3, 0x64

    .line 470
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1
.end method

.method private SetPlayoutVolume(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 489
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 494
    :cond_0
    const/4 v0, -0x1

    .line 496
    .local v0, "retVal":I
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 499
    const/4 v0, 0x0

    .line 502
    :cond_1
    return v0
.end method

.method private StartPlayback()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 182
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p0, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 189
    .local v1, "result":I
    const-string v3, "WebRTCAudioDevice::StartPlayback() into..."

    invoke-direct {p0, v3}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 191
    iget-boolean v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isRecording:Z

    if-nez v3, :cond_0

    .line 192
    invoke-direct {p0, v4}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->SetAudioMode(Z)V

    .line 197
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isPlaying:Z

    .line 205
    :goto_0
    return v2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 201
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private StartRecording()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    const-string v1, "WebRTCAudioDevice::StartRecording() into..."

    invoke-direct {p0, v1}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 108
    iget-boolean v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isPlaying:Z

    if-nez v1, :cond_0

    .line 109
    invoke-direct {p0, v2}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->SetAudioMode(Z)V

    .line 114
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isRecording:Z

    .line 122
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 118
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private StopPlayback()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 248
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 249
    const-string v2, "WebRTCAudioDevice::StopPlayback() into..."

    invoke-direct {p0, v2}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 257
    :try_start_1
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 269
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doPlayInit:Z

    .line 275
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    iget-boolean v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isRecording:Z

    if-nez v2, :cond_1

    .line 279
    invoke-direct {p0, v1}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->SetAudioMode(Z)V

    .line 282
    :cond_1
    iput-boolean v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isPlaying:Z

    .line 283
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    const/4 v1, -0x1

    .line 274
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doPlayInit:Z

    .line 275
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doPlayInit:Z

    .line 275
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private StopRecording()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 211
    const-string v2, "WebRTCAudioDevice::StopRecording() into..."

    invoke-direct {p0, v2}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 219
    :try_start_1
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doRecInit:Z

    .line 234
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    iget-boolean v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isPlaying:Z

    if-nez v2, :cond_1

    .line 238
    invoke-direct {p0, v1}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->SetAudioMode(Z)V

    .line 241
    :cond_1
    iput-boolean v1, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_isRecording:Z

    .line 242
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->DoLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    const/4 v1, -0x1

    .line 233
    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doRecInit:Z

    .line 234
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    iput-boolean v4, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_doRecInit:Z

    .line 234
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x1

    .line 564
    if-ne p1, v0, :cond_0

    .line 565
    iput-boolean v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_hasRequestFocus:Z

    .line 566
    const-string v0, "audioDevice"

    const-string v1, "audio get focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_0
    return-void

    .line 569
    :cond_0
    const-string v0, "audioDevice"

    const-string v1, "audio lost focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ultrapower/mcs/engine/voice/WebRTCAudioDevice;->_hasRequestFocus:Z

    goto :goto_0
.end method
