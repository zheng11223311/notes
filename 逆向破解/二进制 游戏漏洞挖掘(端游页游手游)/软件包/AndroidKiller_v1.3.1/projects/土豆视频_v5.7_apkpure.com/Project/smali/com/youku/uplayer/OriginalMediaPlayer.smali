.class public Lcom/youku/uplayer/OriginalMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "OriginalMediaPlayer.java"


# instance fields
.field private mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

.field private mOnADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

.field protected mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

.field private mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

.field private mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

.field private mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

.field private mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

.field private mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

.field private mOnMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

.field private mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

.field protected mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

.field private mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

.field private mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

.field private mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

.field private mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public addPostADUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public changeVideoSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public enableVoice(I)V
    .locals 0
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method

.method public getVoiceStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public setHttpUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 11
    return-void
.end method

.method public setOnADCountListener(Lcom/youku/uplayer/OnADCountListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnADCountListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    .line 116
    return-void
.end method

.method public setOnADPlayListener(Lcom/youku/uplayer/OnADPlayListener;)V
    .locals 0
    .param p1, "mADPlayListener"    # Lcom/youku/uplayer/OnADPlayListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    .line 75
    return-void
.end method

.method public setOnBufferPercentUpdateListener(Lcom/youku/uplayer/OnBufferPercentUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .line 138
    return-void
.end method

.method public setOnConnectDelayListener(Lcom/youku/uplayer/OnConnectDelayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnConnectDelayListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    .line 181
    return-void
.end method

.method public setOnCurrentPositionUpdateListener(Lcom/youku/uplayer/OnCurrentPositionUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .line 94
    return-void
.end method

.method public setOnHttp302DelayListener(Lcom/youku/uplayer/OnHttp302DelayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnHttp302DelayListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    .line 185
    return-void
.end method

.method public setOnHwDecodeErrorListener(Lcom/youku/uplayer/OnHwDecodeErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .line 177
    return-void
.end method

.method public setOnLodingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnLoadingStatusListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 105
    return-void
.end method

.method public setOnMidADPlayListener(Lcom/youku/uplayer/OnMidADPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnMidADPlayListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    .line 84
    return-void
.end method

.method public setOnNetworkSpeedListener(Lcom/youku/uplayer/OnNetworkSpeedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnNetworkSpeedListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    .line 126
    return-void
.end method

.method public setOnNetworkSpeedPerMinute(Lcom/youku/uplayer/OnNetworkSpeedPerMinute;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .line 132
    return-void
.end method

.method public setOnQualityChangeListener(Lcom/youku/uplayer/OnQualityChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnQualityChangeListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    .line 190
    return-void
.end method

.method public setOnRealVideoStartListener(Lcom/youku/uplayer/OnRealVideoStartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnRealVideoStartListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    .line 154
    return-void
.end method

.method public setOnVideoIndexUpdateListener(Lcom/youku/uplayer/OnVideoIndexUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .line 168
    return-void
.end method

.method public setPlayRate(I)V
    .locals 0
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public setTimeout(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sec"    # I

    .prologue
    .line 158
    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method

.method public setmOnTimeoutListener(Lcom/youku/uplayer/OnTimeoutListener;)V
    .locals 0
    .param p1, "mOnTimeoutListener"    # Lcom/youku/uplayer/OnTimeoutListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/youku/uplayer/OriginalMediaPlayer;->mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

    .line 66
    return-void
.end method

.method public skipCurPreAd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method
